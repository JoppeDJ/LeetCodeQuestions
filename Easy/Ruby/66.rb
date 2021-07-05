# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    return (digits.join('').to_i + 1).to_s.split('').map { |e| e.to_i }
end
