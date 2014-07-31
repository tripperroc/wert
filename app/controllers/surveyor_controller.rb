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
    @mf = ["Male", "Female"]
   @yn = ["Yes", "No"]
   @times=[" All of the time","Most of the time ","Some of the time ","A little of the time "," None of the time"]

@childhood=[" In childhood (age between 0-17) "," In adulthood (after age 18) "," Both in childhood and adulthood"]

   @employed = ["Yes, I am self-employed", "Yes, employed by others", "No"]
   @happy = ["Very Happy", "Rather Happy", "Not very happy", "Not at all happy"]
   

   @martial = ["Never married & never lived with someone in a matial-like relationship",
              "Currently married & living together", 
             "Separated",
              "Divorced",
              "Divorced and Remarried",
              "Widowed",
              "I am single but in a relationship (not living together)",
              "I am single, but in a relationship (living together)"]

@parents = ["Only mother", "Only father", "both", "neither"]
@parents_partner = ["Only mother", "Only father", "both", "neither" , "I am not married"]

@life_satisfaction = [[:life_satisfaction_ideal, "In most ways my life is close to my ideal"],
     [:life_satisfaction_conditions, "The conditions of my life are excellent"],
       [:life_satisfaction_satisfied, "I am satisfied with my life."],
       [:life_satisfaction_things, "So far I have gotten the important things I want in life"],
       [:life_satisfaction_change, "If I could live my life over, I would change almost nothing"]]

@aggreement_strong = [ "Strongly disagree",
       "Disagree",
       "Neither agree nor disagree",
       "Agree",
       "Strongly Agree"]

@happiness = [ "Less Happy",
       " ",
       " ",
       " ",
       " ",
       " ",
       "Very Happy"]

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

@aggreement = [ "Completely disagree",
       "Disagree",
       "Neither agree nor disagree",
       "Agree",
       "Completely Agree"]

@bigFive = [[:bigFive_introverted, "I am an introverted person"],
     [:bigFive_trust, "Generally, I easily trust people"],
       [:bigFive_lazy, "I have a tendency to be lazy"],
       [:bigFive_cope, "I am easy going, i can cope well with stress"],
       [:bigFive_art, "I have little interest in art"],
       [:bigFive_extraverted, "I am an extraverted and social person"],
      [:bigFive_flaws, "I have a tendency finding flaws in other people"],
       [:bigFive_tasks, "I complete tasks meticulously and completely"],
       [:bigFive_tense, "I am easy to tense up and worry"],
      [:bigFive_active, "I have an active and vivid imagination"]]

@communal1 =[[:communal1_row1, "When I share a problem with people who are in my immediate circle (my family, friends, loved ones) they think of this problem as our problem, not only my problem. "],
	        [:communal1_row2, "When I am faced with a problem, people who are in my immediate circle (my family, friends and loved ones) solve this problem for me (resorting mainly to their own resources  or mobilizing my resources themselves) "],
		[:communal1_row3, "When I am faced with a problem, people who are in my immediate circle (my family, friends and loved ones) share the responsibility to solve this problem with me."],
		[:communal1_row4, "When dealing with my problem, unless the requests and needs of people who are in my immediate circle (family, friends, loved ones) are met, that problem would not be considered resolved. "],
		[:communal1_row5,"When I am dealing with a problem, no one really cares about it. "],
		[:communal1_row6,"When I am faced with a problem, people who are in my immediate circle think that I am the responsible one in resolving this problem.  "]]


@communal2=[[:communal2_row1,"When people in my immediate circle come to me with a problem I think of it as my problem"],
		[:communal2_row2,"When people in my immediate circle come to me with a problem I solve it for them"],
		[:communal2_row3,"When people in my immediate circle come to me with a problem we share the responsibility and solve it together."],
		[:communal2_row4,"When dealing with the problem of anyone in my immediate circle, unless the requests and needs of all people concerned are met, that problem would not be considered resolved. "],
		[:communal2_row5,"When people in my immediate circle have a problem I won’t care about it a lot."],
		[:communal2_row6,"When people in my immediate circle have a problem I think that it is mainly their own responsibility to solve them."]
		]


