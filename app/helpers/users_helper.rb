module UsersHelper

  def gravatar(email)
    hash = Digest::MD5.hexdigest(email)
    image_tag "http://www.gravatar.com/avatar/" + hash
  end

end
