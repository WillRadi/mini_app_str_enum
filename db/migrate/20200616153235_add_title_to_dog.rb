class AddTitleToDog < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :title, :string
  end
end
