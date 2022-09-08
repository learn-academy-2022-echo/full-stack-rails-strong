Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "blog_post#index"
  #Index
  get 'blogposts' => 'blog_post#index', as: 'blog_posts'
  
  #new route
  get 'blogposts/new' => 'blog_post#new', as: 'new_blog_post'

  #show route
  get 'blogposts/:id' => 'blog_post#show', as: 'blog_post'
  #Create
  post 'blogposts' => 'blog_post#create'
  #Delete
  delete 'blogposts/:id' => 'blog_post#destroy', as: 'delete_blog_post'

end
