class ResponsesController < InheritedResources::Base

  def create
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to response_path(@response) }
      else
        format.html { render :new }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def response_params
      params.require(:response).permit(:test_id, :name, :answer)
    end
end
