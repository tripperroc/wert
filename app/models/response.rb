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
  validates :parents_touch, if: "parents == 'Only mother' || parents == 'Only father' || parents == '어머니만' || parents == '아버지만' || parents == 'Sadece annem ile' || parents == 'Sadece babam ile' || parents == 'both' || parents == '어머니, 아버지 모두' || parents == 'İkisiyle de'", presence: true, on: :update
  validates :parents_partner, presence: true, on: :update
  validates :parents_partner_touch, if: "parents == 'Only mother' || parents == 'Only father' || parents == '어머니만' || parents == '아버지만' || parents == 'Sadece annem ile' || parents == 'Sadece babam ile' || parents == 'both' || parents == '어머니, 아버지 모두' || parents == 'İkisiyle de'", presence: true, on: :update

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
  validates :belong_item14, presence: true, on: :update
  validates :belong_item15, presence: true, on: :update
  validates :belong_item16, presence: true, on: :update
  validates :belong_item17, presence: true, on: :update
  validates :belong_item18, presence: true, on: :update
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
  validates :rahe_other, presence: true, if: "rahe_item55 = 'Not at all affected' || rahe_item55 = 'Not affected' || rahe_item55 = 'Neither affected nor not affected' || rahe_item55 = 'Affected' || rahe_item55 = 'Very much affected' || rahe_item55 = '전혀 영향받지 않음' || rahe_item55 = '영향받지 않음' || rahe_item55 = '보통' || rahe_item55 = '영향받음' || rahe_item55 = '매우 많이 영향을 받음' || rahe_item55 = 'Hiç etkilenmedim' || rahe_item55 = 'Etkilenmedim' || rahe_item55 = 'Ne etkilendim ne etkilenmedim' || rahe_item55 = 'Etkilendim' || rahe_item55 = 'Çok etkilendim'", on: :update
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


  validates :exfamily_a, presence: true, on: :update
	validates :exfamily_b, presence: true, if: "exfamily_a == 'Yes' || exfamily_a =='예' || exfamily_a =='Evet'", on: :update
	validates :exfamily_c, presence: true, if: "exfamily_a == 'Yes' || exfamily_a =='예' || exfamily_a =='Evet'", on: :update
	validates :exfamily_d, presence: true, if: "exfamily_a == 'Yes' || exfamily_a =='예' || exfamily_a =='Evet'", on: :update
	validates :exfamily_e, presence: true, if: "exfamily_a == 'Yes' || exfamily_a =='예' || exfamily_a =='Evet'", on: :update
	validates :exfamily_f, presence: true, if: "exfamily_a == 'Yes' || exfamily_a =='예' || exfamily_a =='Evet'", on: :update
	validates :exfamily_g, presence: true, if: "exfamily_a == 'Yes' || exfamily_a =='예' || exfamily_a =='Evet'", on: :update

 #  validates :uncle_a, presence: true, on: :update
	# validates :uncle_b, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	# validates :uncle_c, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	# validates :uncle_d, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	# validates :uncle_e, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	# validates :uncle_f, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update
	# validates :uncle_g, presence: true, if: "uncle_a == 'Yes' || uncle_a =='예' || uncle_a =='Evet'", on: :update


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

  validates :net_a, presence: true, on: :update
  validates :net_b, presence: true, if: "net_a == 'Yes' || net_a =='예' || net_a =='Evet'", on: :update
  validates :net_c, presence: true, if: "net_a == 'Yes' || net_a =='예' || net_a =='Evet'", on: :update
  validates :net_d, presence: true, if: "net_a == 'Yes' || net_a =='예' || net_a =='Evet'", on: :update
  validates :net_e, presence: true, if: "net_a == 'Yes' || net_a =='예' || net_a =='Evet'", on: :update
  validates :net_f, presence: true, if: "net_a == 'Yes' || net_a =='예' || net_a =='Evet'", on: :update
  validates :net_g, presence: true, if: "net_a == 'Yes' || net_a =='예' || net_a =='Evet'", on: :update
  validates :org_a, presence: true, on: :update
  validates :org_b, presence: true, if: "org_a == 'Yes' || org_a =='예' || org_a =='Evet'", on: :update
  validates :org_c, presence: true, if: "org_a == 'Yes' || org_a =='예' || org_a =='Evet'", on: :update
  validates :org_d, presence: true, if: "org_a == 'Yes' || org_a =='예' || org_a =='Evet'", on: :update
  validates :org_e, presence: true, if: "org_a == 'Yes' || org_a =='예' || org_a =='Evet'", on: :update
  validates :org_f, presence: true, if: "org_a == 'Yes' || org_a =='예' || org_a =='Evet'", on: :update
  validates :org_g, presence: true, if: "org_a == 'Yes' || org_a =='예' || org_a =='Evet'", on: :update
  validates :mesp_a, presence: true, on: :update
  validates :mesp_b, presence: true, if: "mesp_a == 'Yes' || mesp_a =='예' || mesp_a =='Evet'", on: :update
  validates :mesp_c, presence: true, if: "mesp_a == 'Yes' || mesp_a =='예' || mesp_a =='Evet'", on: :update
  validates :mesp_d, presence: true, if: "mesp_a == 'Yes' || mesp_a =='예' || mesp_a =='Evet'", on: :update
  validates :mesp_e, presence: true, if: "mesp_a == 'Yes' || mesp_a =='예' || mesp_a =='Evet'", on: :update
  validates :mesp_f, presence: true, if: "mesp_a == 'Yes' || mesp_a =='예' || mesp_a =='Evet'", on: :update
  validates :mesp_g, presence: true, if: "mesp_a == 'Yes' || mesp_a =='예' || mesp_a =='Evet'", on: :update
  validates :relp_a, presence: true, on: :update
  validates :relp_b, presence: true, if: "relp_a == 'Yes' || relp_a =='예' || relp_a =='Evet'", on: :update
  validates :relp_c, presence: true, if: "relp_a == 'Yes' || relp_a =='예' || relp_a =='Evet'", on: :update
  validates :relp_d, presence: true, if: "relp_a == 'Yes' || relp_a =='예' || relp_a =='Evet'", on: :update
  validates :relp_e, presence: true, if: "relp_a == 'Yes' || relp_a =='예' || relp_a =='Evet'", on: :update
  validates :relp_f, presence: true, if: "relp_a == 'Yes' || relp_a =='예' || relp_a =='Evet'", on: :update
  validates :relp_g, presence: true, if: "relp_a == 'Yes' || relp_a =='예' || relp_a =='Evet'", on: :update
  validates :com_a, presence: true, on: :update
  validates :com_b, presence: true, if: "com_a == 'Yes' || com_a =='예' || com_a =='Evet'", on: :update
  validates :com_c, presence: true, if: "com_a == 'Yes' || com_a =='예' || com_a =='Evet'", on: :update
  validates :com_d, presence: true, if: "com_a == 'Yes' || com_a =='예' || com_a =='Evet'", on: :update
  validates :com_e, presence: true, if: "com_a == 'Yes' || com_a =='예' || com_a =='Evet'", on: :update
  validates :com_f, presence: true, if: "com_a == 'Yes' || com_a =='예' || com_a =='Evet'", on: :update
  validates :com_g, presence: true, if: "com_a == 'Yes' || com_a =='예' || com_a =='Evet'", on: :update

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

  validates :suicide_c, if: "suicide_a == 'I have attempted to kill myself, but did not want to die' || suicide_a == 'I have attempted to kill myself, and really hoped to die' || suicide_a == '자살을 시도해 본 적이 있다. 하지만 정말로 죽고 싶었던 것은 아니다' || suicide_a == '자살을 시도해 본 적이 있고, 그 때는 정말 죽고 싶은 마음이었다' || suicide_a == 'Hayatımı sonlandırmak için girişimde bulundum ama sanırım gerçekten ölmek istemiyordum' || suicide_a == 'Hayatımı sonlandırmak için girişimde bulundum ve sanırım gerçekten ölmeyi umdum'", presence: true, on: :update 
  validates :suicide_d, if: "suicide_b == 'I have attempted to kill myself, but did not want to die' || suicide_b == 'I have attempted to kill myself, and really hoped to die' || suicide_b == '자살을 시도해 본 적이 있다. 하지만 정말로 죽고 싶었던 것은 아니다' || suicide_b == '자살을 시도해 본 적이 있고, 그 때는 정말 죽고 싶은 마음이었다' || suicide_b == 'Hayatımı sonlandırmak için girişimde bulundum ama sanırım gerçekten ölmek istemiyordum' || suicide_b == 'Hayatımı sonlandırmak için girişimde bulundum ve sanırım gerçekten ölmeyi umdum'", presence: true, on: :update

  validates :function_a, presence: true, on: :update
  validates :function_b, presence: true, if: "function_a == 'Yes' || function_a =='예' || function_a =='Evet'", on: :update
  validates :function_c, presence: true, if: "function_a == 'Yes' || function_a =='예' || function_a =='Evet'", on: :update
  validates :trauma_a, presence: true, on: :update
  validates :trauma_b, presence: true, if: "trauma_a == 'Yes' || trauma_a =='예' || trauma_a =='Evet'", on: :update
  validates :trauma_c, presence: true, if: "trauma_a == 'Yes' || trauma_a =='예' || trauma_a =='Evet'", on: :update
  validates :religious_dominations, presence: true, on: :update
  validates :religious_dominations_other, presence: true, if: "religious_dominations == 'Other (please indicate what)' || religious_dominations =='기타_________________' || religious_dominations =='Diğer _______'", on: :update
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
  validates :demographics_o, presence: true, on: :update
  validates :demographics_p, presence: true, if: "birth_sex == 'Male' || birth_sex =='Female' || birth_sex == '남자' || birth_sex =='여자'", on: :update
  validates :demographics_p_other, presence: true, if: "demographics_p == 'Yes, another Hispanic, Latino or Spanish origin - ie. Argentinean, Colombian, Dominican, Nicaraguan, Spaniard (please enter below)' || demographics_p =='예, 기타 중남미인입니다(예: 도미니칸 등)'", on: :update
  validates :demographics_r, presence: true, if: "birth_sex == 'Male' || birth_sex =='Female' || birth_sex == '남자' || birth_sex =='여자'", on: :update
  validates :demographics_r_other, presence: true, if: "demographics_r == 'American Indian or Alaska Native - print name of enrolled or principal tribe below' || demographics_r =='Other Asian - ie. Hmong, Laotian, Thai, Pakistani, Cambodian etc. (please enter below)' || demographics_r == 'Other Pacific Islander - ie. Fijian, Tongan etc. (please enter below)' || demographics_r =='Some other race (please enter below)' || demographics_r == '아메리칸 인디언 또는 알래스카 원주민' || demographics_r =='기타 아시아계열 (예: 타이, 파키스탄 등)' || demographics_r == '기타 남태평양 사람들 (예: 피지인 등)' || demographics_r =='기타(구체적으로 기입하세요:)'", on: :update
  validates :demographics_s, presence: true, if: "birth_sex == 'Erkek' || birth_sex =='Kadın'", on: :update

  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :num_siblings, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :num_children, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  #validates :num_children_intouch, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "num_children != 0", on: :update
  validates :num_children_intouch, presence: true, if: "num_children == 1 || num_children == 2 || num_children == 3 || num_children == 4 || num_children == 5 || num_children == 6 || num_children == 7 || num_children == 8 || num_children == 9 || num_children == 10 || num_children == 11 || num_children == 12 || num_children == 13 || num_children == 14 || num_children == 15", on: :update
  # validates :num_children_intouch, presence: true, if: not :oth_chil?, on: :update
  # def oth_chil?
  # 	:num_children == 0
  # end
  validates :other_relatives, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  #validates :other_relatives_touch, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "other_relatives != 0", on: :update
  validates :other_relatives_touch, presence: true, if: "other_relatives == 1 || other_relatives == 2 || other_relatives == 3 || other_relatives == 4 || other_relatives == 5 || other_relatives == 6 || other_relatives == 7 || other_relatives == 8 || other_relatives == 9 || other_relatives == 10 || other_relatives == 11 || other_relatives == 12 || other_relatives == 13 || other_relatives == 14 || other_relatives == 15", on: :update
  validates :close_friends, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  #validates :close_friends_touch, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "close_friends != 0", on: :update
  validates :close_friends_touch, presence: true, if: "close_friends == 1 || close_friends == 2 || close_friends == 3 || close_friends == 4 || close_friends == 5 || close_friends == 6 || close_friends == 7 || close_friends == 8 || close_friends == 9 || close_friends == 10 || close_friends == 11 || close_friends == 12 || close_friends == 13 || close_friends == 14 || close_friends == 15", on: :update

  validates :religious_members, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "religious == 'Yes' || religious =='예' || religious =='Evet'", on: :update
  validates :talk_students_teachers, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "classes == 'Yes' || classes =='예' || classes =='Evet'", on: :update
  
  validates :talk_work, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :visit_neighbors, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update

  validates :num_volunteer, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "volunteer == 'Yes' || volunteer =='예' || volunteer =='Evet'", on: :update

  validates :demographics_a, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :demographics_f, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, if: "demographics_e == 'Yes' || demographics_e =='예' || demographics_e =='Evet'", on: :update
  validates :demographics_g, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
   

end
