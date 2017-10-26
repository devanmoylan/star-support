class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Relationships:
  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  has_many :conversations, foreign_key: :recipient_id

  # Callbacks:
  after_create :create_conversation_with_yoda, unless: Proc.new { |user| user.admin? }

  def create_conversation_with_yoda
    @yoda = User.find_yoda
    conversation = Conversation.create(recipient_id: self.id, sender_id:  @yoda.id)
    Message.create(body: @yoda.quote, user_id: @yoda.id, conversation_id: conversation.id)
  end

  def self.find_yoda
    find_by(name: "Yoda")
  end

  def self.select_droids
    where("admin = (?) AND name != (?)", true, "Yoda")
  end

  def is_droid?
    self.admin? && name != "Yoda"
  end

  def random_droid_response
    quote = self.quote
    return quote if name == 'C-3PO'
    quote.slice(rand(quote.size), rand(quote.size) +1).strip
  end

end
