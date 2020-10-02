class RemoveColumns < ActiveRecord::Migration[6.0]
  def change
  	remove_column :projects, :desktop
  	remove_column :projects, :tablet
  	remove_column :projects, :mobile
  end
end
