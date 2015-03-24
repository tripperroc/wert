# -*- coding: utf-8 -*-
class Response < ActiveRecord::Base

  #belongs_to :facebook_user
  has_one :estimate
  has_one :facebook_response

  validates :birth_sex, presence: true, on: :update
  validates :bigFive_introverted, presence: true, on: :update
  validates :bigFive_trust, presence: true, on: :update
  validates :bigFive_lazy, presence: true, on: :update
  validates :bigFive_cope, presence: true, on: :update
  validates :bigFive_art, presence: true, on: :update
  validates :bigFive_extraverted, presence: true, on: :update
  validates :bigFive_flaws, presence: true, on: :update
  validates :bigFive_tasks, presence: true, on: :update
  validates :bigFive_tense, presence: true, on: :update
  validates :bigFive_active, presence: true, on: :update
  validates :martial, presence: true, on: :update
  validates :parents, presence: true, on: :update
  validates :parents_touch, presence: true, on: :update
  validates :parents_partner, presence: true, on: :update
  validates :parents_partner_touch, presence: true, on: :update
  validates :religious, presence: true, on: :update
  validates :classes, presence: true, on: :update
  validates :employed, presence: true, on: :update
  validates :volunteer, presence: true, on: :update
  validates :social_group, presence: true, on: :update


  validates :groupa1, presence: true, if: "social_group == 'Yes' || social_group =='예' || social_group =='Evet'", on: :update
  validates :groupb1, presence: true, if: "social_group == 'Yes' || social_group =='예' || social_group =='Evet'", on: :update


  validates :happy, presence: true, on: :update
  validates :life_satisfaction_ideal, presence: true, on: :update
  validates :life_satisfaction_conditions, presence: true, on: :update
  validates :life_satisfaction_satisfied, presence: true, on: :update
  validates :life_satisfaction_things, presence: true, on: :update
  validates :life_satisfaction_change, presence: true, on: :update
  validates :happiness_rating, presence: true, on: :update
  validates :communal1_item1, presence: true, on: :update
  validates :communal1_item2, presence: true, on: :update
  validates :communal1_item3, presence: true, on: :update
  validates :communal1_item4, presence: true, on: :update
  validates :communal1_item5, presence: true, on: :update
  validates :communal1_item6, presence: true, on: :update
  validates :communal2_item1, presence: true, on: :update
  validates :communal2_item2, presence: true, on: :update
  validates :communal2_item3, presence: true, on: :update
  validates :communal2_item4, presence: true, on: :update
  validates :communal2_item5, presence: true, on: :update
  validates :communal2_item6, presence: true, on: :update
  validates :burden_item1, presence: true, on: :update
  validates :burden_item2, presence: true, on: :update
  validates :burden_item3, presence: true, on: :update
  validates :burden_item4, presence: true, on: :update
  validates :burden_item5, presence: true, on: :update
  validates :burden_item6, presence: true, on: :update
  validates :burden_item7, presence: true, on: :update
  validates :belong_item1, presence: true, on: :update
  validates :belong_item2, presence: true, on: :update
  validates :belong_item3, presence: true, on: :update
  validates :belong_item4, presence: true, on: :update
  validates :belong_item5, presence: true, on: :update
  validates :belong_item6, presence: true, on: :update
  validates :belong_item7, presence: true, on: :update
  validates :belong_item8, presence: true, on: :update
  validates :belong_item9, presence: true, on: :update
  validates :belong_item10, presence: true, on: :update
  validates :belong_item11, presence: true, on: :update
  validates :belong_item12, presence: true, on: :update
  validates :belong_item13, presence: true, on: :update
  #validates :belong_item14, presence: true, on: :update
  validates :rahe_item1, presence: true, on: :update
  validates :rahe_item2, presence: true, on: :update
  validates :rahe_item3, presence: true, on: :update
  validates :rahe_item4, presence: true, on: :update
  validates :rahe_item5, presence: true, on: :update
  validates :rahe_item6, presence: true, on: :update
  validates :rahe_item7, presence: true, on: :update
  validates :rahe_item8, presence: true, on: :update
  validates :rahe_item9, presence: true, on: :update
  validates :rahe_item10, presence: true, on: :update
  validates :rahe_item11, presence: true, on: :update
  validates :rahe_item12, presence: true, on: :update
  validates :rahe_item13, presence: true, on: :update
  validates :rahe_item14, presence: true, on: :update
  validates :rahe_item15, presence: true, on: :update
  validates :rahe_item16, presence: true, on: :update
  validates :rahe_item17, presence: true, on: :update
  validates :rahe_item18, presence: true, on: :update
  validates :rahe_item19, presence: true, on: :update
  validates :rahe_item20, presence: true, on: :update
  validates :rahe_item21, presence: true, on: :update
  validates :rahe_item22, presence: true, on: :update
  validates :rahe_item23, presence: true, on: :update
  validates :rahe_item24, presence: true, on: :update
  validates :rahe_item25, presence: true, on: :update
  validates :rahe_item26, presence: true, on: :update
  validates :rahe_item27, presence: true, on: :update
  validates :rahe_item28, presence: true, on: :update
  validates :rahe_item29, presence: true, on: :update
  validates :rahe_item30, presence: true, on: :update
  validates :rahe_item31, presence: true, on: :update
  validates :rahe_item32, presence: true, on: :update
  validates :rahe_item33, presence: true, on: :update
  validates :rahe_item34, presence: true, on: :update
  validates :rahe_item35, presence: true, on: :update
  validates :rahe_item36, presence: true, on: :update
  validates :rahe_item37, presence: true, on: :update
  validates :rahe_item38, presence: true, on: :update
  validates :rahe_item39, presence: true, on: :update
  validates :rahe_item40, presence: true, on: :update
  validates :rahe_item41, presence: true, on: :update
  validates :rahe_item42, presence: true, on: :update
  validates :rahe_item43, presence: true, on: :update
  validates :rahe_item44, presence: true, on: :update
  validates :rahe_item45, presence: true, on: :update
  validates :rahe_item46, presence: true, on: :update
  validates :rahe_item47, presence: true, on: :update
  validates :rahe_item48, presence: true, on: :update
  validates :rahe_item49, presence: true, on: :update
  validates :rahe_item50, presence: true, on: :update
  validates :rahe_item51, presence: true, on: :update
  validates :rahe_item52, presence: true, on: :update
  validates :rahe_item53, presence: true, on: :update
  validates :rahe_item54, presence: true, on: :update
  validates :rahe_item55, presence: true, on: :update
  validates :cope_b, presence: true, on: :update
  validates :cope_c_item1, presence: true, on: :update
  validates :cope_c_item2, presence: true, on: :update
  validates :cope_c_item3, presence: true, on: :update
  validates :cope_c_item4, presence: true, on: :update
  validates :cope_c_item5, presence: true, on: :update
  validates :cope_c_item6, presence: true, on: :update
  validates :cope_c_item7, presence: true, on: :update
  validates :cope_c_item8, presence: true, on: :update
  validates :cope_c_item9, presence: true, on: :update
  validates :cope_c_item10, presence: true, on: :update
  validates :cope_c_item11, presence: true, on: :update
  validates :cope_c_item12, presence: true, on: :update
  validates :cope_c_item13, presence: true, on: :update
  validates :cope_c_item14, presence: true, on: :update
  validates :cope_c_item15, presence: true, on: :update
  validates :cope_c_item16, presence: true, on: :update
  validates :cope_c_item17, presence: true, on: :update
  validates :cope_c_item18, presence: true, on: :update
  validates :cope_c_item19, presence: true, on: :update
  validates :cope_c_item20, presence: true, on: :update
  validates :cope_c_item21, presence: true, on: :update
  validates :cope_c_item22, presence: true, on: :update
  validates :cope_c_item23, presence: true, on: :update
  validates :cope_c_item24, presence: true, on: :update
  validates :cope_c_item25, presence: true, on: :update
  validates :cope_c_item26, presence: true, on: :update
  validates :cope_c_item27, presence: true, on: :update
  validates :cope_c_item28, presence: true, on: :update
  validates :cope_c_item29, presence: true, on: :update
  validates :cope_c_item30, presence: true, on: :update
  validates :cope_c_item31, presence: true, on: :update
  validates :cope_c_item32, presence: true, on: :update
  validates :cope_c_item33, presence: true, on: :update
  validates :cope_problems, presence: true, on: :update


  validates :father_a, presence: true, on: :update
	validates :father_b, presence: true, if: "father_a == 'Yes' || father_a =='예' || father_a =='Evet'", on: :update
	validates :father_c, presence: true, if: "father_a == 'Yes' || father_a =='예' || father_a =='Evet'", on: :update
	validates :father_d, presence: true, if: "father_a == 'Yes' || father_a =='예' || father_a =='Evet'", on: :update
	validates :father_e, presence: true, if: "father_a == 'Yes' || father_a =='예' || father_a =='Evet'", on: :update
	validates :father_f, presence: true, if: "father_a == 'Yes' || father_a =='예' || father_a =='Evet'", on: :update
	validates :father_g, presence: true, if: "father_a == 'Yes' || father_a =='예' || father_a =='Evet'", on: :update


  validates :mother_a, presence: true, on: :update
	validates :mother_b, presence: true, if: "mother_a == 'Yes' || mother_a =='예' || mother_a =='Evet'", on: :update
	validates :mother_c, presence: true, if: "mother_a == 'Yes' || mother_a =='예' || mother_a =='Evet'", on: :update
	validates :mother_d, presence: true, if: "mother_a == 'Yes' || mother_a =='예' || mother_a =='Evet'", on: :update
	validates :mother_e, presence: true, if: "mother_a == 'Yes' || mother_a =='예' || mother_a =='Evet'", on: :update
	validates :mother_f, presence: true, if: "mother_a == 'Yes' || mother_a =='예' || mother_a =='Evet'", on: :update
	validates :mother_g, presence: true, if: "mother_a == 'Yes' || mother_a =='예' || mother_a =='Evet'", on: :update


  validates :children_a, presence: true, on: :update
	validates :children_b, presence: true, if: "children_a == 'Yes' || children_a =='예' || children_a =='Evet'", on: :update
	validates :children_c, presence: true, if: "children_a == 'Yes' || children_a =='예' || children_a =='Evet'", on: :update
	validates :children_d, presence: true, if: "children_a == 'Yes' || children_a =='예' || children_a =='Evet'", on: :update
	validates :children_e, presence: true, if: "children_a == 'Yes' || children_a =='예' || children_a =='Evet'", on: :update
	validates :children_f, presence: true, if: "children_a == 'Yes' || children_a =='예' || children_a =='Evet'", on: :update
	validates :children_g, presence: true, if: "children_a == 'Yes' || children_a =='예' || children_a =='Evet'", on: :update


  validates :sibling_a, presence: true, on: :update
	validates :sibling_b, presence: true, if: "sibling_a == 'Yes' || sibling_a =='예' || sibling_a =='Evet'", on: :update
	validates :sibling_c, presence: true, if: "sibling_a == 'Yes' || sibling_a =='예' || sibling_a =='Evet'", on: :update
	validates :sibling_d, presence: true, if: "sibling_a == 'Yes' || sibling_a =='예' || sibling_a =='Evet'", on: :update
	validates :sibling_e, presence: true, if: "sibling_a == 'Yes' || sibling_a =='예' || sibling_a =='Evet'", on: :update
	validates :sibling_f, presence: true, if: "sibling_a == 'Yes' || sibling_a =='예' || sibling_a =='Evet'", on: :update
	validates :sibling_g, presence: true, if: "sibling_a == 'Yes' || sibling_a =='예' || sibling_a =='Evet'", on: :update


  validates :cousins_a, presence: true, on: :update
	validates :cousins_b, presence: true, if: "cousins_a == 'Yes' || cousins_a =='예' || cousins_a =='Evet'", on: :update
	validates :cousins_c, presence: true, if: "cousins_a == 'Yes' || cousins_a =='예' || cousins_a =='Evet'", on: :update
	validates :cousins_d, presence: true, if: "cousins_a == 'Yes' || cousins_a =='예' || cousins_a =='Evet'", on: :update
	validates :cousins_e, presence: true, if: "cousins_a == 'Yes' || cousins_a =='예' || cousins_a =='Evet'", on: :update
	validates :cousins_f, presence: true, if: "cousins_a == 'Yes' || cousins_a =='예' || cousins_a =='Evet'", on: :update
	validates :cousins_g, presence: true, if: "cousins_a == 'Yes' || cousins_a =='예' || cousins_a =='Evet'", on: :update


  validates :uncle_a, presence: true, on: :update
	validates :uncle_b, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	validates :uncle_c, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	validates :uncle_d, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	validates :uncle_e, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	validates :uncle_f, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	validates :uncle_g, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update


  validates :spouse_a, presence: true, on: :update
	validates :spouse_b, presence: true, if: "spouse_a == 'Yes' || spouse_a =='예' || spouse_a =='Evet'", on: :update
	validates :spouse_c, presence: true, if: "spouse_a == 'Yes' || spouse_a =='예' || spouse_a =='Evet'", on: :update
	validates :spouse_d, presence: true, if: "spouse_a == 'Yes' || spouse_a =='예' || spouse_a =='Evet'", on: :update
	validates :spouse_e, presence: true, if: "spouse_a == 'Yes' || spouse_a =='예' || spouse_a =='Evet'", on: :update
	validates :spouse_f, presence: true, if: "spouse_a == 'Yes' || spouse_a =='예' || spouse_a =='Evet'", on: :update
	validates :spouse_g, presence: true, if: "spouse_a == 'Yes' || spouse_a =='예' || spouse_a =='Evet'", on: :update


  validates :friends_a, presence: true, on: :update
	validates :friends_b, presence: true, if: "friends_a == 'Yes' || friends_a =='예' || friends_a =='Evet'", on: :update
	validates :friends_c, presence: true, if: "friends_a == 'Yes' || friends_a =='예' || friends_a =='Evet'", on: :update
	validates :friends_d, presence: true, if: "friends_a == 'Yes' || friends_a =='예' || friends_a =='Evet'", on: :update
	validates :friends_e, presence: true, if: "friends_a == 'Yes' || friends_a =='예' || friends_a =='Evet'", on: :update
	validates :friends_f, presence: true, if: "friends_a == 'Yes' || friends_a =='예' || friends_a =='Evet'", on: :update
	validates :friends_g, presence: true, if: "friends_a == 'Yes' || friends_a =='예' || friends_a =='Evet'", on: :update


  validates :other_a, presence: true, on: :update
	validates :other_b, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update
	validates :other_who, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update
	validates :other_c, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update
	validates :other_d, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update
	validates :other_e, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update
	validates :other_f, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update
	validates :other_g, presence: true, if: "other_a == 'Yes' || other_a =='예' || other_a =='Evet'", on: :update


