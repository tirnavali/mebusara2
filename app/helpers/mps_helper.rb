module MpsHelper
    def yetkili?
        if session[:user_id]
          true
        else
          respond_to {|format| format.html { redirect_to :mps, notice: "Yetkiniz yok." }      }  
        end
      end
end
