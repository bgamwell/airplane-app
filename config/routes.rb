Rails.application.routes.draw do

  get 'planes/index'

  root to: 'planes#index'

  resources :planes

end

# planes_index GET  /planes/index(.:format) planes#index
#         root GET  /                       planes#index
#       planes GET  /planes(.:format)       planes#index
#    new_plane GET  /planes/new(.:format)   planes#new
