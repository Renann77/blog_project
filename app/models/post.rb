class Post < ApplicationRecord
    # Relacionamentos
    belongs_to :user
    has_many :comments, dependent: :destroy
  
    # Validações
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
    validates :content, presence: true, length: { minimum: 10 }
  
    # Scopes
    scope :recent, -> { order(created_at: :desc) }
    scope :published, -> { where(published: true) }
  end