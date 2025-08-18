create database Website123;

use Website123;

-- Customers
create table Customers (
    customer_id int auto_increment primary key,
    name varchar(100),
    email varchar(100) unique,
    phone varchar(15),
    password varchar(255),
    address varchar(255),
    profile_picture varchar(255),
    date_joined datetime default current_timestamp,
    is_verified boolean default false,
    last_login datetime
    );
    
-- Destinations
create table Destinations (
    destination_id int auto_increment primary key,
    name varchar(100),
    country varchar(100),
    description text,
    image_url varchar(255)
    );
    
-- TourPackages
create table TourPackages (
    package_id int auto_increment primary key,
    title varchar(150),
    description text,
    price decimal(10,2),
    duration int,
    destination_id int,
    start_date date,
    end_date date,
    max_persons int,
    images text,
    package_type varchar(50),
    is_featured boolean default false,
    foreign key (destination_id) references Destinations(destination_id)
    );
    
-- Discounts
create table Discounts (
    discount_id int auto_increment primary key,
    code varchar(50) unique,
    description text,
    percentage int,
    valid_from date,
    valid_to date
    );
    
-- Bookings
create table Bookings(
    booking_id int auto_increment primary key,
    customer_id int,
    package_id int,
    booking_date date,
    num_persons int,
    status varchar(50),
    special_requests text,
    booking_source varchar(50),
    cancelled_date date,
    booking_reference varchar(100),
    discount_id int,
    foreign key (customer_id) references Customers(customer_id),
    foreign key (package_id) references TourPackages(package_id),
    foreign key (discount_id) references Discounts(discount_id)
    );
    
-- Payments
create table Payments (
    payment_id int auto_increment primary key,
    booking_id int,
    amount decimal(10,2),
    payment_date date,
    payment_method varchar(50),
    payment_status varchar(50),
    transaction_id varchar(100),
    currency varchar(10),
    foreign key (booking_id) references Bookings(booking_id)
    );
    
-- Reviews
create table Reviews (
    review_id int auto_increment primary key,
    customer_id int,
    package_id int,
    rating int,
    comment text,
    review_date date,
    is_approved boolean default false,
    reply text,
    foreign key (customer_id) references Customers(customer_id),
    foreign key (package_id) references TourPackages(package_id)
    );
    
-- Guides
create table Guides (
    guide_id int auto_increment primary key,
    name varchar(100),
    phone varchar(15),
    email varchar(100),
    language varchar(50),
    experience_years int,
    rating decimal(3,2),
    bio text,
    profile_picture varchar(255)
    );
    
-- Assigning Guides To Packages
create table PackageGuides (
    package_guide_id int auto_increment primary key,
    package_id int,
    guide_id int,
    foreign key (package_id) references TourPackages(package_id),
    foreign key (guide_id) references Guides(guide_id)
    );
        
-- Appling Discount To The Bookings
alter table Bookings add foreign key (discount_id) references Discounts(discount_id);

-- Actitivities within Packages
create table Activities (
    activitiy_id int auto_increment primary key,
    package_id int,
    name varchar(100),
    activity_date date,
    start_time datetime,
    end_time datetime,
    location varchar(100),
    description text,
    foreign key (package_id) references TourPackages(package_id)
    );
    
-- Admins
create table Admins (
    admin_id int auto_increment primary key,
    username varchar(50) unique,
    password varchar(255),
    role varchar(50),
    email varchar(100),
    last_login datetime
    );
    
    
