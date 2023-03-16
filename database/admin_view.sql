select prodImg, ProdName, size, stock, price 
from Product
inner join Prod_Variant 
on Product.prodID = Prod_Variant.prodID