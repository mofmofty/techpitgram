class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      
      #foreign_key: trueは外部キーとして使用する
      t.text :comment, null: false
      t.references :post, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
