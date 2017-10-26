class VisitorsController < ApplicationController

  def index
    @droids = User.select_droids
  end
end
