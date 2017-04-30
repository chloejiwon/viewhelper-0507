class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content, default: "내용을 입력해주세요."

      t.timestamps
    end
  end
end
