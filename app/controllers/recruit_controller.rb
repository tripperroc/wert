class RecruitController < ApplicationController

  #layout "recruit"

  def index   
   # @invitation_url = url_for :controller => 'recruit', :action => 'invitation', :id => session[:recruiter_coupon]
   # @email = session[:email_address]
    #estimate = Estimate.find(params[:id])
    #response = Response.find (estimate.response_id)
    #@facebook_response = FacebookResponse.find(response.facebook_response_id)
    #@email = estimate.email_address
    #@male_facebook_friends = session[:total_male_friends]
    #@recruitee_coupon =  session[:recruiter_coupon]
    #@recruiter_coupon =  session[:recruiter_coupon]
    #@recruitee_coupon =  session[:recruitee_coupon]
    #@gay_facebook_friends = estimate.facebook_gay_friends
    #ResponderMailer.thank_you_email({:invitation_url => @invitation_url, :email_address => @email}).deliver
    @thank_you_letter = t(:thank_you_letter)
    @emailing = t(:emailing)
  end

  def loginvitation 
    logger.debug ("a;sldfkas;dlfkajs;dlfkajsd;lfkasjdfl;askjdf;lsakjdfa;slkdjfas;ldkfjas;ldf")
    logger.debug params
    facebook_user = FacebookUser.find_by(:facebook_account_number => params[:facebook_account_number])
    begin
      FacebookResponse.find_by!(:facebook_user_id => facebook_user.id)
    rescue ActiveRecord::RecordNotFound
      logger.debug ("345345345345345345345345345345345345345345345345345")
      logger.debug ("We're rescuing!!!")
      facebook_response = FacebookResponse.create(:facebook_user_id => facebook_user.id, :recruitee_coupon => params[:recruitee_coupon])
    end
  end

  def invitation
    session[:recruitee_coupon] = params[:id]
    redirect_to :controller => 'consent', :action => 'index'
  end

  def email
    session[:email] = params[:email]
    render :json => { "mmail" => params[:email] }
 
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

def update
   params.require(:ending).permit! 
   @response = Ending.find(params[:id])

end