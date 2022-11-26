class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params_profile)
    if @profile.save
      redirect_to profile_path(profile)
    else
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end


  private 

  def params_profile
    params.require(:profile).permit(:prefecture, :drone_name, :main_crops, :introduction_year, :self_introduction)
  end
end
