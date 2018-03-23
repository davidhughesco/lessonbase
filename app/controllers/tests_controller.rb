class TestsController < InheritedResources::Base

  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def show
    @responses = @test.responses
    @opt1_res = @responses.where(answer: "A")
    @opt2_res = @responses.where(answer: "B")
    @opt3_res = @responses.where(answer: "C")
    @opt4_res = @responses.where(answer: "D")
    @opt1_count = @opt1_res.count
    @opt2_count = @opt2_res.count
    @opt3_count = @opt3_res.count
    @opt4_count = @opt4_res.count
  end

  private

    def set_test
      @test = Test.find(params[:id])
    end

    def test_params
      params.require(:test).permit(:question, :opt1_type, :opt1_words, :opt2_type, :opt2_words, :opt3_type, :opt3_words, :opt4_type, :opt4_words, :answer, :question_type)
    end
end
