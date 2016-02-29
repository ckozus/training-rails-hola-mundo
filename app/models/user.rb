class User < ActiveRecord::Base

  has_many :posts

  validates :name, length: {minimum: 4, allow_nil: true, allow_blank: true, message: "El nombre tiene que tener más de cuatro letras o bien ser dejado en blanco."}
  validates :last_name, length: {maximum: 60}

  validates :email, uniqueness: true
  validates :email, format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :age, numericality: true

end
