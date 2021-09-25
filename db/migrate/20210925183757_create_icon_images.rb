class CreateIconImages < ActiveRecord::Migration[6.0]
  def change
    create_table :icon_images do |t|
      t.string :icon_image_id
      t.bigint :profile_id      

      t.timestamps
    end
  end
end
