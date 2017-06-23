
Before do |feature|
    $browser = Watir::Browser.new :chrome
    $browser.goto 'https://ninjainvoices.herokuapp.com'
end

After do |feature|
    $browser.close
end
