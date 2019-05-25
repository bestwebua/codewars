=begin
Extract the domain name from a URL by Vladislav Trotsenko.

=end

def domain_name(url)
  url[/[^.\/]+(?=\.[a-z]+(\/|\z))/]
end

domain_name('https://www.codewars.com/kata/extract-the-domain-name-from-a-url-1')

=begin
def domain_name(url)
  url[/\/\/(www.)?((.[^\.])+)\./, 2]
end
=end