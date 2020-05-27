class Pet < ApplicationRecord
  belongs_to :user

  enum specie: %i[perro gato pájaro]
end
