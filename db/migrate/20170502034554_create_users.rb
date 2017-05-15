class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :email
#<<<<<<< HEAD:db/migrate/20170502034554_create_users.rb
      t.integer :phone
#=======
#      t.integer :telephone
#>>>>>>> c9d9d169f5c643971881ec6f7793ff2d760a094e:db/migrate/20170430204925_create_users.rb
      t.string :password

      t.timestamps null: false
 #   end
  end
end
