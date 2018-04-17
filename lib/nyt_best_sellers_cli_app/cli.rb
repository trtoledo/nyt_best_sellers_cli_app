class NytBestSellersCliApp::CLI

  def call
    greetings
    which_list
    goodbye
  end

  def greetings
    puts "Hi, with this app you can find out what are the to 5 Fiction and Nonfiction New York Times Best Sellers books!"
  end

  def which_list
    @books = NytBestSellersCliApp::Book.today
    input = nil
    while input != "exit"
    puts "If you want to check the top 5 New York Times Fiction best seller enter F"
    puts "If you want to check the top 5 New York Times Nonfiction best seller enter N"
    puts "If you want to leave type exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @books[input.to_i - 1]
      elsif input == "f"
        fiction_list
      elsif input == "n"
        nonfiction_list
      else
        puts "Sorry didn`t undestand type lists or exit.."
      end
    end
  end

  def fiction_list
      puts " Fiction list with name and author 1, 2, 3,..."
      puts "If you want information about any book type it`s number!"
      puts "If you want choose an other list type lists and to leave type exit"
      input = nil
      while input != "exit"
      input = gets.strip.downcase

      case input
      when "1"
        puts "Book 1 info name, author, price and synopsis"
      when "2"
        puts "Book 2 info name, author, price and synopsis"
      when "3"
        puts "Book 3 info name, author, price and synopsis"
      when "4"
        puts "Book 4 info name, author, price and synopsis"
      when "5"
        puts "Book 5 info name, author, price and synopsis"
      when "lists"
        which_list
      else
        puts "Sorry didn`t undestand type lists or exit."
      end
    end
  end
#binding.pry
  def nonfiction_list
    puts " Nonfiction list with name and author 1, 2, 3,..."
    puts "If you want information about any book type it`s number!"
    puts "If you want choose an other list type lists and to leave type exit"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      case input
      when "1"
        puts "Book 1 info name, author, price and synopsis"
      when "2"
        puts "Book 2 info name, author, price and synopsis"
      when "3"
        puts "Book 3 info name, author, price and synopsis"
      when "4"
        puts "Book 4 info name, author, price and synopsis"
      when "5"
        puts "Book 5 info name, author, price and synopsis"
      when "lists"
        list_books
      else
        puts "Sorry didn`t undestand type lists or exit."
      end
    end
  end

  def goodbye
    puts "See you soon and good reading!"
  end

#binding.pry

end#class
