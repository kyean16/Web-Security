class BooksController < ApplicationController
	def find
    	@books = Book.all
  	end

  	def addBookData
    	@book = Book.new
  	end

  	def create
	    @book = Book.new(book_params)
	    if @book.save
	       flash[:success] = "Book Sucessfully Created"
	       redirect_to action: 'find'
	    else
	       flash.now[:danger] = "Failure to create Book, please try again"
	       render 'addBookData'
	       end
	end

	def book_params
		#params.require(:user).permit(:name, :email, :password, :password_confirmation)
       params.require(:book).permit(:bookType,:authorFirst,:authorLast,:title,:genre,:year,:isbn)
#this method only permits the name, email, password and password confirmation #attributes to pass. It raises an error if the :user attribute is missing.
   		end
end
