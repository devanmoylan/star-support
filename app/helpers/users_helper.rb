module UsersHelper
  def admin_image_helper(name)
    "admin/#{name.downcase}.png"
  end
end