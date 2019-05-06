class CreateFoodBusinessPermits < ActiveRecord::Migration[5.2]
  def change
    create_table :food_business_permits do |t|
      t.references :office, foreign_key: true
      t.references :representator, foreign_key: true
      t.references :business_type, foreign_key: true

      t.timestamps
    end
  end
end
