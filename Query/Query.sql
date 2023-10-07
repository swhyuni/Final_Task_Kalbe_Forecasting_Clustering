-- Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
select "Marital Status", round(avg(age),2) as rata_rata_umur
from final_project.customer c 
group by "Marital Status";
-- Berapa rata-rata umur customer jika dilihat dari gender nya ?
select "gender", round(avg(age),2) as rata_rata_umur
from final_project.customer c 
group by "gender";
-- Tentukan nama store dengan total quantity terbanyak!
select s.storename, sum(t.qty) as total_qty
from final_project.store s
inner join final_project."Transaction" t 
on s.storeid = t.storeid
group by s.storename
order by total_qty desc 
limit 1;
-- Tentukan nama produk terlaris dengan total amount terbanyak!
select p."Product Name", sum(t.totalamount) as alltotalamount
from final_project.product p 
inner join final_project."Transaction" t 
on p.productid = t.productid 
group by p."Product Name" 
order by alltotalamount desc 
limit 1;