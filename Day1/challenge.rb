class Decodifier
    def initialize(string)
        @string = string
    end
    
    def worker
        sum = 0
        @string.each_line do |line|
            digits = line.scan(/\d/).map(&:to_i)
            last_digit = digits.length == 1 ? digits[0] : digits[-1]
            sum += (digits[0] * 10 + last_digit)
            #print digits
            #print sum
        end
        return sum
    end
end

string_text_file = File.open('input.txt')
string_text_content = string_text_file.read
string_text_file.close

decodifier = Decodifier.new(string_text_content)
puts decodifier.worker