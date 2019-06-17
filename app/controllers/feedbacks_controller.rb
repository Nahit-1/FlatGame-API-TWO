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
end
