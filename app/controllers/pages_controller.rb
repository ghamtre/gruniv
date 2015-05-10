class PagesController < ApplicationController
  def index
  end

  def show
  @model_object = ModelObject.find(params[:id])

  respond_to do |format|
    format.html { render :text => @home.html_content }
  end
end
end 