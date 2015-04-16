class CollegesController < InheritedResources::Base

  private

    def college_params
      params.require(:college).permit(:student_name, :number, :address, :ph_no)
    end
end

