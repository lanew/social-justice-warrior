class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.references :team, index: true, foreign_key: true
      t.references :activist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
