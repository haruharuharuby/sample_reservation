class Purchase < ApplicationRecord
  has_many :parchase_material_relations
  has_many :material, through: :parchase_material_relations
end
