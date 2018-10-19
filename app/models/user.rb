# Schema Info
#   Table Name: users
#
# string    "email",                default: "",  null: false
# string    "username"
# string    "encrypted_password",   default: "",  null: false
# string    "reset_password_token"
# datetime  "reset_password_sent_at"
# datetime  "remember_created_at"
# datetime  "created_at",                         null: false
# datetime  "updated_at",                         null: false
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
