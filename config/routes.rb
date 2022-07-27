Rails.application.routes.draw do
  namespace :public do
   get 'calendars/index'
    get 'calendars/new'
  end
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
    resources :reports, only: [:index, :create, :new, :update, :show]
  end
  namespace :admin do
    get 'attendances/index'
  end
  namespace :public do
   resources :attendances, only: [:index, :create, :new, :update]
  end

  resources :meetings



 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
