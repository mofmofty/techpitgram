class Photo < ApplicationRecord
    #postモデルとのアソシエーション設定
    belongs_to :post
    #バリデーション　 presence: true　値が空でないことをチェック
    validates :image, presence: true
    
    #Photoモデルのimageカラムと、先ほど作成したアップローダーImageUploaderとの紐付け
    mount_uploader :image, ImageUploader
end
