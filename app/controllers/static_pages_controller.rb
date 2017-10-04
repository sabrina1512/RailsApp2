
class StaticPagesController < ApplicationController
  def index
  end
end

class StaticPagesController < ApplicationController
  def landing_page
    @products = Product.limit(3)
  end
end

ActionMailer::Base.mail(from: 'from@domain.com', to: 'to@domain.com', subject: "Thanks 
	for your message", body: 'I received your message and will shortly get back to you.').deliver_now

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'sabrina.leskovsek@gmail.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
end