class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, index: true, null: false, unique: true

      t.timestamps
    end
  end
end
