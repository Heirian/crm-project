class Good < Product
  validates :stock, presence: true
  validates :stock, format: /\A[^A-Z`!@#\$%\^&*+_=]+\z/
end
