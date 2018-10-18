require 'rest-client'

BASE = -'https://fonts.googleapis.com/css?family='
FAMILY = -ENV.fetch('FAMILY')
PUBLISH_DIR = -'public'
CSS_FILE_NAME = -'google-fonts.css'
INJECTATE = -'font-display: swap;'

def main
  css = get(BASE + FAMILY)
  modified = modify(css)
  save(CSS_FILE_NAME, modified)
end

def get(url)
  RestClinet.get(url)
end

def modify(css)
  subed = INJECTATE + '}'
  css.gsub!('}', subed)
  css
end

def save(css, name)
  path = PUBLISH_DIR + '/' + CSS_FILE_NAME
  File.write(path, css)
end
