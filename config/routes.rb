Rails.application.routes.draw do

get 'users/new'

post 'users/create'

get 'users/home'

post 'sessions/create'
end
