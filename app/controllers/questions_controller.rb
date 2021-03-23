class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    # params[:response_id]
    "on veut sur afficher la question numéro"
    "on veut afficher les réponses affiliées à la question"
    "on veut pouvoir cocher une réponse"
    "on veut valider notre réponse"
    "si le résultat de la réponse est vrai alors l'explication de la question s'affichera dans un cadre vert"
    "si le résultat de la réponse est faux alors l'explication de la question s'affichera dans un cadre rose"
    "une fois que l'user à tout lu il clique sur question suivante"
    "et rebelote pour la quuestion numéro deux jusqu'à plus de question et donc affichage de la page félicitation"

    # @question = Question.find(params[:id])
    # @responses = @question.responses

    # @response = Response.find(params[:question_id])
    # if @response.result == false
    #   "cadre explication rose"
    # else
    #   "cadre explication vert"
    # end

    @response_id = params.dig(:answer, :response_id)
    @display_answer = @response_id.present?
    @correct_answer = Response.find(@response_id).result if @response_id.present?
    @next_question = Question.find_by(quiz: @question.quiz, order: @question.order + 1)
    #est ce que la réponse est vraie ? (pour utiliser avec les couleurs)
  end
end
