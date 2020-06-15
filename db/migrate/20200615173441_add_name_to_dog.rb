class AddNameToDog < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :name, :string
  end
end
