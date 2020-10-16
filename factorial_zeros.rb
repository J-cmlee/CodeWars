def zeros(n)
  n < 5 ? 0 : (n / 5) + zeros(n / 5)
end