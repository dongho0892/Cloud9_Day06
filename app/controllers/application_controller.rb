class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception       # 주석처리 하면 보안 줄어들지만 빠르게 넘어감.
end
