class NytBestSellersCliApp::Scraper

  def self.scrape_fiction
    puts "SCRAPING FICTION *********"
    Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
  end

  def self.scrape_nonfiction
    puts "SCRAPING NONFICTION *********"
    Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
  end

end
