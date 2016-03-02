class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  validates :name, length: {minimum: 4, allow_nil: true, allow_blank: true, message: "El nombre tiene que tener más de cuatro letras o bien ser dejado en blanco."}
  validates :last_name, length: {maximum: 60}

  validates :email, format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

end
