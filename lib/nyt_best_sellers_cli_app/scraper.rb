class NytBestSellersCliApp::Scraper

  def self.scrape_fiction
    puts "SCRAPING FICTION BOOKS *********"
    Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
  end

  def self.scrape_nonfiction
    puts "SCRAPING NONFICTION BOOKS *********"
    Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
  end

end
