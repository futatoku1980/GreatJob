Rails.application.routes.draw do
   root to: 'homes#top'
  #社員
  
  devise_for :users, skip: [:passwords], controllers: {

  registrations: "public/registrations",
  sessions: "public/sessions"
  }
  
  
  #管理者
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }

 
  namespace :admin do
    get 'reports/index'
    get 'reports/show'
  end
  namespace :public do
    get 'reports/new'
    get 'reports/index'
  end
  namespace :admin do
    get 'attendances/index'
  end
  namespace :public do
    get 'attendances/new'
    get 'attendances/index'
  end
  get 'attendances/new'
  get 'attendances/index'
  resources :meetings
  

  
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
