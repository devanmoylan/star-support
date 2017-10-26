class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  after_create :create_droid_response, if: Proc.new { |message| message.conversation_recipient.is_droid? }

  def create_droid_response
    Message.skip_callback(:create, :after, :create_droid_response)
    Message.create(body: gather_droid_response, user_id: droid_responder_id, conversation_id: conversation.id)
    Message.set_callback(:create, :after, :create_droid_response)
  end

  def gather_droid_response
    conversation_recipient.random_droid_response
  end

  def conversation_recipient
    conversation.recipient
  end

  def droid_responder_id
    conversation_recipient.id
  end
end
