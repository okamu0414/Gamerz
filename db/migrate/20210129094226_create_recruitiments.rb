class CreateRecruitiments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitiments do |t|
      t.string :title
      t.string :used_vc
      t.text :one_word
      t.string :play_style
      t.datetime :start_at
      t.datetime :end_at
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
    add_index :recruitiments, [:user_id, :created_at]
  end
end
