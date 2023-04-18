class CreateMembersProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :member_projects do |t|
      t.references :member, index: true, null: false, foreign_key: true
      t.references :project, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
