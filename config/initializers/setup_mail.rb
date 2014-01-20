ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "google.com",
  :user_name            => "dbsnvrt@gmail.com",
  :password             => "scorpion",
  :authentication       => "plain",
  :enable_starttls_auto => true
}