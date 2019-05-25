=begin
Breadcrumb Generator by Vladislav Trotsenko.

=end

def generate_bc(url, separator)
  domain = /(.+)\.[a-z]+\//

  url[/#{domain}/]
end

p generate_bc('mysite.com/pictures/holidays.html', ':')