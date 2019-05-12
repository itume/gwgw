# == Schema Information
#
# Table name: food_business_permits
#
#  id               :bigint           not null, primary key
#  office_id        :bigint
#  representator_id :bigint
#  business_type_id :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FoodBusinessPermit < ApplicationRecord
  require 'csv'
  belongs_to :office
  belongs_to :representator
  belongs_to :business_type

  class << self
    def insert_seed_data
      file = File.join(Rails.root, "seed_data.csv")
      CSV.foreach(file, headers: true) do |row|
        next if row[1].blank?
        office = Office.find_or_create_by(name: row[1], address1: row[2], address2: row[3])
        type = BusinessType.find_or_create_by(name: row[6])
        if row[4].present?
          rep = Representator.find_or_create_by(name: row[4], address: row[5], tel: row[8])
          FoodBusinessPermit.create!(office_id: office.id, business_type_id: type.id, representator_id: rep.id)
        end
      end
    end
  end
end
