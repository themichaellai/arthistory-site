class CommentsController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @comment = @artwork.comments.build(params[:comment])
    if @comment.save
      redirect_to artwork_path(@artwork)
    else
      render 'artworks/show'
    end
  end
end
