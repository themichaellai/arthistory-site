ArthistSite::Application.routes.draw do
  root to: 'artworks#index'
  resources 'artworks' do
    resources 'comments', only: [:create]
  end
end
