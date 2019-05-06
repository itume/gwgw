class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.string :name, null: false
      t.string :address1, null: false
      t.string :address2

      t.timestamps
    end
  end
end
