class AddColumns < ActiveRecord::Migration[6.0]
  def change
  	add_column :projects, :image, :string
  end
end
