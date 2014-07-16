class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z\.0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class FacebookResponse < ActiveRecord::Base
  belongs_to :facebook_user
  belongs_to :response_set

  #validates :email_address, presence: true, email: true
end
