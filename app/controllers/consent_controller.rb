class ConsentController < ApplicationController

  def info_letter
# Don't thnk this currently does anything.
#    if request.post?
#      if @rsc =  RedssocsSurveyConsent.create(user_params)
#        if !@rsc.eligible?
#          redirect_to :action => 'not_eligible'
#        end 
#      else
#         redirect_to :action => 'not_eligible'
#      end
#      @facebook_response = FacebookResponse.new
#    end
  end

  def screening
    @facebook_response = FacebookResponse.new
    @recruitee_coupon = session[:recruitee_coupon]
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
    @facebook_response.gender = fr[:gender]
    @facebook_response.orientation = fr[:orientation]

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
      session[:recruitee_coupon] = @facebook_response.recruitee_coupon
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
    params.require(:redssocs_survey_consent).permit(:eighteen_or_older, :gender, :orientation)
  end

end
