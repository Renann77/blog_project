class CommentsChannel < ApplicationCable::Channel
    def subscribed
      stream_from "post_#{params[:post_id]}_comments"
    end
  
    def unsubscribed
      stop_all_streams
    end
  end