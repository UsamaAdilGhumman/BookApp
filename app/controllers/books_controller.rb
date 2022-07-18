class BooksController < ApplicationController
  def index
    @books = current_author.books.all
  end

  def show
    @book = current_author.books.find(params[:id])
  end

  def new
    @book = current_author.books.new
  end

  def create
    @book  = current_author.books.new(book_params)

    if @book.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book  = current_author.books.find(params[:id])
  end

  def update
    @book  = current_author.books.find(params[:id])

    if @book.update(book_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book  = Book.find(params[:id])
    @book.destroy

    redirect_to root_path, status: :see_other
  end

  def booktag
    #@books  = Book.all
    #@tags = Tag.all

  end
  def asstag
    @book  = Book.find(params[:book_id])
    @tag  = Tag.find(params[:tag_id])

    @var = Booktag.new
    @var.book_id = @book.id
    @var.tag_id = @tag.id

    if @var.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def book_params
    params.require(:book).permit(:title, :des)
  end
end



