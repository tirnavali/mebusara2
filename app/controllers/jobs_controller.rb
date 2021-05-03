class JobsController < InheritedResources::Base

  private

    def job_params
      params.require(:job).permit(:name, :related_term)
    end

end
