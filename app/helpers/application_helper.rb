module ApplicationHelper
  def pet_species
    Pet.species.keys.map do |specie|
      [specie, specie]
    end
  end
end
