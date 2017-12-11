class SurveysController < ApplicationController
 def index
    # Set session views to zero if it doesn't exist yet
    session[:views] ||= 0
   
 end
 def results
    # Increment the session views upon submission of the form          
    session[:views] = session[:views] + 1
   
    # Save success message to flash to show it once
    flash[:success]=" Thanks for submitting the form!! You have submitted the form #{session[:views]} time(s)"
    @result = session[:result]
    

 end 

 def process_survey
    # Save the post data (params[:survey]) to session
    session[:result] = params[:survey]
    # To prevent submission of form with page reload
    redirect_to '/surveys/result'
    
 end

end


# class SurveysController < ApplicationController
    
    
#         def index
#         #     session[:views] || =0
#         end
        
#         def processform
#             session[:result] = params[:survey]
#             redirect_to '/result'
#         end    
    
    
#         def result
#             session[:count] ||= 0
#             session[:count] += 1
#             @result = session[:result]
#             flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now"
    
#         end
    
    
#         private
        
#         def survey_params
#             params.require(:survey).permit(:name,:location,:language,:coments)
#         end    
        
        
#     end