validate :checkboxes, on: :update

  def checkboxes
   boxes = [[:family, [[family1,:family1],
                  [family2, :family2],
                  [family3, :family3],
                  [family4, :family4],
                  [family5, :family5],
                  [family6, :family6]]],


    [:live_with, [[live_with1,:live_with1],
                  [live_with2,:live_with2],
                  [live_with3,:live_with3],
                  [live_with4,:live_with4],
                  [live_with5,:live_with5],
                  [live_with6,:live_with6],
                  [live_with7,:live_with7],
                  [live_with8,:live_with8],
                  [live_with9,:live_with9]]]]

    boxes.each do |name, items|
        at_least_one_checked name, items
    end

  end

  def at_least_one_checked (name, boxes)
    x = false
    boxes.each do |val, field|
      x = (val or x)
      logger.debug x
    end
    if !x
      errors.add(name, "can't be blank.")
      boxes.each do |val, field|
        errors.add(field, "")
      end
    end
  end

  validates :self_construal_item1, presence: true, on: :update
  validates :self_construal_item2, presence: true, on: :update
  validates :self_construal_item3, presence: true, on: :update
  validates :self_construal_item4, presence: true, on: :update
  validates :self_construal_item5, presence: true, on: :update
  validates :self_construal_item6, presence: true, on: :update
  validates :self_construal_item7, presence: true, on: :update
  validates :self_construal_item8, presence: true, on: :update
  validates :self_construal_item9, presence: true, on: :update
  validates :self_construal_item10, presence: true, on: :update
  validates :self_construal_item11, presence: true, on: :update
  validates :self_construal_item12, presence: true, on: :update
  validates :self_construal_item13, presence: true, on: :update
  validates :self_construal_item14, presence: true, on: :update
  validates :self_construal_item15, presence: true, on: :update
  validates :self_construal_item16, presence: true, on: :update
  validates :self_construal_item17, presence: true, on: :update
  validates :self_construal_item18, presence: true, on: :update
  validates :individualism_item1, presence: true, on: :update
  validates :individualism_item2, presence: true, on: :update
  validates :individualism_item3, presence: true, on: :update
  validates :individualism_item4, presence: true, on: :update
  validates :individualism_item5, presence: true, on: :update
  validates :individualism_item6, presence: true, on: :update
  validates :individualism_item7, presence: true, on: :update
  validates :individualism_item8, presence: true, on: :update
  validates :individualism_item9, presence: true, on: :update
  validates :individualism_item10, presence: true, on: :update
  validates :individualism_item11, presence: true, on: :update
  validates :individualism_item12, presence: true, on: :update
  validates :individualism_item13, presence: true, on: :update
  validates :individualism_item14, presence: true, on: :update
  validates :individualism_item15, presence: true, on: :update
  validates :individualism_item16, presence: true, on: :update
  validates :individualism_item17, presence: true, on: :update
  validates :individualism_item18, presence: true, on: :update
  validates :individualism_item19, presence: true, on: :update
  validates :depression_item1, presence: true, on: :update
  validates :depression_item2, presence: true, on: :update
  validates :depression_item3, presence: true, on: :update
  validates :depression_item4, presence: true, on: :update
  validates :depression_item5, presence: true, on: :update
  validates :depression_item6, presence: true, on: :update
  validates :depression_item7, presence: true, on: :update
  validates :depression_item8, presence: true, on: :update
  validates :depression_item9, presence: true, on: :update
  validates :depression_item10, presence: true, on: :update
  validates :depression_item11, presence: true, on: :update
  validates :depression_item12, presence: true, on: :update
  validates :depression_item13, presence: true, on: :update
  validates :depression_item14, presence: true, on: :update
  validates :depression_item15, presence: true, on: :update
  validates :depression_item16, presence: true, on: :update
  validates :depression_item17, presence: true, on: :update
  validates :depression_item18, presence: true, on: :update
  validates :depression_item19, presence: true, on: :update
  validates :depression_item20, presence: true, on: :update
  validates :suicide_a, presence: true, on: :update
  validates :suicide_b, presence: true, on: :update
  validates :function_a, presence: true, on: :update
  validates :function_b, presence: true, if: "function_a == 'Yes' || function_a =='예' || function_a =='Evet'", on: :update
  validates :function_c, presence: true, if: "function_a == 'Yes' || function_a =='예' || function_a =='Evet'", on: :update
  validates :trauma_a, presence: true, on: :update
  validates :trauma_b, presence: true, if: "trauma_a == 'Yes' || trauma_a =='예' || trauma_a =='Evet'", on: :update
  validates :trauma_c, presence: true, if: "trauma_a == 'Yes' || trauma_a =='예' || trauma_a =='Evet'", on: :update
  validates :religios_dominations, presence: true, on: :update
  validates :religious_a_item1, presence: true, on: :update
  validates :religious_a_item2, presence: true, on: :update
  validates :religious_a_item3, presence: true, on: :update
  validates :how_religious, presence: true, on: :update
  validates :religious_b, presence: true, on: :update
  validates :religious_c, presence: true, on: :update
  validates :demographics_b, presence: true, on: :update
  validates :demographics_c, presence: true, on: :update
  validates :demographics_d, presence: true, on: :update
  validates :demographics_e, presence: true, on: :update
  validates :demographics_i, presence: true, on: :update
  validates :demographics_j, presence: true, on: :update
  validates :demographics_k, presence: true, on: :update

  validates :demographics_l, presence: true, if: "demographics_k == 'Full-time employee (with insurance coverage)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Part-time employee (without insurance coverage)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Self-employer with more than 10 employees'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Self-employer with less than 9 employees'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == '정규직 고용인(4대보험 보장)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == '비정규직 고용인(4대보험 보장안됨)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == '자영업자(피고용인 10인 이상)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == '자영업자(피고용인 9명 이하)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Maaş ya da ücret karşılığı tam zamanlı çalışıyorum (sigortalı)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Maaş ya da ücret karşılığı yarı zamanlı çalışıyorum (sigortasız)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Kendi hesabıma çalışıyorum (10 dan fazla çalışanım var)'", on: :update
  validates :demographics_l, presence: true, if: "demographics_k == 'Kendi hesabıma çalışıyorum (9 dan az çalışanım var)'", on: :update

  validates :demographics_m, presence: true, on: :update
  validates :demographics_n, presence: true, on: :update
  validates :demographics_o,presence: true, on: :update


  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :num_siblings, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :num_children, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :num_children_intouch, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :other_relatives, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :other_relatives_touch, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :close_friends, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :close_friends_touch, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update

  validates :religious_members, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "religious == 'Yes' || religious =='예' || religious =='Evet'", on: :update
  validates :talk_students_teachers, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "classes == 'Yes' || classes =='예' || classes =='Evet'", on: :update
  
  validates :talk_work, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :visit_neighbors, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update

  validates :num_volunteer, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "volunteer == 'Yes' || volunteer =='예' || volunteer =='Evet'", on: :update

  validates :demographics_a, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :demographics_f, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "demographics_e == 'Yes' || demographics_e =='예' || demographics_e =='Evet'", on: :update
  validates :demographics_g, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
   

end
