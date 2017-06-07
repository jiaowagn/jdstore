class Users::SessionsController < Devise::SessionsController
  prepend_before_action :valify_captcha!, only: [:create]
  after_action :prepare_intercom_shutdown, only: [:destroy]

  def valify_captcha!
    unless verify_rucaptcha?
      redirect_to new_user_session_path, alert: t('rucaptcha.invalid')
      return
    end
    true
  end

  protected
  def prepare_intercom_shutdown
    IntercomRails::ShutdownHelper.prepare_intercom_shutdown(session)
  end 

end
