class HomeController < ApplicationController
  def index
    @layout_content = 'hello world!!'
  end

  def hello
    @layout_content = 'this is the hello page'
    @num_array = [1, 2, 3, 4, 5]
    @page = params[:page]
    @id = params['id']
    # redirect_to controller: 'home', action: 'index'
  end

  def about
    render 'about_us'
  end

  def contact
    if ['ca','us'].include?(params[:country])
      @phone_num = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone_num = '(020) 7946 1234'
    else
      @phone_num = '+1 (987) 654-6334'
    end
    render 'contact_us'
  end
end
