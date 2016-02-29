module PostsHelper

  def user_options(users)
    users.map {|user| [full_name(user), user.id] }
  end

end
