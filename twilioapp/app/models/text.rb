class Text < ActiveRecord::Base
  attr_accessible :message, :tel

  validates :message, :tel, presence: true
  validates :message, length: { maximum: 160 }

  before_save :send_text_message

  protected

  def send_text_message

    # Set up Twilio client
    @client = Twilio::REST::Client.new(ENV['TWILIO_SID'], ENV['TWILIO_AUTH'])

    # Attempt to send message
    begin
      @message = @client.account.sms.messages.create({
        :from => ENV['TWILIO_NUM'],
        :to => "+44" + self.tel,
        :body => self.message
      })
    rescue Exception => e
      # Failed!
      puts e
      return false
    end
  end

end