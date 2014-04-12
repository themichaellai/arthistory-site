ArthistSite::Application.routes.draw do
  resources 'artworks' do
    resources 'comments', only: [:create]
  end
end
