=begin
Naming Files by Vladislav Trotsenko.

Your job here is to create a function that will take three parameters, fmt,
nbr and start, and create an array of nbr elements formatted according to
frm with the starting index start. fmt will have <index_no> inserted at
various locations; this is where the file index number goes in each file.

Description of edge cases:
If nbr is less than or equal to 0, or not whole, return an empty array.
If fmt does not contain '<index_no>', just return an array with nbr elements
that are all equal to fmt.
If start is not an integer, return an empty array.
=end

def name_file(fmt, nbr, start)
 [nbr, start].all?(&:integer?) && nbr > 0 ?
  (start...start+nbr).map { |file| fmt.gsub(/<index_no>/, file.to_s) } : []
end

name_file('IMG <index_no>', 4, 1)

=begin
def name_file(fmt, nbr, start)
 [nbr, start].all? { |i| i.is_a?(Integer) } && nbr > 0 ?
  (start...start+nbr).map { |file| fmt.gsub(/<index_no>/, file.to_s) } : []
end

def name_file(fmt, nbr, start)
  if [nbr, start].all? { |i| i.is_a?(Integer) } && nbr > 0
    result = (start...start+nbr).map do |file|
      fmt.gsub(/<index_no>/, file.to_s)
    end
  end
  result ||= []
end
=end