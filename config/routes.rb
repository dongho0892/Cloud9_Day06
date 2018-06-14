Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/index' => 'home#index'
    #    /index

    root 'home#index'           # 주소창에 /만 있을 경우 home#index로 가겠다.
    get '/lunch' => 'home#lunch'   # home controller의 lunch로 보내주세요. 
    
    
    get '/users'        => 'user#index'
    get '/users/new'    => 'user#new'     # 순서 중요함.
    get '/user/:id'     => 'user#show'
    post '/user/create' => 'user#create'
    
    
    
    get '/lotto'     => 'lotto#index'   # 여러개가 들어있으므로.
    get '/lotto/new' => 'lotto#new'     # new에서 새로 만들어버리면 됨. 




end
