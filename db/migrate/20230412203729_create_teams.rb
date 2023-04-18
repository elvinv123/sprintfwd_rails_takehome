class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name, index: true, null: false, unique: true

      t.timestamps
    end
  end
end
