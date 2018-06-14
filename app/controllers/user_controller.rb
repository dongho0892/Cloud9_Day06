class UserController < ApplicationController

# 사용자의 요구가 들어오면 액션하게끔 해줘야함. -> routes.rb

    def index
    
        @users = User.all           # 변수 만들고 모든 유저를 불러와라.
        
    end
    
    def new         # 회원 등록
        
    end
    
    def show        # 한 회원의 정보를 보여주는 것
#       params[:id]   # url에 들어갈 수 있는 거면 다 가능함.
        @user = User.find(params[:id])
    end
    
    def create      # 회원정보 등록하기    + POST 방식으로. redirect!!
        u1 = User.new
#        u1.user_name = "haha"
        u1.user_name = params[:user_name]
        u1.password = params[:password]
        u1.save                         # 이 것이 실행이 되야 저장이 됨.
        # redirect
        redirect_to "/user/#{u1.id}"    # 보여줄 수 있는 페이지로 보내줌.
    end

end