class MerchantMailer < ActionMailer::Base
  default :from => "dbsnvrt@gmail.registration_confirmation"

  def registration_confirmation(merchant)
    @merchant = merchant
    attachments["logo.png"] = File.read("#{Rails.root}/public/images/logo.jpg")
    mail(:to => "#{merchant.mid} <#{merchant.email}>", :subject => "Registered")
  end
end