class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has :many_admin
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :encrypted_password, presence: true
         validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Valid emails only!' }
       
end
