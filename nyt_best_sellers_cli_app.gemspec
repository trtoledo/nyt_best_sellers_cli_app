
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nyt_best_sellers_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "nyt_best_sellers_cli_app"
  spec.version       = NytBestSellersCliApp::VERSION
  spec.authors       = ["'Tomas Toledo'"]
  spec.email         = ["'trtoledo1977@gmail.com'"]

  spec.summary       = %q{CLI that displays the top 5 New York Times best sellers.}
  spec.description   = %q{CLI gives the top 5 New York Times fiction and nonfiction best sellers in tow lists.}
  spec.homepage      = "https://github.com/trtoledo/nyt_best_sellers_cli_app.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end
