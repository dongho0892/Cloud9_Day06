class CreateUsers < ActiveRecord::Migration[5.0]
  def change                      
    create_table :users do |t|    ######### 중요한 부분
      # id는 쓰면 안됨.
      
#      t.text                # 긴글
      t.string "user_name"  # 컬럼 속성 2개(name, password)가 생길 것임.
      t.string "password"
      t.timestamps
      
      # 구조를 만들고 나서 실제 DB를 만들어주어야함.
      # $ rake db:migrate
      
    end                           ######### 중요한 부분
  end
end
