Item.destroy_all
User.destroy_all


users =
[
  {
    first_name: 'John',
    last_name: 'Snow',
    email: 'js@gmail.com',
    password: '123456'
  },
  {
    first_name: 'Jerry',
    last_name: 'Henriksson',
    email: 'jerry@gmail.com',
    password: '123456'
  },
  {
    first_name: 'Melle',
    last_name: 'Snijder',
    email: 'melle@gmail.com',
    password: '123456'
  },
  {
    first_name: 'Rey',
    last_name: 'Skywalker',
    email: 'skywalker@gmail.com',
    password: '123456'
  },

  {
    first_name: 'Demo',
    last_name: 'User',
    email: 'demo@gmail.com',
    password: '123456'
  }
]

users.each do |user|
  User.create!(user)
end



items =
[
  {
    rate: 30,
    make: 'HITACHI EJ3-65SB2 Jackhammer',
    description: 'Medium sized jackhammer ideal for footings and concrete work. Powerful and easy to manoeuvreable able to be mounted on trolleys for ease of use',
    location: 'Utrecht',
    user: User.first,
    remote_picture_url: "https://masterhire.com.au/wp-content/uploads/2015/10/EJ-3.jpg"
  },

  {
    rate: 25,
    make: 'MAKITA EIW-TW0200 Electric Impact Wrench',
    description: '240v 10amp impact wrench that is available in two different sizes 1/2″ and 3/4″',
    location: 'Amersfoort',
    user: User.second,
    remote_picture_url: "https://masterhire.com.au/wp-content/uploads/2018/07/EIW-480x480.jpg"
  },

  {
    rate: 25,
    make: 'SKIL 5280-01 Circular Saw with Single Beam Laser Guide',
    description: '15-Amp motor for more power and performance than the SKIL 5680. Single beam laser for more accurate cuts. Carrying bag for convenient portability and storage',
    location: 'Amsterdam',
    user: User.third,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/61V-G3bC%2B3L._SL1000_.jpg"
  },

  {
    rate: 60,
    make: 'InverterTech P2000i Portable Generator',
    description: 'Provide clean and stable power for sensitive electronics. Easy to carry, fuel efficient and with low-noise levels, its ideal for applications requiring low noise and a high-quality stable voltage.
    Weight: 22kg, Frequency: 50Hz, Running Time: 5.3 hrs at 75% load, Power Output: 230V, Fuel Tank Capacity: 4.2ltr, Fuel Consumption 75% load [L per hr at 50Hz]: 0.79 L/h, Decibel Reading: 59dB
',
    location: 'Amsterdam',
    user: User.third,
    remote_picture_url: "https://images.speedyservices.com/ProductImages/14-0107-P2000i.jpg"
  },

  {
    rate: 15,
    make: 'BLACK+DECKER BDEQS300 1/4 Sheet Orbital Sander',
    description: 'Provides 270 degree flush sanding clearance. 2.0 amp motor for material removal with 1,600 orbits per minute. High-performance dust collection to provide a clean work surface.Ideal for finish sanding and detail work. Comes with (1) sandpaper sheet',
    location: 'Amersfoort',
    user: User.second,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/41swrhIeHZL.jpg"
  },

  {
    rate: 25,
    make: 'Paslode IM350 Nailer',
    description: 'Solid Portable Nailer by Paslode. Weight: 3.1kg, Nail Range: 51-90mm, Cycle Rate: 3nails/sec',
    location: 'Utrecht',
    user: User.first,
    remote_picture_url: "https://www.toolhireexpress.com/system/uploads/product_image/image/134/ecommerce_main_preview/007022.jpg"
  },

  {
    rate: 25,
    make: 'DEWALT DW660 Cut-Out Rotary Tool',
    description: 'DW660 Includes:1 drywall cutting bit and 1/4", 1/8" collets. 5-amp, 30,000 rpm motor provides more cutting power. 120v ac 5.0 amp',
    location: 'Amstelveen',
    user: User.first,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/71YcpR99O3L._SL1500_.jpg"
  },

  {
    rate: 10,
    make: 'STANLEY 94-248 65 Piece Tool Kit',
    description: 'The Stanley 94-248 65-piece general tool set includes one 13-ounce hammer, one 16-foot tape rule, one 18mm snap-off knife, one torpedo level, one long nose and one slip joint pliers, one Phillips screwdriver, one standard tip screwdriver, eight SAE and eight metric hex keys, one 1/4-inch round-head ratchet, eight SAE 1/4-inch sockets, one 1/4-inch spinner handle, one 1/4-inch bit holder, and 30 bits.',
    location: 'Deventer',
    user: User.second,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/91Qs4gAR-ML._SL1500_.jpg"
  },

  {
    rate: 8,
    make: 'Hi-Spec 4.8V Electric Cordless Screwdriver',
    description: 'Rechargeable 600mAh Ni-MH Battery & 26 Piece Screwdriver and Wood Drill Bit Assortment for Home DIY',
    location: 'Amsterdam',
    user: User.second,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/71WECyIhOQL._SL1500_.jpg"
  },

  {
    rate: 10,
    make: 'TackLife SC-L07G Green Laser Level',
    description: 'Widely Use
The Tacklife green laser level is convenient to your life, ideal for cabinet installation, drop ceiling, kitchen installation, tile work, build the slope, instrument installation, floor and wall bricks, ceiling bracket installation,etc.',
    location: 'Zwanenburg, Amsterdam',
    user: User.second,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/61xdoAP04NL._SL1500_.jpg"
  },

  {
    rate: 35,
    make: 'REMS-HD Wallchaser',
    description: 'Groove cutting for cables and conduit pipes in masonry and concrete. Features SJS gearbox for overload protection. Weight: 5.8kg',
    location: 'Groningen',
    user: User.third,
    remote_picture_url: "https://images.speedyservices.com/ProductImages/REMS-HD-Wallchaser-13-0070.jpg"
  },

  {
    rate: 25,
    make: 'Makita Demolition Hammer',
    description: 'Ideal for smaller tile removal, mortar spills, brick removal and surface preparation. Powerful 10 AMP motor delivers 11 N.m of impact energy. Fixed-movement handles for more control and better accuracy.',
    location: 'Amsterdam',
    user: User.first,
    remote_picture_url: "https://contentgrid.homedepot-static.com/hdus/en_US/DTCCOMNEW/fetch/Enterprise/Tool_and_Truck_Rental/Demolition_Tool_Rental/11-lb-demolition-hammer.jpg"
  },

  {
    rate: 15,
    make: 'Makita cordless drill',
    description: 'Rent a classic 1/2″ cordless drill to tackle any job or project at hand. We provide one fully charged battery and a charger with every rental.
    Weight: 2.5kg, Speed: 0 – 1300 RPM, Power:18 Volt Battery',
    location: 'Schiphol',
    user: User.second,
    remote_picture_url: "https://pascorentals.com/wp-content/uploads/cordless-drill.jpg"
  },

  {
    rate: 17,
    make: 'Right Angle Drill',
    description: 'Rent a 1/2″ right-angle drill when you need to drill in hard-to-reach places or at an awkward angle, saving your wrists some strain in confined situations. Weight: 4.5kg, Speed: 500 RPM, Power: 5 Amp / 120 Volt',
    location: 'Eindhoven',
    user: User.fourth,
    remote_picture_url: "https://pascorentals.com/wp-content/uploads/right-angle-drill.jpg"
  },

  {
    rate: 22,
    make: 'Bosch PST-800 PEL presision wood saw',
    description: 'Bosch PST 800 PEL saw. 530 Watt including plastic case and free extra 10-piece saw blade set',
    location: 'Utrecht',
    user: User.third,
    remote_picture_url: "https://s.s-bol.com/imgbase0/imagebase3/large/FC/4/8/9/5/9200000038435984.jpg"
  },

  {
    rate: 6,
    make: 'Pipe Wrench',
    description: "18″ pipe wrench for plumbing available for rent.",
    location: 'Amersfoort',
    user: User.second,
    remote_picture_url: "https://pascorentals.com/wp-content/uploads/pipe-wrench-18.jpg"
  },

  {
    rate: 15,
    make: 'BLACK+DECKER LDX120PK Cordless Drill and Battery Power Project Kit',
    description: "The BLACK+DECKER LDX120PK 20V MAX Cordless Drill and Battery Power Project Kit is a great power tool set for a variety of home projects. Includes 20V cordless drill, which provides an extra level of control with an 11 position clutch that prevents stripping and overdriving screws. The lithium ion battery is always ready and holds a charge up to 18 months. This battery powered drill kit includes 68 hand tools and accessories and a carrying bag for easy portability and storage. Includes carrying bag for easy portability and storage.",
    location: 'Rotterdam',
    user: User.fifth,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/51-lfuF%2BeTL.jpg"
  },

  {
    rate: 10,
    make: 'iFixit Essential Electronics Toolkit',
    description: 'The Essential Electronics Toolkit is what you need for the most essential electronics repairs—like screen and battery swaps—and everything you need for most household DIY fixes. Toolkit Includes: 4 mm Bit Driver, Angled Precision Tweezers, Spudger, Jimmy iFixit Opening Tool, iFixit Opening Picks set of 6, Suction Handle, Easy-to-Open Magnetized Case, lid with Built-in Sorting Tray, Sixteen 4 mm Precision Screwdriver Bits',
    location: 'Deventer',
    user: User.fourth,
    remote_picture_url: "https://images-na.ssl-images-amazon.com/images/I/81mqecCd3vL._SL1500_.jpg"
  }
]

items.each do |item|
  Item.create!(item)
end
