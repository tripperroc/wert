class ConsentController < LanguageController

#   def info_letter
# # Don't thnk this currently does anything.
# #    if request.post?
# #      if @rsc =  RedssocsSurveyConsent.create(user_params)
# #        if !@rsc.eligible?
# #          redirect_to :action => 'not_eligible'
# #        end 
# #      else
# #         redirect_to :action => 'not_eligible'
# #      end
# #      @facebook_response = FacebookResponse.new
# #    end
#   end

   def index
    @hello_controller = t(:hello_yml)
    @survey_take = t(:survey_take)
    @front_page1 = t(:front_page1)
    @front_page2 = t(:front_page2)
    @front_page3 = t(:front_page3)
   end
 
  def info_letter
    # @hello_controller = t(:hello_yml)
    @info_letter1 = t(:info_letter1)
    @info_letter2 = t(:info_letter2)
    @info_letter3 = t(:info_letter3)
    @info_letter4 = t(:info_letter4)
    @info_letter5 = t(:info_letter5)
    @info_letter6 = t(:info_letter6)
    @info_letter7 = t(:info_letter7)
    @info_letter8 = t(:info_letter8)
    @info_letter9 = t(:info_letter9)
    @info_letter10 = t(:info_letter10)
    @info_letter11 = t(:info_letter11)
    @info_letter12 = t(:info_letter12)
    @info_letter13 = t(:info_letter13)
    @info_letter14 = t(:info_letter14)
    @info_letter15 = t(:info_letter15)
    @info_letter16 = t(:info_letter16)
    @yn1 = t(:yn1)
    @yn2 = t(:yn2)
    @download_letter = t(:download_letter)
  end

  def screening
    @facebook_response = FacebookResponse.new
    @recruitee_coupon = session[:recruitee_coupon]
    @screening1 = t(:screening1)
    @screening2 = t(:screening2)
    @yn1 = t(:yn1)
    @yn2 = t(:yn2)
    @screening_preface = t(:screening_preface)
    @screening_fail = t(:screening_fail)
    @facebook1 = t(:facebook1)
    @facebook2 = t(:facebook2)
    @facebook3 = t(:facebook3)
    @emailing = t(:emailing)
  end

  def not_eligible
  end
 
  def wrong_coupon
    @original_url = url_for :controller => 'recruit', :action => 'invitation', :id => session[:original_coupon]
    @wrong_url = url_for :controller => 'recruit', :action => 'invitation', :id => session[:recruitee_coupon]  
  end

  def expired 
    @coupon_url  = url_for :controller => 'recruit', :action => 'invitation', :id => session[:recruitee_coupon]
  end

  def invalid
    @coupon_url  = url_for :controller => 'recruit', :action => 'invitation', :id => session[:recruitee_coupon]    
  end

  def update
    authenticate_with_fb_graph
    check
    @facebook_response = FacebookResponse.new
    @recruitee_coupon = session[:recruitee_coupon]
    @screening1 = t(:screening1)
    @screening2 = t(:screening2)
    @yn1 = t(:yn1)
    @yn2 = t(:yn2)
    @screening_preface = t(:screening_preface)
    @screening_fail = t(:screening_fail)
    @facebook1 = t(:facebook1)
    @facebook2 = t(:facebook2)
    @facebook3 = t(:facebook3)
    @emailing = t(:emailing)
  end

  def foosey
    logger.debug "fooya"
  end

  def check
    logger.debug "##################"
    logger.debug facebook_user


    logger.debug params.to_s
    #params.permit!
    #rsc = RedssocsSurveyConsent.create(params[:redssocs_survey_consent])
    #rsc.update()

    @facebook_response = FacebookResponse.find_or_create_by(facebook_user_id: facebook_user.id)
    fr =  params[:facebook_response]
    @facebook_response.eighteen_or_older = fr[:eighteen_or_older]
    @facebook_response.nationality = fr[:nationality]

    logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    logger.debug FacebookResponse.where(recruiter_coupon: session[:recruitee_coupon]).count
    logger.debug session[:recruitee_coupon]
    logger.debug @facebook_response.recruiter_coupon
    logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    logger.debug "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    if (@facebook_response.recruiter_coupon)
      logger.debug "111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      logger.debug "111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      session[:recruiter_coupon] = @facebook_response.recruiter_coupon

      #session[:recruitee_coupon] = @facebook_response.recruitee_coupon
      @facebook_response.recruitee_coupon = session[:recruitee_coupon]

    elsif ((session[:recruitee_coupon] != '585' && FacebookResponse.where(recruitee_coupon: session[:recruitee_coupon]).count > 2) || (session[:recruitee_coupon] == '585' && FacebookResponse.where(recruitee_coupon: session[:recruitee_coupon]).count > 9) )
      logger.debug "222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222"
      logger.debug "222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222"
      redirect_to :action => "expired"
      return
    elsif ((!session[:recruitee_coupon]) || (session[:recruitee_coupon] != '814' && session[:recruitee_coupon] != '585' && FacebookResponse.where(recruiter_coupon: session[:recruitee_coupon]).count == 0))
      print "BLAH\n"
      print session[:recruitee_coupon].to_s + "\n"
      print "HALB\n"
      logger.debug "333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333"
      logger.debug "333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333"
      redirect_to :action => "invalid"
      return
    else
      logger.debug "444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444"
      logger.debug "444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444"
      recruiter_coupon = SecureRandom.hex(16)
      session[:recruiter_coupon] = recruiter_coupon
      @facebook_response.recruiter_coupon = recruiter_coupon

      #@facebook_response.recruitee_coupon = session[:recruitee_coupon]

    end
    if @facebook_response.save()
      Delayed::Job.enqueue(UpdateServices.new(@facebook_response, facebook_access_token), :priority => 0)
      #UpdateServices.new(@facebook_response, facebook_access_token).perform
      session[:facebook_response_id] =  @facebook_response.id
      redirect_to :controller => "surveyor", :action => "create", :id => @facebook_response.id
    else
     #redirect_to :action => :info_letter
     render :info_letter
    end
  end      
  private

  def get_friends (facebook_response) 
    facebook_response.facebook_male_friends = save_relationships
    logger.debug "$%$%$%$$$%$%$%$%$%$%$%$%$%$%"
    logger.debug facebook_response.facebook_male_friends
    facebook_response.save()
  end
  #handle_asynchronously :get_friends

  def user_params
    params.require(:redssocs_survey_consent).permit(:eighteen_or_older, :nationality)
  end

end
