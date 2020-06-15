class Dog < ApplicationRecord
  str_enum :breed, %i[pug bulldog labrador], validate: false
  str_enum :name, %i[tobias helena]

  validates :breed, presence: true
end
