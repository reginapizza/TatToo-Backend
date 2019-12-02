# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :tattoos, except: %i[new edit]
  resources :examples, except: %i[new edit]

  # Auth routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # get '/tattoos' => 'tattoos#'
  get '/tattoos_my' => 'tattoos#my_tattoos'
  # get '/tattoos' => 'tattoos#' # id?
  # post '/tattoos' => 'tattoos#create-tattoo' # id?
  # patch '/tattoos' => 'tattoos#edit'
  # delete '/tattoos' => 'tattoo#delete' # id?
end
