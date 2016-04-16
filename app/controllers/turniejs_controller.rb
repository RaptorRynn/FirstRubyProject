class TurniejsController < ApplicationController
  def index
    @turnieje = Turniej.all
  end
  def new
  end

  def create
    entry_data = params["turniej"].permit("title", "contents")
    turniej = Turniej.new(entry_data)
    turniej.date = Date.today
    turniej.save
    redirect_to(turniej_path(turniej))
  end

  def update
    entry_data = params["turniej"].permit("title", "contents")
    turniej = Turniej.find(params["id"])
    turniej.update(entry_data)
    redirect_to(turniejs_path)
  end

  def edit
    @turniej = Turniej.find(params["id"])
  end

  def show
    @turniej = Turniej.find(params["id"])
  end
end
