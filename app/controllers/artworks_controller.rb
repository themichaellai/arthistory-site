class ArtworksController < ApplicationController
  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new params[:artwork]
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render 'new'
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @comment = Comment.new
  end
end
