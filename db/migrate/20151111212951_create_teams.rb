class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.references :hot_issue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
