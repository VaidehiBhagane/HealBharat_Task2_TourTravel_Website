-- Retieving the data
use website123;

-- 1) Customer Analysis
 -- List of customers who haven't booked yet
 select * from Customers where customer_id not in
 (select distinct customer_id from Bookings);
 
 -- Top customers by number of bookings:
 select c.name, count(*) as bookings_count
 from Customers c
 join Bookings b on c.customer_id = b.customer_id
 group by c.customer_id
 order by bookings_count desc
 limit 10;
 
 -- 2) Booking Analysis
 -- Find most popular packages
 select tp.title, count(*) as num_bookings
 from TourPackages tp
 join Bookings b on tp.package_id = b.package_id
 group by tp.package_id 
 order by num_bookings desc;
 
 -- Monthly booking trends
 select month(booking_date) as month, count(*) as bookings
 from Bookings
 group by month
 order by month;
 
 -- 3) Revenue and payment analysis
 -- Total revenue per package
 select tp.title, sum(p.amount) as total_revenue
 from TourPackages tp
 join Bookings b on tp.package_id = b.package_id
 join Payments p on b.booking_id = p.booking_id
 where p.payment_status = 'Completed'
 group by tp.package_id
 order by total_revenue desc;
 
 -- Revenue by month
 select month(p.payment_date) as month, sum(p.amount) as total_revenue
 from Payments p
 where p.payment_status = 'Completed'
 group by month
 order by month;
 
 
 -- 4) Review Analysis and quality
 -- Average rating per package
 select tp.title, Avg(r.rating) as avg_rating
 from TourPackages tp
 join Reviews r on tp.package_id = r.package_id
 where r.is_approved = true
 group by tp.package_id
 order by avg_rating desc;
 
 -- List all reviews not yet approved
 select * from Reviews where is_approved = false;
 
 
 -- 5) Discount utilization
 select d.code, count(*) as used_count
 from Discounts d
 join Bookings b on d.discount_id = b.discount_id
 group by d.discount_id
 order by used_count desc;
 
 
 -- 6) Guide Assignment
 -- Guide workload
 select g.name, count(*) as assigned_packages
 from Guides g
 join PackageGuides pg on g.guide_id = pg.guide_id
 group by g.guide_id
 order by assigned_packages desc;
 
 
 -- 7) Activity trends
 -- upcoming activities with date and location
 select a.name, a.activity_date, a.location
 from Activities a
 where a.activity_date >= curdate()
 order by a.activity_date;
 
 
 -- 8) Marketing Insights
 -- Featured packages with total bookings
 select tp.title, count(b.booking_id) as bookings
 from TourPackages tp
 left join Bookings b on tp.package_id = b.package_id
 where tp.is_featured = true
 group by tp.package_id;
 
 
 -- 9) Operation and admin
 -- Recent cancellation
 select * from Bookings
 where status = 'Cancelled'
 order by cancelled_date desc
 limit 10;
 
 -- Admin last login history
 select username, role, last_login from Admins order by last_login desc;
 
 
 -- 10) Geographic Insights
 -- Packages per destination
 select d.name, count(tp.package_id) as package_count
 from Destinations d
 left join TourPackages tp on d.destination_id = tp.destination_id
 group by d.destination_id;