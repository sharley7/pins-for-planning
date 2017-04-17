class CreatePinTags < ActiveRecord::Migration[5.0]
  def change
    create_table :pin_tags do |t|
      t.integer :tag_id
      t.integer :pin_id

      t.timestamps
    end
  end
end