@burden=[[:burden_row1,"The people in my life would be better off if I were gone."],
	[:burden_row2,"the people in my life would be happier without me"],
	[:burden_row3,"I think I am a burden on society
"],
	[:burden_row4,"I think my death would be a relief to the people in my life"],
	[:burden_row5,"I think the people in my life wish they could be rid of me"],
	[:burden_row6,"I think I make things worse for the people in my life"],
	[:burden_row7,"Other people care about me"]]

@belong=[[:belong_row1,"I often wonder if there is any place on earth where I really fit in"],
	 [:belong_row2,"I am just not sure if I fit in with my friends"],
	 [:belong_row3,"I would describe myself as a misfit in most social situations"],
	 [:belong_row4,"I generally feel that people accept me"],
	 [:belong_row5,"I feel like a piece of a jig-saw puzzle that doesn’t fit into the puzzle."],
	 [:belong_row6,"I would like to make a difference to people or things around me, but I don’t feel that what I have to offer is valued "],
	 [:belong_row7,"I feel like an outsider in most situations"],
	 [:belong_row8,"I am troubled by feeling like I have no place in this world "],
	 [:belong_row9,"I could disappear for days and it wouldn’t matter to my family"],
	 [:belong_row10,"In general, I don’t feel a part of the mainstream of society "],
	 [:belong_row11,"I feel like I observe life rather than participate in it"],
	 [:belong_row12,"If I died tomorrow, very few people would come to my funeral"],
	 [:belong_row13,"I feel like a square peg trying to fit into a round"] 
	]

@affected = [ "I did not experience such an event",
       "Not at all effected",
       "Not affected",
       "Neither affected nor not affected",
       "Affected",
       "Very much affected"]

@rahe =[[:rahe_row1,"1. Death of spouse"],
       [:rahe_row2,"2. Divorce"],
       [:rahe_row3,"3. Marital separation from mate"],
       [:rahe_row4,"4. Detention in jail or other institution"],
       [:rahe_row5,"5. Death of a close family member"],
       [:rahe_row6,"6. Major personal injury or illness "],
       [:rahe_row7,"7. Marriage"],
       [:rahe_row8,"8. Being fired at work"],
       [:rahe_row9,"9. Marital reconciliation with mate"],
       [:rahe_row10,"10. Retirement from work"],
       [:rahe_row11,"11. Major change in the health or behavior of a family member"],
       [:rahe_row12,"12. Pregnancy"],
       [:rahe_row13,"13. Sexual difficulties"],
       [:rahe_row14,"14. Gaining a new family member (i.e. birth, adoption, older adult moving in etc.)"],
       [:rahe_row15,"15. Major business readjustment "],
       [:rahe_row16,"16. Major change in financial state (i.e. a lot worse or better off than usual)"],
       [:rahe_row17,"17. Death of a close friend"],
       [:rahe_row18,"18. Changing to a different line of work "],
       [:rahe_row19,"19. Major change in the number of arguments w/spouse (i.e. either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)"],
       [:rahe_row20,"20. Taking on a mortgage (for home, business etc.)"],
       [:rahe_row21,"21. Foreclosure on a mortgage or loan"],
       [:rahe_row22,"22. Major change in responsibilities at work (i.e. promotion, demotion, etc.)"],
       [:rahe_row23,"23. Son or daughter leaving home (marriage, attending college, joined mil.)"],
       [:rahe_row24,"24. In-law troubles"],
       [:rahe_row25,"25. Outstanding personal achievement"],
       [:rahe_row26,"26. Spouse beginning or ceasing work outside the home"],
       [:rahe_row27,"27. Beginning or ceasing formal schooling"],
       [:rahe_row28,"28. Major change in living condition (new home,remodeling, deterioration of neighborhood or home etc.)"],
       [:rahe_row29,"29. Revision of personal habits (dress manners, associations, quitting smoking)"],
       [:rahe_row30,"30. Troubles with the boss"],
       [:rahe_row31,"31. Major changes in working hours or conditions"],
       [:rahe_row32,"32. Changes in residence"],
       [:rahe_row33,"33. Changing to a new school"],
       [:rahe_row34,"34. Major change in usual type and/or amount of recreation "],
       [:rahe_row35,"35. Major change in church activity (i.e. a lot more or less than usual)"],
       [:rahe_row36,"36. Major change in social activities (clubs, movies, visiting, etc)."],
       [:rahe_row37,"37. Taking on a loan (car, tv, freezer, etc)"],
       [:rahe_row38,"38. Major change in sleeping habits (a lot more or a lot less than usual)"],
       [:rahe_row39,"39. Major change in number of family get togethers"],
       [:rahe_row40,"40. Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)"],
       [:rahe_row41,"41. Vacation "],
       [:rahe_row42,"42. Major holidays"],
       [:rahe_row43,"43. Minor violations of the law (traffic tickets, jaywalking, disturbing the peace, etc)"],
       [:rahe_row44,"44. Problems in school"],
       [:rahe_row45,"45. Not being able to find work"],
       [:rahe_row46,"46. Problems in the relationship"],
       [:rahe_row47,"47. Psychological distress"],
       [:rahe_row48,"48. Country-wide political and social problems"],
       [:rahe_row49,"49. Did you experience a serious accident, fire, natural catastrophe such as an earthquake, physical harassement (beating, shaking), maltreatment (insult), or other serious, traumatic events that affect your life?"],
       [:rahe_row50,"50. Suicidal attempt of a close person"],
       [:rahe_row51,"51. Suicide of a close person"],
       [:rahe_row52,"52. Being exposed to physical abuse"],
       [:rahe_row53,"53. Being exposed to psychological abuse  such as insult"],
       [:rahe_row54,"54. Being exposed to sexual abuse such as molestation, abuse, rape"],
       [:rahe_row55,"55. Other"]
       ]

@done = [ "I have never done this",
       "I have rarely done this",
       "I have sometimes done this",
       "I have mostly done this",
       "I have always done this"]

@cope_c=[[:cope_c_row1,"I've been turning to work or other activities to take my mind off things. "],
[:cope_c_row2," I've been concentrating my efforts on doing something about the situation I'm in."],
[:cope_c_row3," I've been saying to myself this isn't real."],
[:cope_c_row4,"I've been using alcohol or other drugs to make myself feel better. "],
[:cope_c_row5," I've been getting emotional support from others."],
[:cope_c_row6,"I've been giving up trying to deal with it."],
[:cope_c_row7,"I've been taking action to try to make the situation better."],
[:cope_c_row8," I've been refusing to believe that it has happened. "],
[:cope_c_row9,"I've been saying things to let my unpleasant feelings escape."],
[:cope_c_row10," I’ve been getting help and advice from other people. "],
[:cope_c_row11,"I've been using alcohol or other drugs to help me get through it. "],
[:cope_c_row12,"I've been trying to see it in a different light, to make it seem more positive. "],
[:cope_c_row13," I’ve been criticizing myself. "],
[:cope_c_row14,"I've been trying to come up with a strategy about what to do."],
[:cope_c_row15,"I've been getting comfort and understanding from someone. "],
[:cope_c_row16,"I've been giving up the attempt to cope. "],
[:cope_c_row17,"I've been looking for something good in what is happening. "],
[:cope_c_row18," I've been making jokes about it."],
[:cope_c_row19,"I've been doing something to think about it less, such as going to movies, watching TV, reading, daydreaming, sleeping, or shopping."],
[:cope_c_row20,"I've been accepting the reality of the fact that it has happened. "],
[:cope_c_row21," I've been expressing my negative feelings. "],
[:cope_c_row22,"I've been trying to find comfort in my religion or spiritual beliefs. "],
[:cope_c_row23," I’ve been trying to get advice or help from other people about what to do. "],
[:cope_c_row24,"I've been learning to live with it."],
[:cope_c_row25,"I've been thinking hard about what steps to take. "],
[:cope_c_row26," I’ve been blaming myself for things that happened. "],
[:cope_c_row27,"I've been praying or meditating. "],
[:cope_c_row28,"I've been making fun of the situation"],
[:cope_c_row29,"I was not alone while dealing with this problem."],
[:cope_c_row30,"Even if it meant that I had to make sacrifices, I tried support other people who I have been facing the problem with."],
[:cope_c_row31,"While deciding what to do with my problem, I took other people’s feelings into consideration. "],
[:cope_c_row32,"While resolving this problem, I tried to meet everyone ‘s needs who is affected or a part of this problem."],
[:cope_c_row33,"In order to resolve this problem, no matter how difficult it is, I tried to meet everyone’s requests"]]


@cope_problems=[" Very different (normally I never cope with this stress in this manner)","Somewhat different ","Neither different nor the same"," Not different", "Not at all differently (I normally cope with stress in this manner)"]


@self_construal=[[:self_construal_row1," I feel independent of my family"],
[:self_construal_row2,"I usually try to agree with the wishes of my family "],
[:self_construal_row3,"I do not have to think the way my family does "],
[:self_construal_row4,"Geleceğe yönelik planlarım için ailemden izin alırım. 
I receive approval from my family for my future plans "],
[:self_construal_row5," I avoid making decisions with which my family would not agree"],
[:self_construal_row6,"On personal issues, I accept the decisions of my family "],
[:self_construal_row7," I would not be close to someone to whom my family does not agree"],
[:self_construal_row8," Independent of my family, I cannot make decisions easily"],
[:self_construal_row9,"I can easily change my decisions according to the wishes of my family  "],
[:self_construal_row10,"I prefer to keep a certain distance in my relationship with my family "],
[:self_construal_row11," During hard times, I would like to know that my family will be with me"],
[:self_construal_row12,"The time that I spend with my family is not important for me "],
[:self_construal_row13,"Feeling very close to my family is a good thing "],
[:self_construal_row14,"My family is my top priority "],
[:self_construal_row15," I don’t enjoy spending much time with my family"],
[:self_construal_row16,"I feel myself closely attached to my family. "],
[:self_construal_row17," My relationship with my family makes me feel peaceful and secure"],
[:self_construal_row18," I am very close to my family"]
]

@individualism=[[:individualism_row1,"My happiness depends on people who are around me.  "],
[:individualism_row2,"I usually sacrifice my self-interest for the benefit of my group "],
[:individualism_row3,"It is important to me to maintain harmony within my group.  "],
[:individualism_row4," I like sharing little things with my neighbors."],
[:individualism_row5," The wellbeing of my coworkers is important to me. (If they do not have coworkers, what if…)"],
[:individualism_row6," If a coworker gets a prize, I would feel proud (If they do not have coworkers, what if…)"],
[:individualism_row7," Being a unique individual is important to me."],
[:individualism_row8," I often do “my own thing”."],
[:individualism_row9," I’d rather depend on myself than on others."],
[:individualism_row10," My personal identity, independent from others is very important to me."],
[:individualism_row11,"My individual identity is very important to me. "],
[:individualism_row12,"I enjoy being unique and different from others. "],
[:individualism_row13," It is important to consult close friends and get their ideas before making a decision. "],
[:individualism_row14,"If a relative were in financial difficulty, I would help within my means. "],
[:individualism_row15," Individuals should live their lives independently."],
[:individualism_row16," I feel good about myself when I collaborate with others "],
[:individualism_row17,"I prefer to communicate explicitly and directly with others. "],
[:individualism_row18,"For me, pleasure is spending time with others. "],
[:individualism_row19," If I am successful, it is due to my own talents."]
]

@how_often=[" Rarely or none of the time 
(less than 1 day)"," Some or a little of the time (1-2 days)","Occasionally or a moderate amount of time 
(3-4 days) "," Most or all of the time (5-7 days)"]

@depression=[[:depression_row1," I was bothered by things that usually don’t bother me."],
[:depression_row2,"  I did not feel like eating; my appetite was poor."],
[:depression_row3," I felt that I could not shake off the blues even with help from my family or friends "],
[:depression_row4,"I felt I was just as good as other people.  "],
[:depression_row5,"I had trouble keeping my mind on what I was doing. "],
[:depression_row6,"I felt depressed. "],
[:depression_row7,"I felt that everything I did was an effort.  "],
[:depression_row8,"I felt hopeful about the future.  "],
[:depression_row9,"I thought my life had been a failure.  "],
[:depression_row10,"I felt fearful  "],
[:depression_row11," My sleep was restless. "],
[:depression_row12,"I was happy "],
[:depression_row13," I talked less than usual. "],
[:depression_row14," I felt lonely"],
[:depression_row15,"People were unfriendly.  "],
[:depression_row16," I enjoyed life."],
[:depression_row17," I had crying spells. "],
[:depression_row18,"I felt sad. "],
[:depression_row19,"I felt that people dislike me  "],
[:depression_row20," Things did not go well"]
]

@suicide_a=[" Never "," It was just a brief passing thought "," I have briefly thought to kill myself, but I was not serious about it "," I have had a plan at least once to kill myself but did not try to do it ","  I have had a plan at least once to kill myself and really wanted to die"," I have attempted to kill myself, but did not want to die"," I have attempted to kill myself, and really hoped to die"]

@how_true=[" Definitely not true","Tends not to be true ","Unsure Tends to be true "," Definitely true of me"]

@religious_a=[[:religious_a_row1," In my life, I experience the presence of the Divine (i.e., God)"],
[:religious_a_row2," My religious beliefs are what really lie behind my whole approach to life"],
[:religious_a_row3," I try hard to carry my religion over into all other dealings in life"],
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
