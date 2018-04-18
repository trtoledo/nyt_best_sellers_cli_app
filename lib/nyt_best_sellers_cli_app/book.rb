class NytBestSellersCliApp::Book
  attr_accessor :name, :author, :price, :synopsis

  #def self.fiction



  #book_1_f = self.new
  #book_1_f.name = "Book 1 f"
  #book_1_f.author = "Book 1 f Author"
  #book_1_f.price = "Book 1 f Price"
  #book_1_f.synopsis = "Book 1 f Synopsis"

  #[Books...]
  #end

  def self.scrape_fiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
    name = doc.search("h2.title").text
    author = doc.search("p.author").text
    publisher = doc.search("p.publisher").text
    synopsis = doc.search("p.description").text

  #binding.pry
  end

  def self.scrape_nonfiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
    name = doc.search("h2.title").text
    author = doc.search("p.author").text
    publisher = doc.search("p.publisher").text
    synopsis = doc.search("p.description").text

  end

end
