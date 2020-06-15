class Dog < ApplicationRecord
  str_enum :breed, %i[pug bulldog labrador], validate: false, default: nil
  str_enum :name, %i[tobias helena], allow_nil: true, default: nil
end
