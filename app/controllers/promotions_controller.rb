# coding: utf-8

class PromotionsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:list,:show]
  
  def index
    @promotions = current_user.promotions
  end
  
  def list
    @lat=params[:lat]
    @lng=params[:lng]
    p = Geocode.new
    p.latitude = @lat
    p.longitude = @lng
    @promotions = Promotion.origin(p, :within => 50)
  end
  
  def show
    @promotion = Promotion.find(params[:id])
    respond_to do |format|
      format.html
      format.plist { render :plist => @product }
    end
  end
  
  def new
    @promotion = Promotion.new
  end
  
  def create
    
    @promotion = Promotion.new(params[:promotion])
    @promotion.user = current_user
    if @promotion.save
      flash[:notice] = "Successfully created promotion."
      redirect_to @promotion
    else
      render :action => 'new'
    end
  end
  
  def edit
    @promotion = Promotion.find(params[:id])
  end
  
  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update_attributes(params[:promotion])
      flash[:notice] = "Successfully updated promotion."
      redirect_to @promotion
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy
    flash[:notice] = "Successfully destroyed promotion."
    redirect_to promotions_url
  end
end
