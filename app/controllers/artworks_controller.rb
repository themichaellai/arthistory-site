class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

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

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    if @artwork.update_attributes(params[:artwork])
      redirect_to artwork_path(@artwork)
    else
      render 'edit'
    end
  end
end
