class Material < ApplicationRecord
  has_many :parchase_material_relations
  has_many :purchase, through: :parchase_material_relations
end
