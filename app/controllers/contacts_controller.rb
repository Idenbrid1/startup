class ContactsController < ApplicationController
	protect_from_forgery
	
    def index
		
	end

	def new
		@contact = Contact.new
	end


	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		
		if @contact.deliver
			flash.now[:error] = nil
		else
		  	flash.now[:error] = "email not send."
		  	render :new
		end  	
	end

	def application_params
      params.require(:application).permit(:user, :terms_of_service)
    end
end
