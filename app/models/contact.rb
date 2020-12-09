class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true
  attr_accessor :terms
  validates_acceptance_of :terms
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form",
      :to => "mujtaba.testing54321@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

