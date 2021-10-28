class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Photo
      t.string :Bio
      t.integer :PostsCounter

      t.timestamps
    end
  end
end
