class FostersController < ApplicationController
  before_action :set_foster, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]


  def index
    @foster = Foster.all #includes(:user).order("created_at DESC")
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

  def update
    if @foster.update(foster_params)
      redirect_to foster_path(@foster)
    else
      render :edit
    end
  end

  def destroy
    if @foster.destroy
      redirect_to fosters_path
    else
      redirect_to fosters_path
    end
  end

  private

  def foster_params
    params.require(:foster).permit(:title, :detail, :prefecture_id, :gender_id, :age_id, :month_id, :vaccine_id, :castration_id, :image).merge(user_id: current_user.id)
  end

  def set_foster
    @foster = Foster.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @foster.user
  end
end
