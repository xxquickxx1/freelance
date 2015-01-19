class ContactController < ApplicationController
  def create
  
  		Sendmail.contact(params).deliver
  		redirect_to :back
  end
end
