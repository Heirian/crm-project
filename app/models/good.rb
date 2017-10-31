class Good < Product
  validates :stock, presente: true
  validates :stock, format: /\A[^A-Z`!@#\$%\^&*+_=]+\z/
end
