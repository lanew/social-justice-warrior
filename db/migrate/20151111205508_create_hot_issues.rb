class CreateHotIssues < ActiveRecord::Migration
  def change
    create_table :hot_issues do |t|
      t.string :category, null: false
      t.string :title, null: false
      t.string :source_url, null: false

      t.timestamps null: false
    end
  end
end
