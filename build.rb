require 'rest-client'

BASE = -'https://fonts.googleapis.com/css?family='
FAMILY = -ENV.fetch('FAMILY')
PUBLISH_DIR = -'public'
CSS_FILE_NAME = -'google-fonts.css'
INJECTATE = -'font-display: swap;'
REQUEST_HEADERS = {
  'User-Agent' => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36' #  Chromium 69
}.freeze

def main
  css = get(BASE + FAMILY)
  modified = modify(css)
  save(CSS_FILE_NAME, modified)
end

def get(url)
  RestClient.get(url, REQUEST_HEADERS)
end

def modify(css)
  subed = INJECTATE + '}'
  css.gsub!('}', subed)
  css
end

def save(name, css)
  path = PUBLISH_DIR + '/' + CSS_FILE_NAME
  Dir.mkdir(PUBLISH_DIR)
  File.write(path, css)
end

main if $0 == __FILE__
