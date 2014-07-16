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

   @gender = ["Male",
              "Female", 
             "Transgender, male-to-female",
              "Transgender, female-to-male",
              "Other"]

    @ethnicity = [[:namerican, "American Indian or Alaska Native"], 
                  [:asian, "Asian"], 
                  [:aamerican, "Black or African American"],
                  [:pacific, "Native Hawaiian or Other Pacific Islander"],
                  [:eamerican, "White"]]

    @marital_status = ["Married", 
                       "Living with someone as if married", 
                       "Widowed", 
                       "Divorced", 
                       "Separated", 
                       "Never married"]

    @employment = [[:work_more_than_35,"Working full time, that is, 35 hours or more per week"],
                  [:work_less_than_35,"Working part time, that is, less than 35 hours per week"],
                  [:work_yes_ill, "Have a job or business, but not at work because of temporary illness or injury"],
                  [:work_yes_vacation,"Have a job or business, but on paid vacation"],
                  [:work_yes_absent,"Have a job or business, but absent from work without pay"],
                  [:unemployed_looking,"Unemployed or laid off and looking for work"],
                  [:unemployed_not_looking,"Unemployed or laid off and not looking for work"],
                  [:unemployed_disabled,"Unemployed and permanently disabled"],
                  [:retired,"Retired"],
                  [:school_fulltime,"In school, full time"],
                  [:school_parttime,"In school, part time"],
                  [:school_break,"Currently on summer break/holiday from school"],
                  [:homemaker,"Full-time homemaker"],
                  [:work_else,"Something else"]]
 
    @schooling = ["No formal schooling",
                  "Completed grade K, 1 or 2",
                  "Completed grade 3 or 4",
                  "Completed grade 5 or 6",
                  "Completed grade 7",
                  "Completed grade 8",
                  "Some high school (grades 9-11)",
                  "Completed high school",
                  "Graduate equivalency degree (GED)",
                  "Some college (no degree)",
                  "Completed associate or other technical 2 year degree",
                  "Completed college (Bachelor’s degree)",
                  "Some graduate or professional studies (completed bachelor’s degree but not graduate degree)",
                  "Completed Master’s degree or equivalent or higher graduate degree"]
    @income = ["$0 (no personal income)",
             "$1 to $4,999",
             "$5,000 to $7,999",
             "$8,000 to $9,999",
           "$10,000 to $12,999",
             "$13,000 to $14,999",
             "$15,000 to $19,999",
             "$20,000 to $24,999",
              "$25,000 to $29,999",
             "$30,000 to $34,999",
            "$35,000 to $39,999",
            "$40,000 to $49,999",
            "$50,000 to $59,999",
             "$60,000 to $69,999",
              "$70,000 to $79,999",
           "$80,000 to $89,999",
             "$90,000 to $99,999",
             "$100,000 or more"]
     @healthcare = ["No place",
                    "Doctor chosen by me",
                    "Doctor assigned by HMO/health care plan", 
                    "Hospital outpatient department", 
                    "Community clinic or health center",
                    "College/university health center", 
                    "Hospital emergency room",
                    "Some other place most often", 
                    "Don’t go to one place most often/go to more than one place"]
    @yesno = ["Yes", "No"]
    @quality = ["Excellent", "Very good", "Good", "Fair", "Poor"]
    @yearly = ["Every day",
      "Nearly every day",
       "3 to 4 times a week",
       "2 times a week",
       "Once a week",
       "2 to 3 times a month",
       "Once a month",
       "7 to 11 times in the last year",
       "3 to 6 times in the last year",
       "1 or 2 times in the last year",
       "Never in the last year"]
    @yearly_smoke = ["Every day", "5 to 6 days a week",
     "3 to 4 days a week",
     "1 to 2 days a week",
     "2 to 3 days a month",
     "Once a month or less"]

 @satisfaction = ["Very satisfied", "Satisfied", "Dissatisfied", "Very dissatisfied"]

      @drugs = [[:sedatives_last_year, "Sedatives, for example, sleeping pills, barbiturates, Seconal, Quaaludes, or Chloral Hydrate"],
    [:tranquilizers_last_year, "Tranquilizers or anti-anxiety drugs, for example, Valium, Librium, muscle relaxants, or Zanax "],
    [:painkillers_last_year, "Painkillers, for example, Codeine, Darvon, Percodan, Oxycontin, Dilaudid, Demerol, Celebrex or Vioxx "],
    [:stimulants_last_year, "Stimulants, for example, Preludin, Benzedrine, Methedrine, Ritalin, uppers, or speed "],
    [ :marijuana_last_year, "Marijuana, hash, THC, or grass Cocaine or crack "],
    [ :hallucinogens_last_year,"Hallucinogens, for example, Ecstasy/MDMA, LSD, mescaline, psilocybin, PCP, angel dust, or peyote "],
    [ :inhalents_last_year, "Inhalants or solvents, for example, amyl nitrite, nitrous oxide, glue, toluene or gasoline "],
    [ :heroin_last_year, "Heroin "],
    [:drugs_other_last_year, "Any OTHER medicines, or drugs, or substances, for example, methadone, Elavil, steroids, Thorazine or Haldol?"]]
     
    @frequency = [ "Never",
       "Almost never",
       "Sometimes",
       "Fairly often",
       "Very often"]
    @sex_feelings = ["Only attracted to females",
     "Mostly attracted to females",
     "Equally attracted to females and males",
     "Mostly attracted to males",
     "Only attracted to males"]

    @sex_who = ["Only males",
     "Only females",
     "Both males and females",
     "Never had sex"]

   @sex_category = ["Heterosexual (straight) ",
     "Gay or lesbian ",
     "Bisexual ",
     "Not sure"]

    @suicidal = [ 
    [:suicidal_thought, "I thought seriously about it"],
    [:suicidal_plan, "I had a general plan but did not carry it out (e.g., a time, a place, etc. were identified)"],
    [:suicidal_note_hidden, "I wrote a suicide note but did not leave it where it could be found"],
    [:suicidal_note_open, "I wrote a suicide note and did leave it where it could be found"],
    [:suicidal_method, "I had a method but did not carry it out"],
    [:suicidal_attempt, "I made a serious attempt but no medical intervention occurred "],
    [:suicidal_medical, "I made a serious attempt that received medical attention "],
    [:suicidal_not_serious, "Although I considered suicide, I was not that serious about it"]]

    @sns = [[:frequency_facebook, "Facebook"],
     [:frequency_twitter, "Twitter"],
     [:frequency_google_plus, "Google+"], 
     [:frequency_myspace, "MySpace"], 
     [:frequency_linkedin, "LinkedIn"],
      [:frequency_tumblr, "Tumblr"],
       [:frequency_trevorspace,"TrevorSpace"], 
       [:frequency_grindr,"Grindr"], 
       [:frequency_scruff,"Scruff"],
       [:frequency_jackd,"Jack'd"], 
       [:frequency_hornet,"Hornet"], 
       [:frequency_yelp,"Yelp"],
       [:frequency_foursquare,"Foursquare"], 
       [:frequency_flickr,"Flickr"], 
       [:frequency_youtube,"YouTube"], 
       [:frequency_pinterest,"Pinterest"], 
       [:frequency_instagram,"Instagram"],
       [:frequency_other, "Other"] ]
   end

end
