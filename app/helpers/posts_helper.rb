module PostsHelper

  def full_name(user)
    "#{user.last_name}, #{user.name}"
  end

  def user_options(users)
    users.map {|user| [full_name(user), user.id] }
  end

end
