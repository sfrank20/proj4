class PagesController < ApplicationController
  def home
  	@title = "Home"
  end

  def sadmin
  	@title = "Survey Administration"
  end

  def qadmin
  	@title = "Question Administration"
  end

  def take
  	@title = "Take Survey"
  end

  def results
  	@title = "View Results"
  end

end
