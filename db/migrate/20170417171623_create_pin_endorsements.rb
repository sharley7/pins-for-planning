class CreatePinEndorsements < ActiveRecord::Migration[5.0]
  def change
    create_table :pin_endorsements do |t|
      t.integer :user_id
      t.integer :pin_id

      t.timestamps
    end
  end
end
