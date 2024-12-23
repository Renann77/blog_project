class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    # Relacionamentos
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
  
    # Validações
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
  end