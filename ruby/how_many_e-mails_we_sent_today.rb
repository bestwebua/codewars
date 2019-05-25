=begin
Write a function that will return the integer number of e-mails
sent in the percentage of the limit.

When:
the argument $sent = 0, then return the message: "No e-mails sent";
the argument $sent >= $limit, then return the message: "Daily limit is reached";
the argument $limit is empty, then default $limit = 1000 emails;
=end

def get_percentage(sent, limit=1000)
  case calc = sent*100/limit
    when 0 then 'No e-mails sent'
    when 1...100 then "#{calc}%"
    else 'Daily limit is reached'
  end
end

get_percentage(998, 1000)