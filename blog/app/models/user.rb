class User < ApplicationRecord
    validates :email,:name,uniqueness:true,presence:true
  
    before_save :format_email_username


def self.find_user_by(value)
    where(["name = :value OR email = :value", {value: value}]).first
  end
end
