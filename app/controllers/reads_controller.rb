class ReadsController < ApplicationController
  def new
  	
  end

  def edit
   
  end

  def show

  end

  def create
    @book = Read.new(user_id: current_user.id, book_id: bookID, reading:true)
    if @book.save
       flash[:success] = "Book Sucessfully Added!"
       redirect_to (:back)
    else
       flash[:danger] = "Book already exists"
       redirect_to (:back)

       end
   end

  	private
	   def book_params
     		params.require(:book).permit(:book_id, :reading)
#this method only permits the name, email, password and password confirmation #attributes to pass. It raises an error if the :user attribute is missing.
   		end
   		def bookID
   			params[:read][:book_id]
   		end

end
