class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'
	def welcome_email
		@user = params[:user]
		@url  = 'http://example.com/login'
		mail(to: @user.email, subject: 'Pictures from PhotoBoothApp!')
	  end
end
