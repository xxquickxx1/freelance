class ContactController < ApplicationController
  def create
  
  		Sendmail.contact(params).deliver
  		redirect_to :back, notice: 'Email sent successfully'
  end
end
