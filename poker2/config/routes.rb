Rails.application.routes.draw do
  get '/poker', to: 'poker2#deal'
  end
end
