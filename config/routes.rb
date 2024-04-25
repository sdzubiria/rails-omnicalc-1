Rails.application.routes.draw do
  root to: 'calculator#home'

  get '/square/new', to: 'calculator#new_square'
  post '/square/results', to: 'calculator#calculate_square'

  get '/square_root/new', to: 'calculator#new_square_root'
  post '/square_root/results', to: 'calculator#calculate_square_root'

  get '/payment/new', to: 'calculator#new_payment'
  post '/payment/results', to: 'calculator#calculate_payment'

  get '/random/new', to: 'calculator#new_random'
  post '/random/results', to: 'calculator#calculate_random'
end
