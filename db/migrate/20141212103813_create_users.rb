class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :provider
      t.string :uid
      t.string :url
      t.string :role

      t.timestamps
    end
  end
end
