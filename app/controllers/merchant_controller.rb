class MerchantController < ApplicationController
	
	def home
    
	end

  def new
    @merchant = Merchant.new
  end



  def validate

    range = [*'0'..'9', *'A'..'Z']
    @merchant = Merchant.new(params[:merchant])
    @merchant.tick = Array.new(8){range.sample}.join

    if verify_recaptcha()

      if @merchant.save
        @@id = @merchant.id
        flash[:success] = "Complaint has been registered"
        redirect_to '/authenticated_user'
      else
        flash[:error] = "Error saving complaint"
        render "validate"
      end      
    else
      flash[:error] = "Invalid Captcha"
      render 'validate'
    end
  end

  def authenticated_user
    @merchant = Merchant.find(@@id)
    MerchantMailer.registration_confirmation(@merchant).deliver
  end

  def complaint
  end

  def status
  end
  

end
