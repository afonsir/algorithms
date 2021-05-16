# time complexity:  O(n^2)
# space complexity: O(n)

# for j = 2 to A.comprimento
#   chave = A[j]
#   i = j - 1
#   
#   while i > 0 e A[i] > chave
#     A[i + 1] = A[i]
#     i = i - 1
#   end
#
#   A[i + 1] = chave
# end

def sort(a)
  # it starts at second position
  (1...a.size).each do |j|
    key = a[j]
    i = j - 1

    # compare with the previous (right to left)
    while i >= 0 && a[i] > key
      # move to the right
      a[i + 1] = a[i]
      i = i -1
    end

    a[i + 1] = key
  end

  a
end

puts sort([5, 2, 4, 6, 1, 3]).to_s
