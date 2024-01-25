class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text       :content
      t.references :prototype, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end


# | content       | text        | NOT NULL  |     |
# | prototype     | references  | NOT NULL  |外部キー (prototypesテーブル参照) |
# | user          | references  | NOT NULL  | 外部キー (usersテーブル参照) |