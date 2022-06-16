Rails.application.routes.draw do
  get 'attendances/new'
  get 'attendances/index'
  root to: 'homes#top'
  #管理者
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }

  #社員
  devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
