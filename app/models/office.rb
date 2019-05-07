# == Schema Information
#
# Table name: offices
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  address1   :string(255)      not null
#  address2   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Office < ApplicationRecord
end
