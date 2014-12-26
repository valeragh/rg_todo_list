class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status
      t.integer :rang
      t.datetime :deadline
      t.integer :project_id

      t.timestamps
    end
  end
end
