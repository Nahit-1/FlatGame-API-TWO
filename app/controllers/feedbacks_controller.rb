class FeedbacksController < ApplicationController
    def index
        @feedback = Feedback.all
        render json: Feedback.all
    end 

    def show
      feedback = Feedback.find_by(id: params[:id])
        if feedback
          render json: feedback
        else
          render json: { error: 'Feedback not found.' }, status: 404
        end
      end

        def create
          # feedback = Feedback.new =(content: params[:content], user_id: params[:user_id], game_id: params[:game_id], rating: params[:rating])
          feedback = Feedback.new(content: params[:content], game_id: params[:game_id], rating: params[:rating], user_id: params[:user_id])
          # byebug
          if feedback.save
            render json: feedback
          else 
            render json: { error: 'Unable to create feedback.' }, status: 400
        end 
    end

    # private 

    # def feedback_params
    #   params.permit([:content, :user_id, :game_id, :rating)
    # end 
end

# create_table "feedbacks", force: :cascade do |t|
#   t.text "content"
#   t.bigint "user_id"
#   t.bigint "game_id"
#   t.integer "rating"
#   t.index ["game_id"], name: "index_feedbacks_on_game_id"
#   t.index ["user_id"], name: "index_feedbacks_on_user_id"
# end