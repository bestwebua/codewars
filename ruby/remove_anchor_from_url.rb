=begin
Remove anchor from URL by Vladislav Trotsenko.

Complete the function/method so that it returns the url with anything after the anchor (#) removed.

# returns 'www.codewars.com'
remove_url_anchor('www.codewars.com#about')

# returns 'www.codewars.com?page=1' 
remove_url_anchor('www.codewars.com?page=1')
=end

def remove_url_anchor(url)
  url.sub(/#\w+/, '')
end

remove_url_anchor('www.codewars.com#about')

=begin
O_o solution :)
def remove_url_anchor(url)
  url.split("#").shift
end
=end