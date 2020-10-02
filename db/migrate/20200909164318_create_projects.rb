class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
    	t.string :title
    	t.text :description
    	t.string :desktop
    	t.string :tablet
    	t.string :mobile
    	t.string :thumbnail
    end
  end
end
