# encoding: UTF-8
class SurveyorController < ApplicationController


  def surveyor_finish
    #recruit_index_path
    estimate_index_path
  end

  def back
    @response = Response.find_or_create_by(facebook_user_id: facebook_user.id)
    answers
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      logger.debug params
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
     
    @error_top = t(:error_top)

    render :action => "create"
  end

  def create
      
      ### Initialize a response set after first getting the facebook id of the user.
      

      @response = Response.find_or_create_by(facebook_response_id: params[:id])
      
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      logger.debug params
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

      @error_top = t(:error_top)
      @instructions = t(:instructions)

      @sex = t(:sex)
      @age = t(:age)
      @yn1 = t(:yn1)
      @yn2 = t(:yn2) 
      @yn = [@yn1, @yn2]
      @bigFive_instruction = t(:bigFive_instruction)
      @cohen_instruction = t(:cohen_instruction)
      @martialq = t(:martialq)
      @num_siblings = t(:num_siblings)
      @num_children = t(:num_children)
      @num_children_intouch = t(:num_children_intouch)
      @parentsq = t(:parentsq)
      @parents_touchq = t(:parents_touchq)
      @parents_partnerq = t(:parents_partnerq)
      @parents_partner_touchq = t(:parents_partner_touchq)
      @other_relatives = t(:other_relatives)
      @other_relatives_touch = t(:other_relatives_touch)
      @close_friends = t(:close_friends)
      @close_friends_touch = t(:close_friends_touch)
      @religious = t(:religious)
      @religious_members = t(:religious_members)
      @classes = t(:classes)
      @talk_students_teachers = t(:talk_students_teachers)
      @employedq = t(:employedq)
      @talk_work = t(:talk_work)
      @visit_neighbors = t(:visit_neighbors)
      @volunteer = t(:volunteer)
      @num_volunteer = t(:num_volunteer)
      @social_group = t(:social_group)
      @group_name = t(:group_name)
      @group_member = t(:group_member)
      @happyq = t(:happyq)
      @instructions1 = t(:instructions1)
      @communal1q = t(:communal1q)
      @communal2q = t(:communal2q)
      @burdenq = t(:burdenq)
      @belongq = t(:belongq)
      @raheq = t(:raheq)
      @instructions2 = t(:instructions2)
      @cope_b = t(:cope_b)
      @cope_cq = t(:cope_cq)
      @communal_checkq = t(:communal_checkq)
      @father_a = t(:father_a)
      @father_b = t(:father_b)
      @father_c = t(:father_c)
      @father_d = t(:father_d)
      @father_e = t(:father_e)
      @father_f = t(:father_f)
      @father_g = t(:father_g)
      @mother_a = t(:mother_a)
      @mother_b = t(:mother_b)
      @mother_c = t(:mother_c)
      @mother_d = t(:mother_d)
      @mother_e = t(:mother_e)
      @mother_f = t(:mother_f)
      @mother_g = t(:mother_g)
      @children_a = t(:children_a)
      @children_b = t(:children_b)
      @children_c = t(:children_c)
      @children_d = t(:children_d)
      @children_e = t(:children_e)
      @children_f = t(:children_f)
      @children_g = t(:children_g)
      @sibling_a = t(:sibling_a)
      @sibling_b = t(:sibling_b)
      @sibling_c = t(:sibling_c)
      @sibling_d = t(:sibling_d)
      @sibling_e = t(:sibling_e)
      @sibling_f = t(:sibling_f)
      @sibling_g = t(:sibling_g)
      @cousins_a = t(:cousins_a)
      @cousins_b = t(:cousins_b)
      @cousins_c = t(:cousins_c)
      @cousins_d = t(:cousins_d)
      @cousins_e = t(:cousins_e)
      @cousins_f = t(:cousins_f)
      @cousins_g = t(:cousins_g)
      @uncle_a = t(:uncle_a)
      @uncle_b = t(:uncle_b)
      @uncle_c = t(:uncle_c)
      @uncle_d = t(:uncle_d)
      @uncle_e = t(:uncle_e)
      @uncle_f = t(:uncle_f)
      @uncle_g = t(:uncle_g)
      @spouse_a = t(:spouse_a)
      @spouse_b = t(:spouse_b)
      @spouse_c = t(:spouse_c)
      @spouse_d = t(:spouse_d)
      @spouse_e = t(:spouse_e)
      @spouse_f = t(:spouse_f)
      @spouse_g = t(:spouse_g)
      @friends_a = t(:friends_a)
      @friends_b = t(:friends_b)
      @friends_c = t(:friends_c)
      @friends_d = t(:friends_d)
      @friends_e = t(:friends_e)
      @friends_f = t(:friends_f)
      @friends_g = t(:friends_g)
      @other_who = t(:other_who)
      @other_a = t(:other_a)
      @other_b = t(:other_b)
      @other_c = t(:other_c)
      @other_d = t(:other_d)
      @other_e = t(:other_e)
      @other_f = t(:other_f)
      @other_g = t(:other_g)
      @cope_problemsq = t(:cope_problemsq)
      @familyq = t(:familyq)
      @self_construalq = t(:self_construalq)
      @ind_col = t(:ind_col)
      @depressionq = t(:depressionq)
      @instructions3 = t(:instructions3)
      @suicide_aq = t(:suicide_aq)
      @suicide_bq = t(:suicide_bq)
      @function_a = t(:function_a)
      @function_b = t(:function_b)
      @function_c = t(:function_c)
      @trauma_a = t(:trauma_a)
      @trauma_b = t(:trauma_b)
      @trauma_c = t(:trauma_c)
      @religious_dominations = t(:religious_dominations)
      @religious_aq = t(:religious_aq)
      @religious_b = t(:religious_b)
      @religious_c = t(:religious_c)
      @how_religiousq = t(:how_religiousq)
      @demographics_a = t(:demographics_a)
      @demographics_b = t(:demographics_b)
      @demographics_cq = t(:demographics_cq)
      @demographics_dq = t(:demographics_dq)
      @demographics_e = t(:demographics_e)
      @demographics_f = t(:demographics_f)
      @demographics_g = t(:demographics_g)
      @live_withq = t(:live_withq)
      @demographics_i = t(:demographics_i)
      @demographics_j = t(:demographics_j)
      @demographics_k = t(:demographics_k)
      @demographics_l = t(:demographics_l)
      @demographics_m = t(:demographics_m)
      @demographics_n = t(:demographics_n)
      @demographics_o = t(:demographics_o)

      answers

  #    redirect_to :controller => "estimate", :action => "index"
  end

  def update
   params.require(:response).permit! 
   @response = Response.find(params[:id])

      @error_top = t(:error_top)
      @instructions = t(:instructions)

      @sex = t(:sex)
      @age = t(:age)
      @yn1 = t(:yn1)
      @yn2 = t(:yn2) 
      @yn = [@yn1, @yn2]
      @bigFive_instruction = t(:bigFive_instruction)
      @cohen_instruction = t(:cohen_instruction)
      @martialq = t(:martialq)
      @num_siblings = t(:num_siblings)
      @num_children = t(:num_children)
      @num_children_intouch = t(:num_children_intouch)
      @parentsq = t(:parentsq)
      @parents_touchq = t(:parents_touchq)
      @parents_partnerq = t(:parents_partnerq)
      @parents_partner_touchq = t(:parents_partner_touchq)
      @other_relatives = t(:other_relatives)
      @other_relatives_touch = t(:other_relatives_touch)
      @close_friends = t(:close_friends)
      @close_friends_touch = t(:close_friends_touch)
      @religious = t(:religious)
      @religious_members = t(:religious_members)
      @classes = t(:classes)
      @talk_students_teachers = t(:talk_students_teachers)
      @employedq = t(:employedq)
      @talk_work = t(:talk_work)
      @visit_neighbors = t(:visit_neighbors)
      @volunteer = t(:volunteer)
      @num_volunteer = t(:num_volunteer)
      @social_group = t(:social_group)
      @group_name = t(:group_name)
      @group_member = t(:group_member)
      @happyq = t(:happyq)
      @instructions1 = t(:instructions1)
      @communal1q = t(:communal1q)
      @communal2q = t(:communal2q)
      @burdenq = t(:burdenq)
      @belongq = t(:belongq)
      @raheq = t(:raheq)
      @instructions2 = t(:instructions2)
      @cope_b = t(:cope_b)
      @cope_cq = t(:cope_cq)
      @communal_checkq = t(:communal_checkq)
      @father_a = t(:father_a)
      @father_b = t(:father_b)
      @father_c = t(:father_c)
      @father_d = t(:father_d)
      @father_e = t(:father_e)
      @father_f = t(:father_f)
      @father_g = t(:father_g)
      @mother_a = t(:mother_a)
      @mother_b = t(:mother_b)
      @mother_c = t(:mother_c)
      @mother_d = t(:mother_d)
      @mother_e = t(:mother_e)
      @mother_f = t(:mother_f)
      @mother_g = t(:mother_g)
      @children_a = t(:children_a)
      @children_b = t(:children_b)
      @children_c = t(:children_c)
      @children_d = t(:children_d)
      @children_e = t(:children_e)
      @children_f = t(:children_f)
      @children_g = t(:children_g)
      @sibling_a = t(:sibling_a)
      @sibling_b = t(:sibling_b)
      @sibling_c = t(:sibling_c)
      @sibling_d = t(:sibling_d)
      @sibling_e = t(:sibling_e)
      @sibling_f = t(:sibling_f)
      @sibling_g = t(:sibling_g)
      @cousins_a = t(:cousins_a)
      @cousins_b = t(:cousins_b)
      @cousins_c = t(:cousins_c)
      @cousins_d = t(:cousins_d)
      @cousins_e = t(:cousins_e)
      @cousins_f = t(:cousins_f)
      @cousins_g = t(:cousins_g)
      @uncle_a = t(:uncle_a)
      @uncle_b = t(:uncle_b)
      @uncle_c = t(:uncle_c)
      @uncle_d = t(:uncle_d)
      @uncle_e = t(:uncle_e)
      @uncle_f = t(:uncle_f)
      @uncle_g = t(:uncle_g)
      @spouse_a = t(:spouse_a)
      @spouse_b = t(:spouse_b)
      @spouse_c = t(:spouse_c)
      @spouse_d = t(:spouse_d)
      @spouse_e = t(:spouse_e)
      @spouse_f = t(:spouse_f)
      @spouse_g = t(:spouse_g)
      @friends_a = t(:friends_a)
      @friends_b = t(:friends_b)
      @friends_c = t(:friends_c)
      @friends_d = t(:friends_d)
      @friends_e = t(:friends_e)
      @friends_f = t(:friends_f)
      @friends_g = t(:friends_g)
      @other_who = t(:other_who)
      @other_a = t(:other_a)
      @other_b = t(:other_b)
      @other_c = t(:other_c)
      @other_d = t(:other_d)
      @other_e = t(:other_e)
      @other_f = t(:other_f)
      @other_g = t(:other_g)
      @cope_problemsq = t(:cope_problemsq)
      @familyq = t(:familyq)
      @self_construalq = t(:self_construalq)
      @ind_col = t(:ind_col)
      @depressionq = t(:depressionq)
      @instructions3 = t(:instructions3)
      @suicide_aq = t(:suicide_aq)
      @suicide_bq = t(:suicide_bq)
      @function_a = t(:function_a)
      @function_b = t(:function_b)
      @function_c = t(:function_c)
      @trauma_a = t(:trauma_a)
      @trauma_b = t(:trauma_b)
      @trauma_c = t(:trauma_c)
      @religious_dominations = t(:religious_dominations)
      @religious_aq = t(:religious_aq)
      @religious_b = t(:religious_b)
      @religious_c = t(:religious_c)
      @how_religiousq = t(:how_religiousq)
      @demographics_a = t(:demographics_a)
      @demographics_b = t(:demographics_b)
      @demographics_cq = t(:demographics_cq)
      @demographics_dq = t(:demographics_dq)
      @demographics_e = t(:demographics_e)
      @demographics_f = t(:demographics_f)
      @demographics_g = t(:demographics_g)
      @live_withq = t(:live_withq)
      @demographics_i = t(:demographics_i)
      @demographics_j = t(:demographics_j)
      @demographics_k = t(:demographics_k)
      @demographics_l = t(:demographics_l)
      @demographics_m = t(:demographics_m)
      @demographics_n = t(:demographics_n)
      @demographics_o = t(:demographics_o)

   if @response.update(params[:response]) 
     redirect_to :controller => "estimate", :action => "create", :id => params[:id]
   else
     answers
     render :create 
   end
  end 

   def any_errors
     if @response.errors.any?
        logger.debug "222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222"
        logger.debug "222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222"

       @response.errors.full_messages.each do |msg| 
          logger.debug msg 
       end
     end
   end

  def answers
    #@age = [:age]
    @mf1 = t(:mf1)
    @mf2 = t(:mf2)
    @mf = [@mf1, @mf2]
   
    @yn1 = t(:yn1)
    @yn2 = t(:yn2) 
    @yn = [@yn1, @yn2]

    @employed1 = t(:employed1)
    @employed2 = t(:employed2) 
    @employed3 = t(:employed3)
    @employed4 = t(:employed4) 
    @employed = [@employed1, 
                 @employed2, 
                 @employed3, 
                 @employed4]

    @happy1 = t(:happy1)
    @happy2 = t(:happy2)
    @happy3 = t(:happy3)
    @happy4 = t(:happy4)
    @happy = [@happy1, 
              @happy2, 
              @happy3, 
              @happy4]
   
    @marital1 = t(:marital1)
    @marital2 = t(:marital2)
    @marital3 = t(:marital3) 
    @marital4 = t(:marital4) 
    @marital5 = t(:marital5) 
    @marital6 = t(:marital6) 
    @marital7 = t(:marital7) 
    @marital8 = t(:marital8) 
    @martial = [@marital1, 
                @marital2, 
                @marital3, 
                @marital4, 
                @marital5, 
                @marital6, 
                @marital7, 
                @marital8]

    @parents1 = t(:parents1)
    @parents2 = t(:parents2)
    @parents3 = t(:parents3)
    @parents4 = t(:parents4)
    @parents = [@parents1, 
                @parents2, 
                @parents3, 
                @parents4]

    @parents_touch1 = t(:parents_touch1)
    @parents_touch2 = t(:parents_touch2)
    @parents_touch3 = t(:parents_touch3)
    @parents_touch4 = t(:parents_touch4)
    @parents_touch = [@parents_touch1, 
                      @parents_touch2, 
                      @parents_touch3, 
                      @parents_touch4]            

    @parents_partner1 = t(:parents_partner1)
    @parents_partner2 = t(:parents_partner2)
    @parents_partner3 = t(:parents_partner3)
    @parents_partner4 = t(:parents_partner4)
    @parents_partner5 = t(:parents_partner5)
    @parents_partner = [@parents_partner1, 
                        @parents_partner2, 
                        @parents_partner3, 
                        @parents_partner4, 
                        @parents_partner5]

    @parents_partner_touch1 = t(:parents_partner_touch1)
    @parents_partner_touch2 = t(:parents_partner_touch2)
    @parents_partner_touch3 = t(:parents_partner_touch3)
    @parents_partner_touch4 = t(:parents_partner_touch4)
    @parents_partner_touch = [@parents_partner_touch1, 
                              @parents_partner_touch2, 
                              @parents_partner_touch3, 
                              @parents_partner_touch4]                      

    @life_satisfaction_ideal = t(:life_satisfaction_ideal)
    @life_satisfaction_conditions = t(:life_satisfaction_conditions)
    @life_satisfaction_satisfied = t(:life_satisfaction_satisfied)
    @life_satisfaction_things = t(:life_satisfaction_things)
    @life_satisfaction_change = t(:life_satisfaction_change)
    @life_satisfaction = [[:life_satisfaction_ideal, @life_satisfaction_ideal],
                          [:life_satisfaction_conditions, @life_satisfaction_conditions],
                          [:life_satisfaction_satisfied, @life_satisfaction_satisfied],
                          [:life_satisfaction_things, @life_satisfaction_things],
                          [:life_satisfaction_change, @life_satisfaction_change]]

    @aggreement_strong1 = t(:aggreement_strong1)
    @aggreement_strong2 = t(:aggreement_strong2)
    @aggreement_strong3 = t(:aggreement_strong3)
    @aggreement_strong4 = t(:aggreement_strong4)
    @aggreement_strong5 = t(:aggreement_strong5)
    @aggreement_strong = [ @aggreement_strong1, 
                           @aggreement_strong2, 
                           @aggreement_strong3, 
                           @aggreement_strong4, 
                           @aggreement_strong5]

    @rating1 = t(:rating1)
    @rating2 = t(:rating2)
    @rating3 = t(:rating3)
    @rating4 = t(:rating4)
    @rating5 = t(:rating5)
    @rating6 = t(:rating6)
    @rating7 = t(:rating7)
    @happiness = [ @rating1, 
                   @rating2, 
                   @rating3, 
                   @rating4, 
                   @rating5, 
                   @rating6, 
                   @rating7]

    @happiness_ratingq = t(:happiness_ratingq)
    @happiness_rating =[[:happiness_rating, @happiness_ratingq]]

    @aggreement1 = t(:aggreement1)
    @aggreement2 = t(:aggreement2)
    @aggreement3 = t(:aggreement3)
    @aggreement4 = t(:aggreement4)
    @aggreement5 = t(:aggreement5)
    @aggreement = [@aggreement1, 
                   @aggreement2, 
                   @aggreement3, 
                   @aggreement4, 
                   @aggreement5]

    @bigFive_introverted = t(:bigFive_introverted)
    @bigFive_trust = t(:bigFive_trust)
    @bigFive_lazy = t(:bigFive_lazy)
    @bigFive_cope = t(:bigFive_cope)
    @bigFive_art = t(:bigFive_art)
    @bigFive_extraverted = t(:bigFive_extraverted)
    @bigFive_flaws = t(:bigFive_flaws)
    @bigFive_tasks = t(:bigFive_tasks)
    @bigFive_tense = t(:bigFive_tense)
    @bigFive_active = t(:bigFive_active)
    @bigFive = [[:bigFive_introverted, @bigFive_introverted],
                [:bigFive_trust, @bigFive_trust],
                [:bigFive_lazy, @bigFive_lazy],
                [:bigFive_cope, @bigFive_cope],
                [:bigFive_art, @bigFive_art],
                [:bigFive_extraverted, @bigFive_extraverted],
                [:bigFive_flaws, @bigFive_flaws],
                [:bigFive_tasks, @bigFive_tasks],
                [:bigFive_tense, @bigFive_tense],
                [:bigFive_active, @bigFive_active]]

    @communal1_item1 = t(:communal1_item1)
    @communal1_item2 = t(:communal1_item2)
    @communal1_item3 = t(:communal1_item3)
    @communal1_item4 = t(:communal1_item4)
    @communal1_item5 = t(:communal1_item5)
    @communal1_item6 = t(:communal1_item6)
    @communal1 =[[:communal1_item1, @communal1_item1],
                 [:communal1_item2, @communal1_item2],
                 [:communal1_item3, @communal1_item3],
                 [:communal1_item4, @communal1_item4],
                 [:communal1_item5, @communal1_item5],
                 [:communal1_item6, @communal1_item6]]

    @communal2_item1 = t(:communal2_item1)
    @communal2_item2 = t(:communal2_item2)
    @communal2_item3 = t(:communal2_item3)
    @communal2_item4 = t(:communal2_item4)
    @communal2_item5 = t(:communal2_item5)
    @communal2_item6 = t(:communal2_item6)
    @communal2=[[:communal2_item1, @communal2_item1],
                [:communal2_item2, @communal2_item2],
                [:communal2_item3, @communal2_item3],
                [:communal2_item4, @communal2_item4],
                [:communal2_item5, @communal2_item5],
                [:communal2_item6, @communal2_item6]]

    @burden_item1 = t(:burden_item1)
    @burden_item2 = t(:burden_item2)
    @burden_item3 = t(:burden_item3)
    @burden_item4 = t(:burden_item4)
    @burden_item5 = t(:burden_item5)
    @burden_item6 = t(:burden_item6)
    @burden=[[:burden_item1, @burden_item1],
             [:burden_item2, @burden_item2],
             [:burden_item3, @burden_item3],
             [:burden_item4, @burden_item4],
             [:burden_item5, @burden_item5],
             [:burden_item6, @burden_item6]]

    @belong_item1 = t(:belong_item1)
    @belong_item2 = t(:belong_item2)
    @belong_item3 = t(:belong_item3)
    @belong_item4 = t(:belong_item4)
    @belong_item5 = t(:belong_item5)
    @belong_item6 = t(:belong_item6)
    @belong_item7 = t(:belong_item7)
    @belong_item8 = t(:belong_item8)
    @belong_item9 = t(:belong_item9)
    @belong_item10 = t(:belong_item10)
    @belong_item11 = t(:belong_item11)
    @belong_item12 = t(:belong_item12)
    @belong_item13 = t(:belong_item13)
    #@belong_item14 = t(:belong_item14)
    @belong=[[:belong_item1, @belong_item1],
          	 [:belong_item2, @belong_item2],
          	 [:belong_item3, @belong_item3],
          	 [:belong_item4, @belong_item4],
          	 [:belong_item5, @belong_item5],
          	 [:belong_item6, @belong_item6],
          	 [:belong_item7, @belong_item7],
          	 [:belong_item8, @belong_item8],
          	 [:belong_item9, @belong_item9],
          	 [:belong_item10, @belong_item10],
          	 [:belong_item11, @belong_item11],
          	 [:belong_item12, @belong_item12],
          	 [:belong_item13, @belong_item13],
             #[:belong_item14, @belong_item14]
           ]

    @affected1 = t(:affected1)
    @affected2 = t(:affected2)
    @affected3 = t(:affected3)
    @affected4 = t(:affected4)
    @affected5 = t(:affected5)
    @affected6 = t(:affected6)
    @affected = [ @affected1, 
                  @affected2, 
                  @affected3, 
                  @affected4, 
                  @affected5, 
                  @affected6]

    @rahe_item1 = t(:rahe_item1)
    @rahe_item2 = t(:rahe_item2)
    @rahe_item3 = t(:rahe_item3)
    @rahe_item4 = t(:rahe_item4)
    @rahe_item5 = t(:rahe_item5)
    @rahe_item6 = t(:rahe_item6)
    @rahe_item7 = t(:rahe_item7)
    @rahe_item8 = t(:rahe_item8)
    @rahe_item9 = t(:rahe_item9)
    @rahe_item10 = t(:rahe_item10)
    @rahe_item11 = t(:rahe_item11)
    @rahe_item12 = t(:rahe_item12)
    @rahe_item13 = t(:rahe_item13)
    @rahe_item14 = t(:rahe_item14)
    @rahe_item15 = t(:rahe_item15)
    @rahe_item16 = t(:rahe_item16)
    @rahe_item17 = t(:rahe_item17)
    @rahe_item18 = t(:rahe_item18)
    @rahe_item19 = t(:rahe_item19)
    @rahe_item20 = t(:rahe_item20)
    @rahe_item21 = t(:rahe_item21)
    @rahe_item22 = t(:rahe_item22)
    @rahe_item23 = t(:rahe_item23)
    @rahe_item24 = t(:rahe_item24)
    @rahe_item25 = t(:rahe_item25)
    @rahe_item26 = t(:rahe_item26)
    @rahe_item27 = t(:rahe_item27)
    @rahe_item28 = t(:rahe_item28)
    @rahe_item29 = t(:rahe_item29)
    @rahe_item30 = t(:rahe_item30)
    @rahe_item31 = t(:rahe_item31)
    @rahe_item32 = t(:rahe_item32)
    @rahe_item33 = t(:rahe_item33)
    @rahe_item34 = t(:rahe_item34)
    @rahe_item35 = t(:rahe_item35)
    @rahe_item36 = t(:rahe_item36)
    @rahe_item37 = t(:rahe_item37)
    @rahe_item38 = t(:rahe_item38)
    @rahe_item39 = t(:rahe_item39)
    @rahe_item40 = t(:rahe_item40)
    @rahe_item41 = t(:rahe_item41)
    @rahe_item42 = t(:rahe_item42)
    @rahe_item43 = t(:rahe_item43)
    @rahe_item44 = t(:rahe_item44)
    @rahe_item45 = t(:rahe_item45)
    @rahe_item46 = t(:rahe_item46)
    @rahe_item47 = t(:rahe_item47)
    @rahe_item48 = t(:rahe_item48)
    @rahe_item49 = t(:rahe_item49)
    @rahe_item50 = t(:rahe_item50)
    @rahe_item51 = t(:rahe_item51)
    @rahe_item52 = t(:rahe_item52)
    @rahe_item53 = t(:rahe_item53)
    @rahe_item54 = t(:rahe_item54)
    @rahe_item55 = t(:rahe_item55)
    @rahe =[[:rahe_item1, @rahe_item1],
            [:rahe_item2, @rahe_item2],
            [:rahe_item3, @rahe_item3],
            [:rahe_item4, @rahe_item4],
            [:rahe_item5, @rahe_item5],
            [:rahe_item6, @rahe_item6],
            [:rahe_item7, @rahe_item7],
            [:rahe_item8, @rahe_item8],
            [:rahe_item9, @rahe_item9],
            [:rahe_item10, @rahe_item10],
            [:rahe_item11, @rahe_item11],
            [:rahe_item12, @rahe_item12],
            [:rahe_item13, @rahe_item13],
            [:rahe_item14, @rahe_item14],
            [:rahe_item15, @rahe_item15],
            [:rahe_item16, @rahe_item16],
            [:rahe_item17, @rahe_item17],
            [:rahe_item18, @rahe_item18],
            [:rahe_item19, @rahe_item19],
            [:rahe_item20, @rahe_item20],
            [:rahe_item21, @rahe_item21],
            [:rahe_item22, @rahe_item22],
            [:rahe_item23, @rahe_item23],
            [:rahe_item24, @rahe_item24],
            [:rahe_item25, @rahe_item25],
            [:rahe_item26, @rahe_item26],
            [:rahe_item27, @rahe_item27],
            [:rahe_item28, @rahe_item28],
            [:rahe_item29, @rahe_item29],
            [:rahe_item30, @rahe_item30],
            [:rahe_item31, @rahe_item31],
            [:rahe_item32, @rahe_item32],
            [:rahe_item33, @rahe_item33],
            [:rahe_item34, @rahe_item34],
            [:rahe_item35, @rahe_item35],
            [:rahe_item36, @rahe_item36],
            [:rahe_item37, @rahe_item37],
            [:rahe_item38, @rahe_item38],
            [:rahe_item39, @rahe_item39],
            [:rahe_item40, @rahe_item40],
            [:rahe_item41, @rahe_item41],
            [:rahe_item42, @rahe_item42],
            [:rahe_item43, @rahe_item43],
            [:rahe_item44, @rahe_item44],
            [:rahe_item45, @rahe_item45],
            [:rahe_item46, @rahe_item46],
            [:rahe_item47, @rahe_item47],
            [:rahe_item48, @rahe_item48],
            [:rahe_item49, @rahe_item49],
            [:rahe_item50, @rahe_item50],
            [:rahe_item51, @rahe_item51],
            [:rahe_item52, @rahe_item52],
            [:rahe_item53, @rahe_item53],
            [:rahe_item54, @rahe_item54],
            [:rahe_item55, @rahe_item55]]

    @done1 = t(:done1)
    @done2 = t(:done2)
    @done3 = t(:done3)
    @done4 = t(:done4)
    @done5 = t(:done5)
    @done = [ @done1, 
              @done2, 
              @done3, 
              @done4, 
              @done5]

    @cope_c_item1 = t(:cope_c_item1)
    @cope_c_item2 = t(:cope_c_item2)
    @cope_c_item3 = t(:cope_c_item3)
    @cope_c_item4 = t(:cope_c_item4)
    @cope_c_item5 = t(:cope_c_item5)
    @cope_c_item6 = t(:cope_c_item6)
    @cope_c_item7 = t(:cope_c_item7)
    @cope_c_item8 = t(:cope_c_item8)
    @cope_c_item9 = t(:cope_c_item9)
    @cope_c_item10 = t(:cope_c_item10)
    @cope_c_item11 = t(:cope_c_item11)
    @cope_c_item12 = t(:cope_c_item12)
    @cope_c_item13 = t(:cope_c_item13)
    @cope_c_item14 = t(:cope_c_item14)
    @cope_c_item15 = t(:cope_c_item15)
    @cope_c_item16 = t(:cope_c_item16)
    @cope_c_item17 = t(:cope_c_item17)
    @cope_c_item18 = t(:cope_c_item18)
    @cope_c_item19 = t(:cope_c_item19)
    @cope_c_item20 = t(:cope_c_item20)
    @cope_c_item21 = t(:cope_c_item21)
    @cope_c_item22 = t(:cope_c_item22)
    @cope_c_item23 = t(:cope_c_item23)
    @cope_c_item24 = t(:cope_c_item24)
    @cope_c_item25 = t(:cope_c_item25)
    @cope_c_item26 = t(:cope_c_item26)
    @cope_c_item27 = t(:cope_c_item27)
    @cope_c_item28 = t(:cope_c_item28)
    @cope_c_item29 = t(:cope_c_item29)
    @cope_c_item30 = t(:cope_c_item30)
    @cope_c_item31 = t(:cope_c_item31)
    @cope_c_item32 = t(:cope_c_item32)
    @cope_c_item33 = t(:cope_c_item33)
    @cope_c=[[:cope_c_item1, @cope_c_item1],
             [:cope_c_item2, @cope_c_item2],
             [:cope_c_item3, @cope_c_item3],
             [:cope_c_item4, @cope_c_item4],
             [:cope_c_item5, @cope_c_item5],
             [:cope_c_item6, @cope_c_item6],
             [:cope_c_item7, @cope_c_item7],
             [:cope_c_item8, @cope_c_item8],
             [:cope_c_item9, @cope_c_item9],
             [:cope_c_item10, @cope_c_item10],
             [:cope_c_item11, @cope_c_item11],
             [:cope_c_item12, @cope_c_item12],
             [:cope_c_item13, @cope_c_item13],
             [:cope_c_item14, @cope_c_item14],
             [:cope_c_item15, @cope_c_item15],
             [:cope_c_item16, @cope_c_item16],
             [:cope_c_item17, @cope_c_item17],
             [:cope_c_item18, @cope_c_item18],
             [:cope_c_item19, @cope_c_item19],
             [:cope_c_item20, @cope_c_item20],
             [:cope_c_item21, @cope_c_item21],
             [:cope_c_item22, @cope_c_item22],
             [:cope_c_item23, @cope_c_item23],
             [:cope_c_item24, @cope_c_item24],
             [:cope_c_item25, @cope_c_item25],
             [:cope_c_item26, @cope_c_item26],
             [:cope_c_item27, @cope_c_item27],
             [:cope_c_item28, @cope_c_item28],
             [:cope_c_item29, @cope_c_item29],
             [:cope_c_item30, @cope_c_item30],
             [:cope_c_item31, @cope_c_item31],
             [:cope_c_item32, @cope_c_item32],
             [:cope_c_item33, @cope_c_item33]]

    @different1 = t(:different1)
    @different2 = t(:different2)
    @different3 = t(:different3)
    @different4 = t(:different4)
    @different5 = t(:different5)
    @cope_problems=[ @different1, 
                     @different2, 
                     @different3, 
                     @different4, 
                     @different5]

    @family1 = t(:family1)
    @family2 = t(:family2)
    @family3 = t(:family3)
    @family4 = t(:family4)
    @family5 = t(:family5)
    @family6 = t(:family6)
    @family=[[:family1, @family1],
             [:family2, @family2],
             [:family3, @family3],
             [:family4, @family4],
             [:family5, @family5],
             [:family6, @family6]]

    @self_construal_item1 = t(:self_construal_item1)
    @self_construal_item2 = t(:self_construal_item2)
    @self_construal_item3 = t(:self_construal_item3)
    @self_construal_item4 = t(:self_construal_item4)
    @self_construal_item5 = t(:self_construal_item5)
    @self_construal_item6 = t(:self_construal_item6)
    @self_construal_item7 = t(:self_construal_item7)
    @self_construal_item8 = t(:self_construal_item8)
    @self_construal_item9 = t(:self_construal_item9)
    @self_construal_item10 = t(:self_construal_item10)
    @self_construal_item11 = t(:self_construal_item11)
    @self_construal_item12 = t(:self_construal_item12)
    @self_construal_item13 = t(:self_construal_item13)
    @self_construal_item14 = t(:self_construal_item14)
    @self_construal_item15 = t(:self_construal_item15)
    @self_construal_item16 = t(:self_construal_item16)
    @self_construal_item17 = t(:self_construal_item17)
    @self_construal_item18 = t(:self_construal_item18)         
    @self_construal=[[:self_construal_item1, @self_construal_item1],
                     [:self_construal_item2, @self_construal_item2],
                     [:self_construal_item3, @self_construal_item3],
                     [:self_construal_item4, @self_construal_item4],
                     [:self_construal_item5, @self_construal_item5],
                     [:self_construal_item6, @self_construal_item6],
                     [:self_construal_item7, @self_construal_item7],
                     [:self_construal_item8, @self_construal_item8],
                     [:self_construal_item9, @self_construal_item9],
                     [:self_construal_item10, @self_construal_item10],
                     [:self_construal_item11, @self_construal_item11],
                     [:self_construal_item12, @self_construal_item12],
                     [:self_construal_item13, @self_construal_item13],
                     [:self_construal_item14, @self_construal_item14],
                     [:self_construal_item15, @self_construal_item15],
                     [:self_construal_item16, @self_construal_item16],
                     [:self_construal_item17, @self_construal_item17],
                     [:self_construal_item18, @self_construal_item18]]

    @individualism_item1 = t(:individualism_item1)
    @individualism_item2 = t(:individualism_item2)
    @individualism_item3 = t(:individualism_item3)
    @individualism_item4 = t(:individualism_item4)
    @individualism_item5 = t(:individualism_item5)
    @individualism_item6 = t(:individualism_item6)
    @individualism_item7 = t(:individualism_item7)
    @individualism_item8 = t(:individualism_item8)
    @individualism_item9 = t(:individualism_item9)
    @individualism_item10 = t(:individualism_item10)
    @individualism_item11 = t(:individualism_item11)
    @individualism_item12 = t(:individualism_item12)
    @individualism_item13 = t(:individualism_item13)
    @individualism_item14 = t(:individualism_item14)
    @individualism_item15 = t(:individualism_item15)
    @individualism_item16 = t(:individualism_item16)
    @individualism_item17 = t(:individualism_item17)
    @individualism_item18 = t(:individualism_item18)
    @individualism_item19 = t(:individualism_item19)
    @individualism=[[:individualism_item1, @individualism_item1],
                    [:individualism_item2, @individualism_item2],
                    [:individualism_item3, @individualism_item3],
                    [:individualism_item4, @individualism_item4],
                    [:individualism_item5, @individualism_item5],
                    [:individualism_item6, @individualism_item6],
                    [:individualism_item7, @individualism_item7],
                    [:individualism_item8, @individualism_item8],
                    [:individualism_item9, @individualism_item9],
                    [:individualism_item10, @individualism_item10],
                    [:individualism_item11, @individualism_item11],
                    [:individualism_item12, @individualism_item12],
                    [:individualism_item13, @individualism_item13],
                    [:individualism_item14, @individualism_item14],
                    [:individualism_item15, @individualism_item15],
                    [:individualism_item16, @individualism_item16],
                    [:individualism_item17, @individualism_item17],
                    [:individualism_item18, @individualism_item18],
                    [:individualism_item19, @individualism_item19]]

    @how_often1 = t(:how_often1)
    @how_often2 = t(:how_often2)
    @how_often3 = t(:how_often3)
    @how_often4 = t(:how_often4)
    @how_often=[ @how_often1, 
                 @how_often2, 
                 @how_often3, 
                 @how_often4]

    @depression_item1 = t(:depression_item1)
    @depression_item2 = t(:depression_item2)
    @depression_item3 = t(:depression_item3)
    @depression_item4 = t(:depression_item4)
    @depression_item5 = t(:depression_item5)
    @depression_item6 = t(:depression_item6)
    @depression_item7 = t(:depression_item7)
    @depression_item8 = t(:depression_item8)
    @depression_item9 = t(:depression_item9)
    @depression_item10 = t(:depression_item10)
    @depression_item11 = t(:depression_item11)
    @depression_item12 = t(:depression_item12)
    @depression_item13 = t(:depression_item13)
    @depression_item14 = t(:depression_item14)
    @depression_item15 = t(:depression_item15)
    @depression_item16 = t(:depression_item16)
    @depression_item17 = t(:depression_item17)
    @depression_item18 = t(:depression_item18)
    @depression_item19 = t(:depression_item19)
    @depression_item20 = t(:depression_item20)
    @depression=[[:depression_item1, @depression_item1],
                 [:depression_item2, @depression_item2],
                 [:depression_item3, @depression_item3],
                 [:depression_item4, @depression_item4],
                 [:depression_item5, @depression_item5],
                 [:depression_item6, @depression_item6],
                 [:depression_item7, @depression_item7],
                 [:depression_item8, @depression_item8],
                 [:depression_item9, @depression_item9],
                 [:depression_item10, @depression_item10],
                 [:depression_item11, @depression_item11],
                 [:depression_item12, @depression_item12],
                 [:depression_item13, @depression_item13],
                 [:depression_item14, @depression_item14],
                 [:depression_item15, @depression_item15],
                 [:depression_item16, @depression_item16],
                 [:depression_item17, @depression_item17],
                 [:depression_item18, @depression_item18],
                 [:depression_item19, @depression_item19],
                 [:depression_item20, @depression_item20]]

    @suicide_a1 = t(:suicide_a1)
    @suicide_a2 = t(:suicide_a2)
    @suicide_a3 = t(:suicide_a3)
    @suicide_a4 = t(:suicide_a4)
    @suicide_a5 = t(:suicide_a5)
    @suicide_a6 = t(:suicide_a6)
    @suicide_a7 = t(:suicide_a7)
    @suicide_a=[ @suicide_a1, 
                 @suicide_a2, 
                 @suicide_a3, 
                 @suicide_a4, 
                 @suicide_a5, 
                 @suicide_a6, 
                 @suicide_a7]

    @suicide_b1 = t(:suicide_b1)
    @suicide_b2 = t(:suicide_b2)
    @suicide_b3 = t(:suicide_b3)
    @suicide_b4 = t(:suicide_b4)
    @suicide_b5 = t(:suicide_b5)
    @suicide_b6 = t(:suicide_b6)
    @suicide_b7 = t(:suicide_b7)
    @suicide_b=[ @suicide_b1, 
                 @suicide_b2, 
                 @suicide_b3, 
                 @suicide_b4, 
                 @suicide_b5, 
                 @suicide_b6, 
                 @suicide_b7]

    @times1 = t(:times1)
    @times2 = t(:times2)
    @times3 = t(:times3)
    @times4 = t(:times4)
    @times5 = t(:times5)
    @times=[ @times1, 
             @times2, 
             @times3, 
             @times4, 
             @times5]

    @childhood1 = t(:childhood1)
    @childhood2 = t(:childhood2)
    @childhood3 = t(:childhood3)
    @childhood=[ @childhood1, 
                 @childhood2, 
                 @childhood3]

    @how_true1 = t(:how_true1)
    @how_true2 = t(:how_true2)
    @how_true3 = t(:how_true3)
    @how_true4 = t(:how_true4)
    @how_true=[ @how_true1, 
                @how_true2, 
                @how_true3, 
                @how_true4]

    @religious_a_item1 = t(:religious_a_item1)
    @religious_a_item2 = t(:religious_a_item2)
    @religious_a_item3 = t(:religious_a_item3)
    @religious_a=[[:religious_a_item1, @religious_a_item1],
                  [:religious_a_item2, @religious_a_item2],
                  [:religious_a_item3, @religious_a_item3]]

    @rating=[" 1","2 ","3 ","4 ","5 ","6 ","7 "]

    @how_religious1 = t(:how_religious1)
    @how_religious2 = t(:how_religious2)
    @how_religious = [ @how_religious1,
                       " 1",
                       " 2",
                       " 3",
                       " 4",
                       " 5",
                       " 6",
                       " 7",
                       " 8",
                       " 9",
                       @how_religious2]

    @demographics_c1 = t(:demographics_c1)
    @demographics_c2 = t(:demographics_c2)
    @demographics_c3 = t(:demographics_c3)
    @demographics_c=[ @demographics_c1, 
                      @demographics_c2, 
                      @demographics_c3]

    @demographics_d1 = t(:demographics_d1)
    @demographics_d2 = t(:demographics_d2)
    @demographics_d3 = t(:demographics_d3)
    @demographics_d4 = t(:demographics_d4)
    @demographics_d5 = t(:demographics_d5)
    @demographics_d6 = t(:demographics_d6)
    @demographics_d=[ @demographics_d1, 
                      @demographics_d2, 
                      @demographics_d3, 
                      @demographics_d4, 
                      @demographics_d5, 
                      @demographics_d6]

    @live_with1 = t(:live_with1)
    @live_with2 = t(:live_with2)
    @live_with3 = t(:live_with3)
    @live_with4 = t(:live_with4)
    @live_with5 = t(:live_with5)
    @live_with6 = t(:live_with6)
    @live_with7 = t(:live_with7)
    @live_with8 = t(:live_with8)
    @live_with9 = t(:live_with9)    
    @live_with = [[:live_with1, @live_with1], 
                  [:live_with2, @live_with2], 
                  [:live_with3, @live_with3], 
                  [:live_with4, @live_with4], 
                  [:live_with5, @live_with5], 
                  [:live_with6, @live_with6], 
                  [:live_with7, @live_with7], 
                  [:live_with8, @live_with8], 
                  [:live_with9, @live_with9]]

    @grad1 = t(:grad1)
    @grad2 = t(:grad2)
    @grad3 = t(:grad3)
    @grad4 = t(:grad4)
    @grad5 = t(:grad5)
    @grad6 = t(:grad6)
    @grad =[ @grad1, 
             @grad2, 
             @grad3, 
             @grad4, 
             @grad5, 
             @grad6]

    @employment1 = t(:employment1)
    @employment2 = t(:employment2)
    @employment3 = t(:employment3)
    @employment4 = t(:employment4)
    @employment5 = t(:employment5)
    @employment6 = t(:employment6)
    @employment7 = t(:employment7)
    @employment8 = t(:employment8)
    @employment9 = t(:employment9)
    @employment=[ @employment1, 
                  @employment2, 
                  @employment3, 
                  @employment4, 
                  @employment5, 
                  @employment6, 
                  @employment7, 
                  @employment8, 
                  @employment9]

    @occupation1 = t(:occupation1)
    @occupation2 = t(:occupation2)
    @occupation3 = t(:occupation3)
    @occupation4 = t(:occupation4)
    @occupation5 = t(:occupation5)
    @occupation6 = t(:occupation6)
    @occupation7 = t(:occupation7)
    @occupation8 = t(:occupation8)
    @occupation9 = t(:occupation9)
    @occupation10 = t(:occupation10)
    @occupation11 = t(:occupation11)
    @occupation12 = t(:occupation12)
    @occupation13 = t(:occupation13)
    @occupation=[ @occupation1,
                  @occupation2,
                  @occupation3,
                  @occupation4,
                  @occupation5,
                  @occupation6,
                  @occupation7,
                  @occupation8,
                  @occupation9,
                  @occupation10,
                  @occupation11,
                  @occupation12,
                  @occupation13]

    @income_level1 = t(:income_level1)
    @income_level2 = t(:income_level2)
    @income_level3 = t(:income_level3)
    @income_level4 = t(:income_level4)
    @income_level5 = t(:income_level5)
    @income_level=[ @income_level1, 
                    @income_level2, 
                    @income_level3, 
                    @income_level4, 
                    @income_level5]

    @income_rate1 = t(:income_rate1)
    @income_rate2 = t(:income_rate2)
    @income_rate3 = t(:income_rate3)
    @income_rate4 = t(:income_rate4)
    @income_rate5 = t(:income_rate5)
    @income_rate=[ @income_rate1, 
                   @income_rate2, 
                   @income_rate3, 
                   @income_rate4, 
                   @income_rate5]

    @income1 = t(:income1)
    @income2 = t(:income2)
    @income3 = t(:income3)
    @income4 = t(:income4)
    @income5 = t(:income5)
    @income6 = t(:income6)
    @income7 = t(:income7)
    @income8 = t(:income8)
    @income9 = t(:income9)
    @income=[ @income1, 
              @income2, 
              @income3, 
              @income4, 
              @income5, 
              @income6, 
              @income7, 
              @income8, 
              @income9]

    @communal_option=[[:com1, "Family Members"],
      [:com2, "Spouse/Partner"],
      [:com3, "Friends"],
      [:com4, "Other"]]

    @communal_check=["Have you spoken to these people about this 
    problem? ","Did they listen to you about your problem? ", "Did they perceive your problem/stress as if it is their own (even if they may not have anything to do with the problem itself)? ", " Did they try to solve your problem/stress for you (resorting mainly to their own resources  and/or mobilizing your resources themselves)? ", " Did they share the responsibility of resolving this problem with you? "," Did they care about your problem? " ," Did they think that it is mainly your responsibility to solve your own problem? "]


  end

end
