class ContentsController < ApplicationController
  def home
  end

  def marketing_branding

  end

  def complete_brand_experience

  end

  def media_production

  end

  def about

  end

  def clients

  end

  def inspiration

  end

  def contact

  end

  def contact_send
    sleep 2
    #Notifications.contact_email().deliver
    render :text => "OK"
  end

  def blog
    
  end

end
