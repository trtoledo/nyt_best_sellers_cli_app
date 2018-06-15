class NytBestSellersCliApp::CLI

  def call
    greetings
    which_list
    goodbye
  end

  def greetings
    puts "Hi, this is the top 15 Fiction and Nonfiction New York Times Best Sellers books checker!"
  end

  def which_list
    @input = nil

    puts "If you want to check the top 15 New York Times Fiction best seller enter F"
    puts "If you want to check the top 15 New York Times Nonfiction best seller enter N"
    puts "If you want to leave type exit"

    while @input != "exit"
      @input = gets.strip.downcase
      if @input == "f"
        fiction_list

      elsif @input == "n"
        nonfiction_list
      elsif @input == "exit"
        break
      else
        puts "Sorry I didn`t understand."
        which_list
      end
    end#while
  end#which_list

  def fiction_list
    @fiction_books = NytBestSellersCliApp::Book.scrape_fiction_books
    #binding.pry
    @fiction_books.each.with_index(1) { |book, i|
      puts "#{i}. #{book.name} - #{book.author}"}
      puts "If you want more information about any book in this list type it`s number!"
      puts "If you want to choose an other list type 'lists' and to leave type 'exit'"

      while @input != "exit"
        @input = gets.strip.downcase
        if @input.to_i > 0
          the_book = @fiction_books[@input.to_i - 1]
          puts "#{@input}. #{the_book.name} - #{the_book.author}  -  #{the_book.publisher}"
          puts "#{the_book.synopsis}"
          puts "If you want choose an other book of this list type it`s number, if you want an other list type 'lists' or type type 'exit' to leave"
        elsif @input == "lists"
          which_list
        elsif @input == "exit"
          break
        else
          puts "Sorry didn`t understand."
          puts "If you want more information about any book in this list type it`s number!"
          puts "If you want to choose an other list type 'lists' and to leave type 'exit'"
        end
      end
    end
#binding.pry
  def nonfiction_list
    @nonfiction_books = NytBestSellersCliApp::Book.scrape_nonfiction_books
    @nonfiction_books.each.with_index(1) { |book, i|
      puts "#{i}. #{book.name} - #{book.author}"}
      puts "If you want more information about any book in this list type it`s number!"
      puts "If you want to choose an other list type 'lists' and to leave type 'exit'"

      while @input != "exit"
        @input = gets.strip.downcase
        if @input.to_i > 0
          the_book = @nonfiction_books[@input.to_i - 1]
          puts "#{@input}. #{the_book.name} - #{the_book.author}  -  #{the_book.publisher}"
          puts "#{the_book.synopsis}"
          puts "If you want choose an other book of this list type it`s number, if you want an other list type 'lists' or type type 'exit' to leave"
        elsif @input == "lists"
          which_list
        elsif @input == "exit"
          break
        else
          puts "Sorry didn`t understand."
          puts "If you want more information about any book in this list type it`s number!"
          puts "If you want to choose an other list type 'lists' and to leave type 'exit'"
        end
      end
    end

  def goodbye
    puts "See you soon and good reading!"
  end

#binding.pry

end#class
