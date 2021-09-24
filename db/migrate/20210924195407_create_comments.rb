class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :post_id, null: false
      t.integer :user_id, null: false
      t.integer :image_id
      t.boolean :best_flag, default: false
      t.boolean :delete_flag, default: false
      
      t.timestamps
    end
  end
end
