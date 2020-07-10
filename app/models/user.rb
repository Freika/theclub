# frozen_string_literal: true

class User < ApplicationRecord
  audited

  devise :database_authenticatable, :registerable, :lockable, :trackable, :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[telegram]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.password = Devise.friendly_token[0, 20]
      user.username = auth.info.nickname
      user.avatar   = auth.info.image
    end
  end
end
