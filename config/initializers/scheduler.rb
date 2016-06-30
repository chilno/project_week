require 'mail'
require 'rufus-scheduler'

SCHEDULER = Rufus::Scheduler.new

options = { :address              => "smtp.gmail.com",
	      :port                 => 587,
	      :domain               => 'gmail.com',
	      :user_name            => 'rentapp22@gmail.com',
	      :password             => '22rentapp',
	      :authentication       => 'plain',
	      :enable_starttls_auto => true  }


Mail.defaults do
	delivery_method :smtp, options
end


# SCHEDULER.in '5s' do

# 	Mail.deliver do
# 	  from    'rentapp22@gmail.com'
# 	  to      'anathomasity@gmail.com'
# 	  subject 'This is a test email'
# 	  body    'Some simple body'
# 	end
# end

