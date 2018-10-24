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
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # === Validations do ===

  validates_presence_of :email, :username, :encrypted_password

  # === end ===

  # === Associations do ===

  # === end ===

  def is_admin?
    has_role?(:admin)
  end

  def is_client?
    has_role?(:client)
  end

end
