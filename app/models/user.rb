# frozen_string_literal: true

class User < ApplicationRecord
  audited

  devise :database_authenticatable, :registerable, :lockable, :trackable, :recoverable, :rememberable, :validatable
end
