class ImagesController < ApplicationController
  def index
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new secure_params

    if @image.save
      return redirect_to images_path, notice: t('.created', model: @image.class.model_name.human)
    end

    render :new
  end

  private
  def secure_params
    params.require(:image).permit :name, :description, :category, :tags_text
  end
end
