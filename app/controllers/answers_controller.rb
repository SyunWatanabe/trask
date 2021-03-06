# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :logged_in_user, only: %i[create destroy new]

  def index
    @answers = Answer.paginate(page: params[:page])
    @get_answers_ranks = Question.reorder('answers_count desc').order('created_at desc')
    @iine_ranks = Answer.sort_iine_ranks
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def show
    @answer = Answer.find(params[:id])
    @comment = Comment.new
    @comments = @answer.comments
  end

  def update
    @answer = Answer.where(id: params[:id], user_id: current_user.id).first
    if @answer.update_attributes(answer_params)
      flash[:success] = '回答を変更しました'
      redirect_to @answer.question
    else
      render 'edit'
    end
  end

  def create
    @answer = current_user.answers.new(answer_params)
    if @answer.save
      flash[:success] = '回答しました！！'
      redirect_to @answer.question
    else
      @question = Question.find(@answer.question_id)
      @answers = @question.answers.paginate(page: params[:page], per_page: 5)
      render 'questions/show'
    end
  end

  def destroy
    @answer = Answer.where(id: params[:id], user_id: current_user.id).first
    @answer.destroy
    flash[:success] = '回答を削除しました'
    redirect_to request.referrer || root_url
  end

  def rank
    @get_answers_ranks = Question.sort_answers_ranks.paginate(page: params[:page])
    @iine_ranks = Answer.sort_iine_ranks.paginate(page: params[:page])
  end

  private

  def answer_params
    params.require(:answer).permit(:reply, :user_id, :question_id, :repicture)
  end
end
