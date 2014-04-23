class CharitiesController < ApplicationController

  def index
    @charities = Charity.all
  end

  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.new(charity_params)
    if @charity.save
      flash[:notice]='New charity created.'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def edit
    @charity = Charity.find(params[:id])
  end

  def update
    @charity = Charity.find(params[:id])
    if @charity.update(charity_params)
      flash[:notice] = "Charity updated."
      redirect_to charity_path(@charity)
    else
      render 'edit'
    end
  end

  def destroy
    @charity = Charity.find(params[:id])
    @charity.destroy
    redirect_to root_url
  end

private

  def charity_params
    params.require(:charity).permit(:name, :description)
  end
end

