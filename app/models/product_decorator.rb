require 'rdiscount'
Product.class_eval do
  def description_html
    desc = description.empty? ? 'This product has no description' : description
    RDiscount.new(desc, :smart).to_html
  end
end
