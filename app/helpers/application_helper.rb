module ApplicationHelper

  def full_name(user)
    "#{user.last_name}, #{user.name}"
  end

end
