select
  ord.Date as order_date,
  pc.CategoryName as category_name,
  pr.ProdName as product_name,
  pr.Price as product_price,
  ord.Quantity as order_qty,
  pr.Price*ord.Quantity as total_sales,
  cu.CustomerEmail as cust_email,
  cu.CustomerCity as cust_city
from `rakamin_dataset.Customers` as cu
  join `rakamin_dataset.orders` as ord
    on cu.CustomerID = ord.CustomerID
  join `rakamin_dataset.products` as pr
    on ord.ProdNumber = pr.ProdNumber
  join `rakamin_dataset.product_category` as pc
    on pr.Category = pc.CategoryID
order by 1,5,2


