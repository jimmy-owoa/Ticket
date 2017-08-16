class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :tickets

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  enum permission_level: [:user, :moderator, :admin]

end
