class Dog < ApplicationRecord
  # Múltimplos
  ## Não obrigatório
  str_enum :breed, %i[pug bulldog labrador], validate: false, default: nil
  ## Obrigatório
  str_enum :color, %i[black white], validate: false, default: nil

  # Simples
  ## Não obrigatório
  str_enum :name, %i[tobias helena], validate: false, default: nil
  ## Obrigatório
  str_enum :size, %i[small big], default: nil

  validate :breed_value_must_be_in_array
  validate :color_value_must_be_in_array
  validate :name_value_must_be_in_array

  def breed_value_must_be_in_array
    errors.add(:breed, 'não está no array') if !breed.blank? && !breed.all? { |b| b.in?(Dog.breeds) }
  end

  def name_value_must_be_in_array
    errors.add(:name, 'não está no array') if !name.nil? && !name&.empty? && !name.in?(Dog.names)
  end

  def color_value_must_be_in_array
    errors.add(:color, 'não está no array') if color.blank? || !color.all? { |c| c.in?(Dog.colors) }
  end
end
