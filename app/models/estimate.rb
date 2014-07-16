class Estimate < ActiveRecord::Base
#  attr_accessible :accuracy, :facebook_gay_friends, :facebook_male_friends, :gay_friends, :male_friends, :right_percentage
   validates   :facebook_gay_friends,:facebook_recruitable_friends, :how_recruited, :accuracy, :accuracy_recruitable, presence: true, on: :update

   validates :right_percentage,  presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "accuracy == 'High' || accuracy == 'Low'", on: :update

   validates :right_percentage_recruitable,  presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "accuracy_recruitable == 'High' || accuracy_recruitable == 'Low'", on: :update

    validates  :facebook_gay_friends,:facebook_recruitable_friends, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
end
