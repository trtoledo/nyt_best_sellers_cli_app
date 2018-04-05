class NytBestSellersCliApp::CLI

  def call
    list_books
    menu
    goodbye
  end

  def list_books
    puts "If you want to check the top 5 New York Times Fiction best seller enter F"
    puts "If you want to check the top 5 New York Times Nonfiction best seller enter N"
    puts "If you want to leave type exit"
  end

  def menu
    input = []
    while input != "exit"
      input = gets.strip.downcase
      case input
      when input = "f"
        fiction_list
      when input = "n"
        nonfiction_list
      else
        puts "Sorry didn`t undestand type lists or exit."
      end
    end
  end

  def fiction_list
    puts " Fiction list with name and author 1, 2, 3,..."
    puts "If you want information about any book type it`s number!"
    puts "If you want choose the nonfiction list type lists and to leave type exit"
    input = []
    while input != "exit"
      input = gets.strip.downcase
      case input
      when input = "1"
        puts "Book 1 info name, author, price and synopsis"
      when input = "2"
        puts "Book 2 info name, author, price and synopsis"
      when input = "3"
        puts "Book 3 info name, author, price and synopsis"
      when input = "4"
        puts "Book 4 info name, author, price and synopsis"
      when input = "5"
        puts "Book 5 info name, author, price and synopsis"
      when input = "lists"
        list_books
      else
        puts "Sorry didn`t undestand type lists or exit."
      end
    end
  end

  def nonfiction_list
    puts " Nonfiction list with name and author 1, 2, 3,..."
    puts "If you want information about any book type it`s number!"
    puts "If you want to leave type exit"
    input = []
    while input != "exit"
      input = gets.strip.downcase
      case input
      when input = "1"
        puts "Book 1 info name, author, price and synopsis"
      when input = "2"
        puts "Book 2 info name, author, price and synopsis"
      when input = "3"
        puts "Book 3 info name, author, price and synopsis"
      when input = "4"
        puts "Book 4 info name, author, price and synopsis"
      when input = "5"
        puts "Book 5 info name, author, price and synopsis"
      else
        puts "Sorry didn`t undestand type lists or exit."
      end
    end
  end

  def goodbye
    puts "See you soon and good reading!"
  end



end
