class Comment < ApplicationRecord
    # Relacionamentos
    belongs_to :user
    belongs_to :post
  
    # Validações
    validates :content, presence: true, length: { minimum: 2 }
  
    # retorno 
    after_create_commit { broadcast_comment }
  
    private
  
    #função
    def broadcast_comment
      ActionCable.server.broadcast(
        "post_#{post_id}_comments",
        comment: self,
        user: user.username
      )
    end
  end