class DemoController < ApplicationController

	layout 'application'

  before_action :confirm_logged_in

  def index
  	#render('hello')
  	#render(:template => 'demo/hello')
  end

  def hello
  	#render('index')
  	@array = [1,2,3,4,5]
  	@id = params['id'].to_i
  	@page = params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def google
  	redirect_to("http://google.com")
  end


end
