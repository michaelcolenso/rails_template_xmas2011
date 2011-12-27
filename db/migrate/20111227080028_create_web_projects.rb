class CreateWebProjects < ActiveRecord::Migration
  def change
    create_table :web_projects do |t|
      t.string :name
      t.string :client

      t.timestamps
    end
  end
end
