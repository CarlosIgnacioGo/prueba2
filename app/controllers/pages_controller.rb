class PagesController < ApplicationController
  def index
  	@work = Work.all
  end
end
