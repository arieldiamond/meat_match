Rails.application.routes.draw do
  root 'match#index'
  
  post 'match/answer'
  get 'match/answer' => 'match#answer'

  get 'match/matchme' => 'match#matchme'

  post 'match/automatch'
  get 'match/automatch' => 'match#automatch'

  post 'match/automatch_tech'
  get 'match/automatch_tech' => 'match#automatch_tech'

  post 'match/nothing'
  get 'match/nothing' => 'match#nothing'

  resources :match
  
  resources :techniques

  resources :meatcuts
end
