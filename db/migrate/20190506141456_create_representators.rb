class CreateRepresentators < ActiveRecord::Migration[5.2]
  def change
    create_table :representators do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :tel

      t.timestamps
    end
  end
end
