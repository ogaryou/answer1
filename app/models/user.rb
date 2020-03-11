# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  provider               :string(255)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  uid                    :string(255)
#  username               :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]
         def self.from_omniauth(auth)
          where(provider: auth["provider"], uid: auth["uid"]).first_or_create do |user|
            user.provider = auth["provider"]
            user.uid = auth["uid"]
            user.username = auth["info"]["nickname"]
      #      user.email = Devise.friendly_token[0,20]
            user.email =  "#{auth.provider}-#{auth.uid}@example.com"
            user.password = Devise.friendly_token[0,20] #これが必要?
          end
        end
      
        def remember_me
          # http://stackoverflow.com/questions/14417201/how-to-automatically-keep-user-remembered-in-devise
          true
        end
      
        def self.new_with_session(params, session)
          if session["devise.user_attributes"]
            new(session["devise.user_attributes"], without_protection: true) do |user|
              user.attributes = params
              user.valid?
            end
          else
            super
          end
        end
      
        def password_required?
          super && provider.blank?
        end
      
        def email_required?
          super && provider.blank?
        end
end
