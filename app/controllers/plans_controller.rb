class PlansController < InheritedResources::Base

  private

    def plan_params
      params.require(:plan).permit(:title, :description)
    end
end

