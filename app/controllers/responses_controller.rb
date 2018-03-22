class ResponsesController < InheritedResources::Base

  private

    def response_params
      params.require(:response).permit(:test_id, :name, :answer)
    end
end

