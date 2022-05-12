-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220506.44a5cb2d56
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 02:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `img`) VALUES
(1, 'Cars', 'https://media.ed.edmunds-media.com/audi/r8/2020/oem/2020_audi_r8_coupe_performance_fq_oem_1_1600.jpg'),
(2, 'Seat Covers', 'https://media.cablematic.com/__sized__/images_1000/co10100-01-thumbnail-1080x1080-70.jpg'),
(3, 'Steering Wheels', 'https://m.media-amazon.com/images/I/41oSM-Uw1pL.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `model` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `catid` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `color`, `model`, `description`, `catid`, `img`) VALUES
(1, 'Audi R8 V10', 'Red', 2022, '                        <b>Interior:</b><br>\r\n                        Front head room	39 \"<br>\r\n                        Front shoulder room	55 \"<br>\r\n                        Front leg room 40.9 \"<br>\r\n                        Luggage capacity 8.0 cu.ft.<br>\r\n                        Maximum cargo capacity 8.0 cu.ft.<br>\r\n                        Standard seating 2.<br><br>\r\n                        <b>Exterior:</b><br>\r\n                        Length 174.4 \"<br>\r\n                        Body width 76.4 \"<br>\r\n                        Body height	48.7 \"<br>\r\n                        Wheelbase 104.3 \"<br>\r\n                        Curb 3,638 lbs.<br>\r\n                        Gross weight 4,354 lbs.<br><br>\r\n                        <b>Fuel:</b><br>\r\n                        Fuel tank capacity 19.3 gal.<br>\r\n                        EPA mileage estimates 13 City / 19 Hwy.<br><br>\r\n                        <b>performance:</b><br>\r\n                        Base engine size 5.2 liters.<br>\r\n                        Base engine type V-10.<br>\r\n                        Horsepower 610 hp.<br>\r\n                        Horsepower rpm 8,100<br>\r\n                        Torque 413 lb-ft.<br>\r\n                        Torque rpm 6,700<br>\r\n                        Payload	551 lbs.<br>\r\n                        Drive type all-wheel<br>\r\n                        Turning radius 18.3 \'\'<br>', 1, 'https://media.ed.edmunds-media.com/audi/r8/2020/oem/2020_audi_r8_coupe_performance_fq_oem_1_1600.jpg'),
(2, 'Mercedes Benz SL63 AMG', 'Yellow', 2022, '<b>Engine</b>: Twin-Turbocharged 4.0-liter V8<br><br>\r\n\r\n<b>Output</b>: 577 Horsepower / 590 Pound-Feet<br><br>\r\n\r\n<b>Transmission</b>: Nine-Speed Multi-Clutch Transmission<br><br>\r\n\r\n<b>Drive Type</b>: All-Wheel Drive<br><br>\r\n\r\n<b>Speed</b>: 0-100 km/h 3.5 Seconds<br><br>\r\n\r\n<b>Maximum Speed</b>: 196 MPH<br><br>\r\n\r\n<b>Efficiency</b>: TBD<br><br>\r\n\r\n<b>Weight</b>: 3,900 Pounds<br><br>\r\n\r\n<b>Seating Capacity</b>: 4<br><br>\r\n\r\n<b>Cargo Volume</b>: 7.5 Cubic Feet<br><br>\r\n', 1, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/21c0727-011-1641948034.jpg?resize=640:*'),
(3, 'Porsche 911 Carrera S', 'Silver', 2022, '                            <b>Exterior Dimensions:</b><br>\r\n                            Length: 178.6 in<br>\r\n                            Height: 51.3 in<br>\r\n                            Max Width: 74.9 in<br>\r\n                            Front Width: 62.4 in<br>\r\n                            Rear Width: 63 in<br>\r\n                            Wheelbase: 96.5 in<br><br>\r\n                            <b>Interior Space</b><br>\r\n                            Seating Capacity: 4 seater<br><br>\r\n                            <b>Weight and Towing:</b><br>\r\n                            Curb Weight: 3,636 lbs<br><br>\r\n\r\n                            <b>Fuel Economy:</b><br>\r\n                            Combined: 17 MPG<br>\r\n                            City: 15 MPG<br>\r\n                            Highway: 20 MPG<br><br>\r\n                            <b>Fuel Tank:</b><br>\r\n                            Fuel Tank Capacity: 17.6 gallons<br>\r\n                            Cruising Range City: 264 miles<br>\r\n                            Cruising Range Highway: 352 miles<br><br>\r\n                            <b>Emissions:</b><br>\r\n                            CO2 Emissions @ 15K mi/year: 10.3 Tons/yr<br><br>\r\n\r\n                            <b>Engine and Transmission</b><br>\r\n                            Engine: 3.8L Twin-Turbo Flat 6 Ga<br>\r\n                            Horsepower: 640 hp @ 6750 rpm<br>\r\n                            Torque: 590 lb-ft @ 2500 rpm<br>\r\n                            Transmission: 8-Speed Automatic<br>\r\n                            Drivetrain: All-Wheel Drive<br><br>\r\n                            <b>Steering:</b><br>\r\n                            Steering Type: Rack-Pinion<br>\r\n                            Turning Diameter: 35.8 ft<br><br>\r\n                            <b>Wheels:</b><br>\r\n                            Wheels Type: Aluminum Wheels<br>\r\n                            Front Wheel Size: 20\" x 9\"<br>\r\n                            Rear Wheel Size: 21\" x 11.5\"<br><br>\r\n                            <b>Suspension:</b><br>\r\n                            Front Suspension: Strut<br>\r\n                            Rear Suspension: Multi-Link<br><br>\r\n                            <b>Tires:</b><br>\r\n                            Front Tire: P255/35YR20<br>\r\n                            Rear Tire: P315/30YR21<br>', 1, 'https://cdn-ds.com/stock/2022-Porsche-911-Carrera-S-Newport-Beach-CA/seo/ECL2809-WP0AB2A97NS220819/sz_128401/1f454fd5cd0b9987f3509d3c66fe6a5a.jpg'),
(4, 'BMW M8 Competition', 'Blue', 2022, '                        <b>Interior:</b><br>\r\n                        Seating Capacity: 2 seater<br>\r\n                        Seat Leg Room: 42.1 in<br>\r\n                        Seat Headroom: 38.9 in<br>\r\n                        Seat Shoulder Room: 57.2 in<br><br>\r\n                        <b>Exterior:</b><br>\r\n                        Length: 191.2 in<br>\r\n                        Height: 53 in<br>\r\n                        Max Width: 74.9 in<br>\r\n                        Front Width: 64.1 in<br>\r\n                        Rear Width: 64.6 in<br>\r\n                        Wheelbase: 111.1 in<br>\r\n                        Ground Clearance: 5 in<br><br>\r\n                        <b>Fuel:</b><br>\r\n                        Fuel Tank Capacity: 20.1 gallons<br>\r\n                        Cruising Range City: 301.5 miles<br>\r\n                        Cruising Range Highway: 422.1 miles<br><br>\r\n                        <b>performance:</b><br>\r\n                        Engine: 4.4L Twin-Turbo V8 Gas<br>\r\n                        Horsepower: 617 hp @ 6000 rpm<br>\r\n                        Torque: 553 lb-ft @ 1800 rpm<br>\r\n                        Transmission: 8-Speed Automatic<br>\r\n                        Drivetrain: All-Wheel Drive<br><br>\r\n                        <b>Steering</b><br>\r\n                        Steering Type: Rack-Pinion<br>\r\n                        Turning Diameter: 39 ft<br><br>\r\n                        <b>Wheels</b>\r\n                        Wheels Type: Aluminum Wheels<br>\r\n                        Front Wheel Size: 20\" x 9.5\"<br>\r\n                        Rear Wheel Size: 20\" x 10.5\"<br><br>\r\n                        <b>Suspension</b><br>\r\n                        Front Suspension: Double Wishbone<br>\r\n                        Rear Suspension: Multi-Link<br><br>\r\n                        <b>Tires</b><br>\r\n                        Front Tire: P275/35YR20<br>\r\n                        Rear Tire: P285/35YR20<br>', 1, 'http://cdn.carbuzz.com/gallery-images/1600/880000/500/880567.jpg'),
(5, 'Toyota GR Supra', 'Blue', 2022, '                            <b>Powertrain:</b><br>\r\n                            Engine: 3,0 l I-6<br>\r\n                            Power: 335 hp @ 5,000 rpm (250 kW)<br>\r\n                            Torque: 365 lb·ft @ 1,600 - 4,500 rpm (495 N·m)<br>\r\n                            Induction: Turbocharged<br>\r\n                            Fuel type: Premium<br>\r\n                            Transmission: 8-speed automatic<br>\r\n                            Drivetrain: RWD<br><br>\r\n                            <b>Catagory:</b><br>\r\n                            Vehicle type: Coupe<br>\r\n                            Category: Sport car<br>\r\n                            Assembly: Graz, AT<br>\r\n                            Generation: 5<br><br>\r\n                            <b>Fuel efficiency:</b><br>\r\n                            City: 9.9 L/100km<br>\r\n                            Highway: 7.7 L/100km<br>\r\n                            Combined: 8.9 L/100km<br>\r\n                            Autonomy: 584 km<br>\r\n                            CO₂ emissions: 208 g/km<br><br>\r\n                            <b>Steering / Suspension / Brakes / Tires:</b><br>\r\n                            Steering: rack and pinion, electric assistance<br>\r\n                            Turning diameter: 10 m (34\')<br>\r\n                            Front suspension: independent, Macpherson strut<br>\r\n                            Rear suspension: independent, multi-link<br>\r\n                            Front brakes: Disc (ABS)<br>\r\n                            Rear brakes: Disc (ABS)<br>\r\n                            Front tires: P255/35YR19<br>\r\n                            Rear tires: P275/35YR19<br><br>\r\n                            <b>Capacity:</b><br>\r\n                            Passengers: 2<br>\r\n                            Trunk: 290 l (10 cu ft)<br>\r\n                            Fuel tank: 52 l (11 gal)<br>\r\n                            Towing capacity: N/A<br>', 1, 'https://i.pinimg.com/736x/0d/ba/c5/0dbac52b51ea8399f30930e0f3006f10.jpg'),
(6, 'KIA Stinger', 'Green', 2022, '                            <b>Overview:</b><br>\r\n                            Transmission: 8-speed shiftable automatic<br>\r\n                            Drive Type: All wheel drive<br>\r\n                            Cylinders: Inline 4<br>\r\n                            Combined MPG: 24 mpg<br>\r\n                            Total Seating: 5<br>\r\n                            Basic Warranty: 5 yr./ 60,000 mi.<br>\r\n                            Drive Type: All wheel drive<br><br>\r\n                            <b>Fuel & MPG:</b><br>\r\n                            Combined MPG: 24 mpg<br>\r\n                            EPA Mileage Est. (Cty/Hwy): 21/29 mpg<br>\r\n                            Fuel Tank Capacity: 15.9 gal.<br>\r\n                            Fuel Type: Premium unleaded (recommended)<br>\r\n                            Range In Miles (Cty/Hwy): 333.9/461.1 mi.<br><br>\r\n                            <b>Engine:</b><br>\r\n                            Base Engine Size: 2.0 l<br>\r\n                            Base Engine Type: Gas<br>\r\n                            Cam Type: Double overhead cam (dohc)<br>\r\n                            Cylinders: Inline 4<br>\r\n                            Horsepower: 255 hp @ 6,200 rpm<br>\r\n                            Torque: 260 lb-ft @ 1,400 rpm<br>\r\n                            Valve Timing: Variable<br>\r\n                            Valves: 16<br>', 1, 'https://web2.wheelz.me/wp-content/uploads/2021/03/17033_2022_Stinger_GT_and_GT2-Line.jpg'),
(7, 'Hyundai Elantra N', 'Light Blue', 2022, '                        <b>Overview:</b><br>\r\n                        Transmission: 7-speed automated manual<br>\r\n                        Drive Type: Front wheel drive<br>\r\n                        Cylinders: Inline 4<br>\r\n                        Combined MPG: 31 mpg<br>\r\n                        Total Seating: 5<br>\r\n                        Basic Warranty: 5 yr./ 60,000 mi.<br>\r\n                        Drive Type: Front wheel drive<br><br>\r\n                        <b>Fuel & MPG:</b><br>\r\n                        Combined MPG: 31 mpg<br>\r\n                        EPA Mileage Est. (Cty/Hwy): 28/36 mpg<br>\r\n                        Fuel Tank Capacity: 12.4 gal.<br>\r\n                        Fuel Type: Regular unleaded<br>\r\n                        Range In Miles (Cty/Hwy): 347.2/446.4 mi.<br><br>\r\n                        <b>Engine:</b><br>\r\n                        Base Engine Size: 1.6 l<br>\r\n                        Base Engine Type: Gas<br>\r\n                        Cam Type: Double overhead cam (dohc)<br>\r\n                        Cylinders: Inline 4<br>\r\n                        Horsepower: 201 hp @ 6,000 rpm<br>\r\n                        Torque: 195 lb-ft @ 1,500 rpm<br>\r\n                        Valve Timing: Variable<br>\r\n                        Valves: 16<br>', 1, 'https://images.hgmsites.net/hug/2022-hyundai-elantra_100820762_h.jpg'),
(8, 'Camaro ZL1', 'Red', 2022, '                            <b>Engine and Transmission:</b><br>\r\n                            Engine: 6.2L Turbo V8 Gas<br>\r\n                            Horsepower: 650 hp @ 6400 rpm<br>\r\n                            Torque: 650 lb-ft @ 3600 rpm<br>\r\n                            Transmission: 6-Speed Manual / 10-Speed Automatic (+$1,595)<br>\r\n                            Drivetrain: Rear-Wheel Drive<br><br>\r\n                            <b>Steering:</b><br>\r\n                            Steering Type: ZF Electric Variable Power Rack & Pinion<br>\r\n                            Turning Diameter Wall to Wall: 38.4 ft<br><br>\r\n                            <b>Wheels:</b><br>\r\n                            Wheels Type: Aluminum Wheels<br>\r\n                            Front Wheel Size: 20\" x 10\"<br>\r\n                            Rear Wheel Size: 20\" x 11\"<br>\r\n                            <b>Suspension:</b><br>\r\n                            Front Suspension: MacPherson Strut with Dual Lower Ball Joints and Monotube Struts<br>\r\n                            Rear Suspension: Independent 5-Link with Monotube Shocks<br><br>\r\n                            <b>Tires:</b><br>\r\n                            Front Tire: 285/30R20<br>\r\n                            Rear Tire: 305/30R20<br>', 1, 'https://mundomotorescr.com/wp-content/uploads/2021/07/Hennessey-celebra-30-anos-con-ultima-version-Exorcist-Camaro-ZL1-1140x641.jpg'),
(9, 'Red Seat Covers', 'Red', 2021, 'Compatible Vehicles : Cover Fits all Standard Car Seats\r\nMaterial :Polyester,Material is washable and breathable\r\nSuitable range: Suitable for most car seats on the market, all seasons, make your car a new look\r\nFunction: high-quality seat cover fabric breathable, feel comfortable, dirt, wear, easy to clean, do not fall off, not too hot in\r\nsummer, not too cold in winter, for the four seasons universal senior seat cover\r\nEasy to Clean 100% Washable Easy Installation Spandex Back Provides Universal Fit As most fabrics these are subject to\r\nfading over time.\r\nItem Type: Seat Covers\r\nItem Name: Universal Car Seat Covers\r\nItem Type: Interior Accessories & Seat Covers\r\nsize:30cmx30cmx10cm\r\nMaterial:Polyester\r\ncolour:Black + red/Black + Blue/Black + Rose/Black + Orange/Black + Grey\r\nPackage Contents:\r\n2 x Front seat cover 118 x 55cm\r\n1 x rear seat cover 115 x 53cm\r\n1 x back cover 125 x 60cm\r\n5 x headrest cover 27 x 26cm\r\n1 x Packing metal hook accessories\r\nOnly the above package content, other products are not included.\r\nNote: Light shooting and different displays may cause the color of the item in the picture a little different from the real thing.\r\nThe measurement allowed error is +/- 1-3cm.', 2, 'https://media.cablematic.com/__sized__/images_1000/co10100-01-thumbnail-1080x1080-70.jpg'),
(10, 'Saddle Blanket Seat Covers', 'Black', 2020, 'Superior heavyweight coated ShearComfort Saddle Blanket seat covers add strength and durability to your seats.\r\nThey are designed to keep dust and spills off your original upholstery.\r\nSaddle Blanket has heavy duty, industrial grade, Black Atomic Poly Fabric on sides, back and Trim. Water, stain and fade resistant!\r\n\r\nSaddle Blanket seat covers are made from a 2500 Denier high wearing woven material.\r\nIf Sport option is selected, the Atomic material features a DWR top coat and PU undercoat for high abrasion and 100% waterproof protection against any spills.', 2, 'https://www.shearcdn.com/images/products/saddle/slider/saddle-blanket-seat-covers-40-20-40-black1.jpg'),
(11, 'Black Faux Leather Seat Covers', 'Black', 2022, 'SOFT & LUXURIOUS - Add some style and protection to your automobile with our Motor Trend Seat Covers. We use only high-quality microfiber leather to provide cozy yet durable protection for your car upholstery. They\'re not only soft to the touch, but also waterproof!\r\n\r\nPADDED FOR COMFORT - Unlike other seat cushions for cars, we made sure that comfort was a priority for our products. The entire seat mat is lined with a high-density foam to provide maximum comfort and relief during long trips and daily commutes.\r\n\r\nWON\'T MOVE OR SLIDE AROUND - You won\'t have to worry about fixing or reinstalling these seat cushions every time you drive your car. The backside is coated with small rubber nibs to prevent any movement when in use. Anchors attached to elastic straps also provide secure reinforcement.\r\n\r\nCONVENIENT FRONT POCKETS - Easily store your cellphone, wallet and more using the built-in front pocket! The stitched divider helps to keep your goods organized. Conveniently add some extra storage and protection to your car using these seat covers.\r\n\r\nUNIVERSAL FIT FOR MOST VEHICLES - We made sure to design our seat covers to fit in nearly any vehicle. This seat cushion measures 21” x 19. 5”. Please see the provided pictures for installation examples.', 2, 'https://www.ubuy.com/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvODFZSnZZcVgtQVMuX0FDX1NMMTUwMF8uanBn.jpg'),
(12, 'D8 Universal Fit Leather Steering Wheel Cover', 'Black', 2019, 'No description', 3, 'https://images-na.ssl-images-amazon.com/images/I/41oSM-Uw1pL.SS500.jpg'),
(13, 'Black and Red Microfiber Leather Steering Wheel Cover', 'Red and Black', 2020, 'ARMOR UP YOUR CAR INTERIOR: The durable and easy-to-install steering wheel cover is the premier option for covering an old or worn original factory steering wheel. The delicate splicing design adds texture to the interior of your car. HAND-SAVER: The fine and supple microfiber leather is much softer than factory-installed steering wheel. It provides a comfortable touch when driving, helps reduce driving fatigue, and brings you a pleasant driving experience. NON-SLIP AND PROTECTION: Constructed from less slippery microfiber leather exterior and rubber lining, this car wheel cover adds secured safety performance when driving. It also protects your steering wheel from sunburn, scratches, fading, wear, and dirt. NO MORE STICKY: The auto steering wheel cover is comfy to hold, it absorbs the hand-sweat that the summer heat causes, and allows you to grip the steering wheel much better. READY TO INSTALL: Warm up the steering cover, and slip it on your steering wheel. Installation is fairly easy, any adult can install this steering wheel cover. Suitable for standard size steering wheels with outer diameter of 14 1/2-15 inches, please carefully measure the size of your steering wheel before purchasing.', 3, 'https://m.media-amazon.com/images/I/91BUoIb26OL._AC_SY355_.jpg'),
(14, 'Soft Breathable Microfiber Steering Wheel Cover', 'Black', 2020, '【Design】This car accessory adopts a stylish and eye-catching design, made of soft materials, giving you a comfortable touch, not only is it cool to the touch but it\'s amazingly comfortable, and protecting your hands: summer will not be hot, winter will be warm. The unique and vibrant design allows you to see the eye-catching steering wheel cover from the car window, making your car stand out in the parking lot. 【Material】The steering wheel cover is made of ultra-fine fiber and breathable ice silk technology. It has strong elasticity and flexibility. It keeps warm in winter and cool in summer. It is non-slip, breathable and easy to carry. It can protect the steering wheel of the car, make the grip of the steering wheel better, give you more control on the road, improve driving safety and enhance personal charm. 【Applications】 Suitable for car lovers, no matter whether it is a man boy or a lady girl. This is the best holiday gift for boyfriend or girlfriend, husband and wife, parents and subordinates. 【Universal】The car steering wheel cover is suitable for steering wheels with a diameter of 14.5 inches to 15 inches (37 cm to 38 cm). The universal size is suitable for most vehicles, SUVS, VANS, trucks. 【Easy To Installation】The steering wheel cover is easy to install, just slide it correctly onto the steering wheel. Just place the cover on top of the steering wheel. Hold the upper part of the lid and use either side of both hands to gradually lower it to tighten.', 3, 'https://www.ubuy.com.tr/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNjFUM3Q2ckRGVkwuX0FDX1NMMTAwMF8uanBn.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'Mohammad Habbal', 'mhmdhabbal2001@gmail.com', 'MhmdHabbal', '2c8dce450c6720741351a689df94e343');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



