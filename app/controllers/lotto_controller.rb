class LottoController < ApplicationController
    
def index
    @new_number = Lotto.last    # 가장 마지막에 등록된 번호 = 가장 최근에 생긴 번호
    @numbers = Lotto.all        # 모든 것을 다 담는 것
    
end

def new           # 배열로 /            #배열 저장시 짱날 수 있으니 문자로 변환 
    number = (1..45).to_a.sample(6).sort.to_s
    # 이 번호를 로또라는 곳에 저장해주면 됨.
    lotto = Lotto.new           # 새로 만들어주고
    lotto.numbers = number      # lotto의 numbers 변수에 넣어주기
    lotto.save              # 메모리로 둥둥 떠다니는 거 저장시키기
    redirect_to '/lotto'    # 이동시키기
end

end
