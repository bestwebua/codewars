=begin
Simple Encryption #1 - Alternating Split by Vladislav Trotsenko.

For building the encrypted string:
Take every 2nd char from the string. Then the other chars. Do this n times!

Examples:
"This is a test!", 1 -> "hsi  etTi sats!"
"This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"

Write two methods:
def encrypt(text, n)
def decrypt(encrypted_text, n)

For both methods:
If the input-string is null or empty return exactly this value!
If n is <= 0 then return the input text.
=end

def encrypt(text, n=0)
	result = text
	n.times { result = encrypt_algo(result) }
	result
end

def encrypt_algo(text)
	h, even, odd, count = {}, [], [], 0
	text.chars.each { |char| h[count+=1]=char }
	h.select { |key, char| key.even? ? even.push(char) : odd.push(char) }
	text = (even + odd).join('')
end

def decrypt(text, n=0)
	result = text
	n.times { result = decrypt_algo(result) }
	result
end

def decrypt_algo(text)
	h, index1, index2 = {}, 1, 0
	text.split('').each_with_index do |e, i|
    
    if i <= (text.length / 2) - 1
      h[index1] = e 
      index1 += 2
    else      
      h[index2] = e
      index2 += 2
    end; end

  	result = h.sort.map{|k,v| "#{v}"}.join('')
end


encrypt("This is a test!", 1)
decrypt("bdfaceg",1)

=begin
Super refactoring code:

def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end

=end