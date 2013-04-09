SweetArticles::Application.routes.draw do

  resources :categories do
    resources :articles
  end

  resources :tags 

  match '/categories/:title/articles' => 'category#show', :as => :cat_name
  match '/tags/:name/articles' => 'tags#show', :as => :tag_name
  match "/articles/:month/:day/:year/:title" => 'articles#show'

  root :to => 'articles#index'


end
