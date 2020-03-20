Rails.application.routes.draw do
  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"
  root to: 'tv_shows#index'
  get '/set_favourite/:id', to: 'tv_shows#set_favourite', as: 'favourite'
end
