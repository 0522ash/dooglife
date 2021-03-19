class DogrunController < ApplicationController
  before_action :set_dogrun, except: [:index, :new, :create]

  def index
    @dogrun = Dogrun.all
  end

  def new
    @dogrun = Dogrun.new
  end

  def create
    @dogrun = Dogrun.new(dogrun_params)
    if @dogrun.save
      redirect_to dogrun_index_path
    else
      render :new
    end
  end


  def dogrun_params
    params.require(:dogrun).permit(:title, :detail, :prefecture_id, :image).merge(user_id: current_user.id)
  end

  def set_dogrun
    @dogrun = Dogrun.find(params[:id])
  end
end
