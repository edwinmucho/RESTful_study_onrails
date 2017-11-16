class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :img_url
      t.string :story

      t.timestamps null: false
    end
  end
end
