Rails.application.routes.draw do
  scope "(:locale)", locale: /en|de/ do
    root 'pages#home'
    get '/about', to: 'pages#about'
    get '/help', to: 'pages#help'
    resources :todos
  end
end
