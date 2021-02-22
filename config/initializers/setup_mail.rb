ActionMailer::Base.smtp_settings = {

    :address        => "smtp.gmail.com",
    :port           => 587,
    :authentication => :plain,
    :user_name      => "mujtaba.testing54321@gmail.com",
    :password       => "Gabba@5055",
    :authentication => 'plain',
    :openssl_verify_mode  => 'none'

}
