class AddColorAndSizeToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :color, :string, array: true, default: []
    add_column :dogs, :size, :string
  end
end
