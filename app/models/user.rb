class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  #nameは必ず入力されていないとだめ
  validates :name, presence: true
  #profileは200文字以内
  validates :profile, length: { maximum: 200 }
end
