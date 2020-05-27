class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :pets, dependent: :destroy
end
