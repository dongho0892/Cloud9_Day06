class CreateLottos < ActiveRecord::Migration[5.0]
  def change
    create_table :lottos do |t|
      # t.string "lotto1"
      # t.string "lotto2"
      # t.string "lotto3"
      # t.string "lotto4"
      # t.string "lotto5"
      # t.string "lotto6"
      
      t.string "numbers"
      
      t.timestamps
    end
  end
end
