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
    input = nil
    while input != "exit"
    puts "If you want to check the top 5 New York Times Fiction best seller enter F"
    puts "If you want to check the top 5 New York Times Nonfiction best seller enter N"
    puts "If you want to leave type exit"
      input = gets.strip.downcase

    if input == "f"
      fiction_list
    elsif input == "n"
      nonfiction_list
    else
      puts "Sorry didn`t undestand type lists or exit.."
      which_list

      #if input.to_i > 0
        #puts @books[input.to_i - 1]
      #elsif input == "f"
        #fiction_list
      #elsif input == "n"
        #nonfiction_list
      #else
        #puts "Sorry didn`t undestand type lists or exit.."
      end
    end
  end#which_list

  def fiction_list
    @fiction_books = NytBestSellersCliApp::Book.scrape_fiction_books
    @fiction_books.each.with_index(1) do |book, i|
    puts "#{i}. #{book.name} - #{book.author}"
  end
    puts "If you want information about any book type it`s number!"
    puts "If you want choose an other list type lists and to leave type exit"
    input = nil
      while input != "exit"
      input = gets.strip.downcase

        if input.to_i > 0
          the_book = @fiction_books[input.to_i - 1]
          puts "#{i}. #{the_book.name} - #{the_book.author}  -  #{the_book.publisher}"
          puts "#{the_book.synopsis}"
        elsif input == "lists"
          which_list
        else
          puts "Sorry didn`t undestand type lists or exit."
        end
      end
    end
#binding.pry
  def nonfiction_list
    @nonfiction_books = NytBestSellersCliApp::Book.scrape_nonfiction_books
    @nonfiction_books.each.with_index(1) do |book, i|
    puts "#{i}. #{book.name} - #{book.author}"
  end
    puts "If you want information about any book type it`s number!"
    puts "If you want choose an other list type lists and to leave type exit"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        the_book = @nonfiction_books[input.to_i - 1]
        puts "#{i}. #{the_book.name} - #{the_book.author}  -  #{the_book.publisherq}"
        puts "#{the_book.synopsis}"
      elsif input == "lists"
        which_list
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
