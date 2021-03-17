class FostersController < ApplicationController

  def index
  end
  
  def new
    @foster = Foster.new
  end
  
  def create
    @foster = Foster.new(foster_params)
    if @foster.save
      redirect_to fosters_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def foster_params
    params.require(:foster).permit(:title, :detail, :prefecture_id, :gender_id, :age_id, :month_id, :vaccine_id, :castration_id, :image).merge(user_id: current_user.id)
  end

end
