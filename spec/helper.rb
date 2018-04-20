def load_driver_fixture(driver)
  file_path = File.expand_path("../fixtures/#{driver}.html", __FILE__)
  html_page = File.open(file_path).read
  response = double('response', body: html_page)
end
