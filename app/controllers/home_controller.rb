class HomeController < ApplicationController 
  def index
    @msg = "나의 첫 레일즈 에 오신 것을 환영합니다."
  end
  
  def lotto
      @lotto = (1..45).to_a.sample(6).sort
  end
  
  def lunch
    #   @menu = ["순남시래기" => "https://img.siksinhot.com/place/1479874557884434.jpg?w=540&h=436&c=Y" ,
    #   + "구내식당" =>"http://cfile10.uf.tistory.com/image/2521A83757E7D9F21778FC", 
    #   + "자장면" => "http://image.lovehwaseong.kr/lovehwaseong/guide/mah/201410/120141030102709.gif"].sample(1)
      @menu = {
            "순남시래기" => "https://img.siksinhot.com/place/1479874557884434.jpg?w=540&h=436&c=Y" ,
            "구내식당" =>"http://cfile10.uf.tistory.com/image/2521A83757E7D9F21778FC", 
            "자장면" => "http://image.lovehwaseong.kr/lovehwaseong/guide/mah/201410/120141030102709.gif"}
      
      @lunch = @menu.keys.sample

  end
end
