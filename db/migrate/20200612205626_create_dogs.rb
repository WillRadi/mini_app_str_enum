class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :breed, array: true, default: []

      t.timestamps
    end
  end
end
