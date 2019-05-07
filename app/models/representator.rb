# == Schema Information
#
# Table name: representators
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  address    :string(255)      not null
#  tel        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Representator < ApplicationRecord
end
