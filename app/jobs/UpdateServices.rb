class UpdateServices
  #attr_accessor :options
  def initialize(fr, fat)
    #self.options = options
    @facebook_response = fr
    @facebook_access_token = fat
  end

 def save_relationships
    #  Retrieve Facebook data for current user
    graph_page = "me?fields=interested_in,name,id,gender,relationship_status,significant_other" + 
      "&access_token=#{@facebook_access_token}"
    fetched_page = FbGraph::Page.fetch(graph_page)
    user_data = fetched_page.raw_attributes
    u = FacebookUser.find_or_initialize_from_graph_query_fields(user_data)
    u.save!


    #  Retrieve Facebook data for current user's friends
    graph_page = "me/friends?fields=interested_in,name,id,gender,relationship_status,significant_other" +
      "&access_token=#{@facebook_access_token}"
    fetched_page = FbGraph::Page.fetch(graph_page)
    friend_data = fetched_page.raw_attributes['data']
 
    so_facebook_account_numbers = Array.new
    
    friend_data.each do |friend_fields|
      puts "duh"
      friend = FacebookUser.find_or_initialize_from_graph_query_fields(friend_fields)
      friend.save! if friend.changed?
      u.find_or_create_friendship_with(friend)

      if friend.significant_other
        so_facebook_account_numbers.append(friend.significant_other.facebook_account_number)
      end
    end



    #  Retrieve Facebook data for significant others
    #graph_query = "?ids=" + so_facebook_account_numbers.join(',') + "&fields=id,gender" +
     # "&access_token=#{@facebook_access_token}"
    #significant_other_gender_page = FbGraph::Page.fetch(graph_query)
    #significant_other_gender_data = significant_other_gender_page.raw_attributes
    
    #  significant_other_gender_data looks like:
    #    {
    #      "access_token => nil, 
    #      "1059286719"=>{"id"=>"1059286719", "gender"=>"female"}, 
    #      "64901770"=>{"id"=>"64901770"},
    #      "1563292800"=>{"id"=>"1563292800", "gender"=>"female"},
    #      ...
    #    }

    #significant_other_gender_data.delete('access_token')

    #significant_other_gender_data.each do |facebook_id, significant_other_gender|
    #  so = FacebookUser.find_or_initialize_by_facebook_account_number(facebook_id)
    #  so.gender ||= significant_other_gender["gender"]
    #  so.save! if so.changed?
    #end
    u.total_male_friends
  end

  def perform
    #Debugging code
    #Delayed::Worker.dj_say "starting"
    File.open("test.txt","w").close
    #@facebook_response.facebook_male_friends = 69
    @facebook_response.facebook_male_friends = save_relationships
    @facebook_response.save

    #End debugging code
    #bunch-o-code-here
    #Delayed::Worker.dj_say "completed"

  end
end
