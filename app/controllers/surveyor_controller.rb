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

      @sex = t(:sex)
      @age = t(:age)
      @bigFive_instruction = t(:bigFive_instruction)
      @cohen_instruction = t(:cohen_instruction)
      @martialq = t(:martialq)
      @num_siblings = t(:num_siblings)
      # def num_sibling
      # end
      @num_children = t(:num_children)
      @num_children_intouch = t(:num_children_intouch)
      @parentsq = t(:parentsq)
      @parents_touch = t(:parents_touch)
      @parents_partnerq = t(:parents_partnerq)
      @parents_partner_touch = t(:parents_partner_touch)
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

      answers

  #    redirect_to :controller => "estimate", :action => "index"
  end

  def update
   params.require(:response).permit! 
   @response = Response.find(params[:id])
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
    #@mf = ["Male", "Female"]
    @mf = [@mf1, @mf2]
   
    @yn1 = t(:yn1)
    @yn2 = t(:yn2) 
    #@yn = ["Yes", "No"]
    @yn = [@yn1, @yn2]

    @times=[" All of the time","Most of the time ","Some of the time ","A little of the time "," None of the time"]

    @childhood=[" In childhood (age between 0-17) "," In adulthood (after age 18) "," Both in childhood and adulthood"]
    
    @employed1 = t(:employed1)
    @employed2 = t(:employed2) 
    @employed3 = t(:employed3)
    @employed4 = t(:employed4) 
    #@employed = ["Yes, I am self-employed", "Yes, employed by others", "No"]
    @employed = [@employed1, @employed2, @employed3, @employed4]

    @happy1 = t(:happy1)
    @happy2 = t(:happy2)
    @happy3 = t(:happy3)
    @happy4 = t(:happy4)
    #@happy = ["Very Happy", "Rather Happy", "Not very happy", "Not at all happy"]
    @happy = [@happy1, @happy2, @happy3, @happy4]
   
    @live_with = [[:live_with1, " Mother and/or father"], 
                  [:live_with2, " Siblings"], 
                  [:live_with3, " Grandparents"], 
                  [:live_with4, " Other relatives"], 
                  [:live_with5, " Own children"], 
                  [:live_with6, " Husband or wife"], 
                  [:live_with7, " Significant other"], 
                  [:live_with8, " Friend/friends"], 
                  [:live_with9, " I live by myself"]]

    @family=[[:family1, " Mother and/or father "],
    	[:family2, " Wife or husband"],
    	[:family3, " In-law's family"],
    	[:family4, " Siblings "],
    	[:family5, " Children "],
    	[:family6, "Other family members like cousins, aunts, uncles etc. "]]

    @marital1 = t(:marital1)
    @marital2 = t(:marital2)
    @marital3 = t(:marital3) 
    @marital4 = t(:marital4) 
    @marital5 = t(:marital5) 
    @marital6 = t(:marital6) 
    @marital7 = t(:marital7) 
    @marital8 = t(:marital8) 
     # @martial = ["Never married & never lived with someone in a matial-like relationship",
     #            "Currently married & living together", 
     #           "Separated",
     #            "Divorced",
     #            "Divorced and Remarried",
     #            "Widowed",
     #            "I am single but in a relationship (not living together)",
     #            "I am single, but in a relationship (living together)"]
    @martial = [@marital1, @marital2, @marital3, @marital4, @marital5, @marital6, @marital7, @marital8]

    @parents1 = t(:parents1)
    @parents2 = t(:parents2)
    @parents3 = t(:parents3)
    @parents4 = t(:parents4)
    # @parents = ["Only mother", "Only father", "both", "neither"]
    @parents = [@parents1, @parents2, @parents3, @parents4]

    @parents_partner1 = t(:parents_partner1)
    @parents_partner2 = t(:parents_partner2)
    @parents_partner3 = t(:parents_partner3)
    @parents_partner4 = t(:parents_partner4)
    @parents_partner5 = t(:parents_partner5)
    #@parents_partner = ["Only mother", "Only father", "both", "neither" , "I am not married"]
    @parents_partner = [@parents_partner1, @parents_partner2, @parents_partner3, @parents_partner4, @parents_partner5]

    @life_satisfaction_ideal = t(:life_satisfaction_ideal)
    @life_satisfaction_conditions = t(:life_satisfaction_conditions)
    @life_satisfaction_satisfied = t(:life_satisfaction_satisfied)
    @life_satisfaction_things = t(:life_satisfaction_things)
    @life_satisfaction_change = t(:life_satisfaction_change)
    # @life_satisfaction = [[:life_satisfaction_ideal, "In most ways my life is close to my ideal"],
    #      [:life_satisfaction_conditions, "The conditions of my life are excellent"],
    #        [:life_satisfaction_satisfied, "I am satisfied with my life."],
    #        [:life_satisfaction_things, "So far I have gotten the important things I want in life"],
    #        [:life_satisfaction_change, "If I could live my life over, I would change almost nothing"]]
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
    # @aggreement_strong = [ "Strongly disagree",
    #        "Disagree",
    #        "Neither agree nor disagree",
    #        "Agree",
    #        "Strongly Agree"]
    @aggreement_strong = [ @aggreement_strong1, @aggreement_strong2, @aggreement_strong3, @aggreement_strong4, @aggreement_strong5]

    @happiness = [ "1 - Less Happy",
           "2",
           "3",
           "4",
           "5",
           "6",
           "7 - Very Happy"]

    @rating=[" 1","2 ","3 ","4 ","5 ","6 ","7 "]

    @how_religious = [ "0 Not religious at all",
           " 1",
           " 2",
           " 3",
           " 4",
           " 5",
           " 6",
           " 7",
           " 8",
           " 9",
           "10 Very religious"]

    @happiness_rating =[[:happiness_rating, "Compared with most of my peers, I consider myself"]]

    @aggreement1 = t(:aggreement1)
    @aggreement2 = t(:aggreement2)
    @aggreement3 = t(:aggreement3)
    @aggreement4 = t(:aggreement4)
    @aggreement5 = t(:aggreement5)

    # @aggreement = [ "Completely disagree",
    #        "Disagree",
    #        "Neither agree nor disagree",
    #        "Agree",
    #        "Completely Agree"]
    @aggreement = [@aggreement1, @aggreement2, @aggreement3, @aggreement4, @aggreement5]

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

    # @bigFive = [[:bigFive_introverted, "I am an introverted person"],
    #        [:bigFive_trust, "Generally, I easily trust people"],
    #        [:bigFive_lazy, "I have a tendency to be lazy"],
    #        [:bigFive_cope, "I am easy going, i can cope well with stress"],
    #        [:bigFive_art, "I have little interest in art"],
    #        [:bigFive_extraverted, "I am an extraverted and social person"],
    #        [:bigFive_flaws, "I have a tendency finding flaws in other people"],
    #        [:bigFive_tasks, "I complete tasks meticulously and completely"],
    #        [:bigFive_tense, "I am easy to tense up and worry"],
    #        [:bigFive_active, "I have an active and vivid imagination"]]
    #@bigFive = [@bigFive_introverted, @bigFive_trust, @bigFive_lazy, @bigFive_cope, @bigFive_art, @bigFive_extraverted, @bigFive_flaws, @bigFive_tasks, @bigFive_tense, @bigFive_active] 
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


    @communal1 =[[:communal1_item1, "When I share a problem with people who are in my immediate circle (my family, friends, loved ones) they think of this problem as our problem, not only my problem. "],
    	        [:communal1_item2, "When I am faced with a problem, people who are in my immediate circle (my family, friends and loved ones) solve this problem for me (resorting mainly to their own resources  or mobilizing my resources themselves) "],
    		[:communal1_item3, "When I am faced with a problem, people who are in my immediate circle (my family, friends and loved ones) share the responsibility to solve this problem with me."],
    		[:communal1_item4, "When dealing with my problem, unless the requests and needs of people who are in my immediate circle (family, friends, loved ones) are met, that problem would not be considered resolved. "],
    		[:communal1_item5,"When I am dealing with a problem, no one really cares about it. "],
    		[:communal1_item6,"When I am faced with a problem, people who are in my immediate circle think that I am the responsible one in resolving this problem.  "]]


    @communal2=[[:communal2_item1,"When people in my immediate circle come to me with a problem I think of it as my problem"],
    		[:communal2_item2,"When people in my immediate circle come to me with a problem I solve it for them"],
    		[:communal2_item3,"When people in my immediate circle come to me with a problem we share the responsibility and solve it together."],
    		[:communal2_item4,"When dealing with the problem of anyone in my immediate circle, unless the requests and needs of all people concerned are met, that problem would not be considered resolved. "],
    		[:communal2_item5,"When people in my immediate circle have a problem I won’t care about it a lot."],
    		[:communal2_item6,"When people in my immediate circle have a problem I think that it is mainly their own responsibility to solve them."]
    		]


    @burden=[[:burden_item1,"The people in my life would be better off if I were gone."],
    	[:burden_item2,"the people in my life would be happier without me"],
    	[:burden_item3,"I think I am a burden on society
    "],
    	[:burden_item4,"I think my death would be a relief to the people in my life"],
    	[:burden_item5,"I think the people in my life wish they could be rid of me"],
    	[:burden_item6,"I think I make things worse for the people in my life"],
    	[:burden_item7,"Other people care about me"]]

    @belong=[[:belong_item1,"I often wonder if there is any place on earth where I really fit in"],
    	 [:belong_item2,"I am just not sure if I fit in with my friends"],
    	 [:belong_item3,"I would describe myself as a misfit in most social situations"],
    	 [:belong_item4,"I generally feel that people accept me"],
    	 [:belong_item5,"I feel like a piece of a jig-saw puzzle that doesn’t fit into the puzzle."],
    	 [:belong_item6,"I would like to make a difference to people or things around me, but I don’t feel that what I have to offer is valued "],
    	 [:belong_item7,"I feel like an outsider in most situations"],
    	 [:belong_item8,"I am troubled by feeling like I have no place in this world "],
    	 [:belong_item9,"I could disappear for days and it wouldn’t matter to my family"],
    	 [:belong_item10,"In general, I don’t feel a part of the mainstream of society "],
    	 [:belong_item11,"I feel like I observe life rather than participate in it"],
    	 [:belong_item12,"If I died tomorrow, very few people would come to my funeral"],
    	 [:belong_item13,"I feel like a square peg trying to fit into a round"] 
    	]

    @affected = [ "I did not experience such an event",
           "Not at all effected",
           "Not affected",
           "Neither affected nor not affected",
           "Affected",
           "Very much affected"]

    @rahe =[[:rahe_item1," Death of spouse"],
           [:rahe_item2," Divorce"],
           [:rahe_item3," Marital separation from mate"],
           [:rahe_item4," Detention in jail or other institution"],
           [:rahe_item5," Death of a close family member"],
           [:rahe_item6," Major personal injury or illness "],
           [:rahe_item7," Marriage"],
           [:rahe_item8," Being fired at work"],
           [:rahe_item9," Marital reconciliation with mate"],
           [:rahe_item10," Retirement from work"],
           [:rahe_item11," Major change in the health or behavior of a family member"],
           [:rahe_item12," Pregnancy"],
           [:rahe_item13," Sexual difficulties"],
           [:rahe_item14," Gaining a new family member (i.e. birth, adoption, older adult moving in etc.)"],
           [:rahe_item15," Major business readjustment "],
           [:rahe_item16," Major change in financial state (i.e. a lot worse or better off than usual)"],
           [:rahe_item17," Death of a close friend"],
           [:rahe_item18," Changing to a different line of work "],
           [:rahe_item19," Major change in the number of arguments w/spouse (i.e. either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)"],
           [:rahe_item20," Taking on a mortgage (for home, business etc.)"],
           [:rahe_item21," Foreclosure on a mortgage or loan"],
           [:rahe_item22," Major change in responsibilities at work (i.e. promotion, demotion, etc.)"],
           [:rahe_item23," Son or daughter leaving home (marriage, attending college, joined mil.)"],
           [:rahe_item24," In-law troubles"],
           [:rahe_item25," Outstanding personal achievement"],
           [:rahe_item26," Spouse beginning or ceasing work outside the home"],
           [:rahe_item27," Beginning or ceasing formal schooling"],
           [:rahe_item28," Major change in living condition (new home,remodeling, deterioration of neighborhood or home etc.)"],
           [:rahe_item29," Revision of personal habits (dress manners, associations, quitting smoking)"],
           [:rahe_item30," Troubles with the boss"],
           [:rahe_item31," Major changes in working hours or conditions"],
           [:rahe_item32," Changes in residence"],
           [:rahe_item33," Changing to a new school"],
           [:rahe_item34," Major change in usual type and/or amount of recreation "],
           [:rahe_item35," Major change in church activity (i.e. a lot more or less than usual)"],
           [:rahe_item36," Major change in social activities (clubs, movies, visiting, etc)."],
           [:rahe_item37," Taking on a loan (car, tv, freezer, etc)"],
           [:rahe_item38," Major change in sleeping habits (a lot more or a lot less than usual)"],
           [:rahe_item39," Major change in number of family get togethers"],
           [:rahe_item40," Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)"],
           [:rahe_item41," Vacation "],
           [:rahe_item42," Major holidays"],
           [:rahe_item43," Minor violations of the law (traffic tickets, jaywalking, disturbing the peace, etc)"],
           [:rahe_item44," Problems in school"],
           [:rahe_item45," Not being able to find work"],
           [:rahe_item46," Problems in the relationship"],
           [:rahe_item47," Psychological distress"],
           [:rahe_item48," Country-wide political and social problems"],
           [:rahe_item49," Did you experience a serious accident, fire, natural catastrophe such as an earthquake, physical harassement (beating, shaking), maltreatment (insult), or other serious, traumatic events that affect your life?"],
           [:rahe_item50," Suicidal attempt of a close person"],
           [:rahe_item51," Suicide of a close person"],
           [:rahe_item52," Being exposed to physical abuse"],
           [:rahe_item53," Being exposed to psychological abuse  such as insult"],
           [:rahe_item54," Being exposed to sexual abuse such as molestation, abuse, rape"],
           [:rahe_item55," Other"]
           ]

    @done = [ "I have never done this",
           "I have rarely done this",
           "I have sometimes done this",
           "I have mostly done this",
           "I have always done this"]

    @cope_c=[[:cope_c_item1,"I've been turning to work or other activities to take my mind off things. "],
    [:cope_c_item2," I've been concentrating my efforts on doing something about the situation I'm in."],
    [:cope_c_item3," I've been saying to myself this isn't real."],
    [:cope_c_item4,"I've been using alcohol or other drugs to make myself feel better. "],
    [:cope_c_item5," I've been getting emotional support from others."],
    [:cope_c_item6,"I've been giving up trying to deal with it."],
    [:cope_c_item7,"I've been taking action to try to make the situation better."],
    [:cope_c_item8," I've been refusing to believe that it has happened. "],
    [:cope_c_item9,"I've been saying things to let my unpleasant feelings escape."],
    [:cope_c_item10," I’ve been getting help and advice from other people. "],
    [:cope_c_item11,"I've been using alcohol or other drugs to help me get through it. "],
    [:cope_c_item12,"I've been trying to see it in a different light, to make it seem more positive. "],
    [:cope_c_item13," I’ve been criticizing myself. "],
    [:cope_c_item14,"I've been trying to come up with a strategy about what to do."],
    [:cope_c_item15,"I've been getting comfort and understanding from someone. "],
    [:cope_c_item16,"I've been giving up the attempt to cope. "],
    [:cope_c_item17,"I've been looking for something good in what is happening. "],
    [:cope_c_item18," I've been making jokes about it."],
    [:cope_c_item19,"I've been doing something to think about it less, such as going to movies, watching TV, reading, daydreaming, sleeping, or shopping."],
    [:cope_c_item20,"I've been accepting the reality of the fact that it has happened. "],
    [:cope_c_item21," I've been expressing my negative feelings. "],
    [:cope_c_item22,"I've been trying to find comfort in my religion or spiritual beliefs. "],
    [:cope_c_item23," I’ve been trying to get advice or help from other people about what to do. "],
    [:cope_c_item24,"I've been learning to live with it."],
    [:cope_c_item25,"I've been thinking hard about what steps to take. "],
    [:cope_c_item26," I’ve been blaming myself for things that happened. "],
    [:cope_c_item27,"I've been praying or meditating. "],
    [:cope_c_item28,"I've been making fun of the situation"],
    [:cope_c_item29,"I was not alone while dealing with this problem."],
    [:cope_c_item30,"Even if it meant that I had to make sacrifices, I tried support other people who I have been facing the problem with."],
    [:cope_c_item31,"While deciding what to do with my problem, I took other people’s feelings into consideration. "],
    [:cope_c_item32,"While resolving this problem, I tried to meet everyone ‘s needs who is affected or a part of this problem."],
    [:cope_c_item33,"In order to resolve this problem, no matter how difficult it is, I tried to meet everyone’s requests"]]


    @cope_problems=[" Very different (normally I never cope with this stress in this manner)","Somewhat different ","Neither different nor the same"," Not different", "Not at all differently (I normally cope with stress in this manner)"]


    @self_construal=[[:self_construal_item1," I feel independent of my family"],
    [:self_construal_item2,"I usually try to agree with the wishes of my family "],
    [:self_construal_item3,"I do not have to think the way my family does "],
    [:self_construal_item4,"Geleceğe yönelik planlarım için ailemden izin alırım. 
    I receive approval from my family for my future plans "],
    [:self_construal_item5," I avoid making decisions with which my family would not agree"],
    [:self_construal_item6,"On personal issues, I accept the decisions of my family "],
    [:self_construal_item7," I would not be close to someone to whom my family does not agree"],
    [:self_construal_item8," Independent of my family, I cannot make decisions easily"],
    [:self_construal_item9,"I can easily change my decisions according to the wishes of my family  "],
    [:self_construal_item10,"I prefer to keep a certain distance in my relationship with my family "],
    [:self_construal_item11," During hard times, I would like to know that my family will be with me"],
    [:self_construal_item12,"The time that I spend with my family is not important for me "],
    [:self_construal_item13,"Feeling very close to my family is a good thing "],
    [:self_construal_item14,"My family is my top priority "],
    [:self_construal_item15," I don’t enjoy spending much time with my family"],
    [:self_construal_item16,"I feel myself closely attached to my family. "],
    [:self_construal_item17," My relationship with my family makes me feel peaceful and secure"],
    [:self_construal_item18," I am very close to my family"]
    ]

    @individualism=[[:individualism_item1,"My happiness depends on people who are around me.  "],
    [:individualism_item2,"I usually sacrifice my self-interest for the benefit of my group "],
    [:individualism_item3,"It is important to me to maintain harmony within my group.  "],
    [:individualism_item4," I like sharing little things with my neighbors."],
    [:individualism_item5," The wellbeing of my coworkers is important to me. (If they do not have coworkers, what if…)"],
    [:individualism_item6," If a coworker gets a prize, I would feel proud (If they do not have coworkers, what if…)"],
    [:individualism_item7," Being a unique individual is important to me."],
    [:individualism_item8," I often do “my own thing”."],
    [:individualism_item9," I’d rather depend on myself than on others."],
    [:individualism_item10," My personal identity, independent from others is very important to me."],
    [:individualism_item11,"My individual identity is very important to me. "],
    [:individualism_item12,"I enjoy being unique and different from others. "],
    [:individualism_item13," It is important to consult close friends and get their ideas before making a decision. "],
    [:individualism_item14,"If a relative were in financial difficulty, I would help within my means. "],
    [:individualism_item15," Individuals should live their lives independently."],
    [:individualism_item16," I feel good about myself when I collaborate with others "],
    [:individualism_item17,"I prefer to communicate explicitly and directly with others. "],
    [:individualism_item18,"For me, pleasure is spending time with others. "],
    [:individualism_item19," If I am successful, it is due to my own talents."]
    ]

    @how_often=[" Rarely or none of the time 
    (less than 1 day)"," Some or a little of the time (1-2 days)","Occasionally or a moderate amount of time 
    (3-4 days) "," Most or all of the time (5-7 days)"]

    @communal_option=[[:com1, "Family Members"],
    	[:com2, "Spouse/Partner"],
    	[:com3, "Friends"],
    	[:com4, "Other"]]

    @communal_check=["Have you spoken to these people about this 
    problem? ","Did they listen to you about your problem? ", "Did they perceive your problem/stress as if it is their own (even if they may not have anything to do with the problem itself)? ", " Did they try to solve your problem/stress for you (resorting mainly to their own resources  and/or mobilizing your resources themselves)? ", " Did they share the responsibility of resolving this problem with you? "," Did they care about your problem? " ," Did they think that it is mainly your responsibility to solve your own problem? "]

    @depression=[[:depression_item1," I was bothered by things that usually don’t bother me."],
    [:depression_item2,"  I did not feel like eating; my appetite was poor."],
    [:depression_item3," I felt that I could not shake off the blues even with help from my family or friends "],
    [:depression_item4,"I felt I was just as good as other people.  "],
    [:depression_item5,"I had trouble keeping my mind on what I was doing. "],
    [:depression_item6,"I felt depressed. "],
    [:depression_item7,"I felt that everything I did was an effort.  "],
    [:depression_item8,"I felt hopeful about the future.  "],
    [:depression_item9,"I thought my life had been a failure.  "],
    [:depression_item10,"I felt fearful  "],
    [:depression_item11," My sleep was restless. "],
    [:depression_item12,"I was happy "],
    [:depression_item13," I talked less than usual. "],
    [:depression_item14," I felt lonely"],
    [:depression_item15,"People were unfriendly.  "],
    [:depression_item16," I enjoyed life."],
    [:depression_item17," I had crying spells. "],
    [:depression_item18,"I felt sad. "],
    [:depression_item19,"I felt that people dislike me  "],
    [:depression_item20," Things did not go well"]
    ]

    @suicide_a=[" Never "," It was just a brief passing thought "," I have briefly thought to kill myself, but I was not serious about it "," I have had a plan at least once to kill myself but did not try to do it ","  I have had a plan at least once to kill myself and really wanted to die"," I have attempted to kill myself, but did not want to die"," I have attempted to kill myself, and really hoped to die"]

    @how_true=[" Definitely not true","Tends not to be true ","Unsure Tends to be true "," Definitely true of me"]

    @religious_a=[[:religious_a_item1," In my life, I experience the presence of the Divine (i.e., God)"],
    [:religious_a_item2," My religious beliefs are what really lie behind my whole approach to life"],
    [:religious_a_item3," I try hard to carry my religion over into all other dealings in life"],
    ]

    @demographics_c=[" At the center","In a suburb "," In a town or village"]
    @demographics_d=["Big city center "," City"," Town"," Village","Abroad (town or villege) ","Abroad (city or big city) "]


    @grad =[" None (never gone to school or dropped out) ","Elemantary school "," Middle school","High school "," College degree"," Graduate school"]

    @employment=["Full-time employee (with insurance coverage) "," Part-time employee (without insurance coverage)"," Self-employer with more than 10 employee","Self-employer with less than 9 employee ","Unemployed  ","Retired ","Housewife ","Students "," Others"]


    @occupation=["Managers (examples: Administrative and Business Support Management Occupations) ","Professionals and Related Workers (examples: Science, education, engineering, legal and the like professionals) "," Clerks (administratin, accounting, consulting occupations and the like)","Service workers (examples: police, fire fight, security, hair dressing , medical assistance and the like) ","Sales workers (sales, store sales, door to door occupations and the like) ","Skilled agricultural, forestry and fishery workers ","Craft and related trade workers (textile, clothing, wood, furniture  and the like related trade occupations) ","Equipment workers (Textile, Clothing and Shoes, food processing and the like Related Machine Operating Occupations) "," Elementary workers (Construction and Mining, Transport, Production Related Elementary, Household Chores Occupations","Armed forces  ","Others "]

    @income_level=[" Very Good"," Good "," Fair","Poor "," Very Poor"]
    @income_rate=["  Lower income group","  Lower than middle income group","  Middle income group"," Higher than middle income group "," Upper income group "]
    @income=[" Less than $10,000 "," $10,000 - $19,999 "," $20,000 - $29,999  ","  $30,000 - $49,999 "," $50,000 - $74,999  "," $75,000 - $99,999  "," $100,000 - $149,999 "," $150,000 - $249,999 "," $250,000 or more  "]


end

end
