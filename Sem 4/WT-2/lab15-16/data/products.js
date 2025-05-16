const products = [
    {
        createdAt: "2024-11-28T01:43:24.487Z",
        ProductName: "Tasty Wooden Bike",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1102.jpg",
        ProductPrice: "489.00",
        ProductCompany: "Funk - Altenwerth",

        id: "1"
    },
    {
        createdAt: "2024-11-28T01:22:07.004Z",
        ProductName: "Oriental Frozen Soap",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/766.jpg",
        ProductPrice: "42.00",
        ProductCompany: "Howell - O'Reilly",


        id: "2"
    },
    {
        createdAt: "2024-11-28T03:43:17.528Z",
        ProductName: "Sleek Cotton Shoes",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1187.jpg",
        ProductPrice: "420.00",
        ProductCompany: "Parker, Shanahan and Conroy",


        id: "3"
    },
    {
        createdAt: "2024-11-27T10:09:09.131Z",
        ProductName: "Awesome Granite Chips",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1093.jpg",
        ProductPrice: "640.00",
        ProductCompany: "Anderson Group",

        id: "4"
    },
    {
        createdAt: "2024-11-27T22:18:24.078Z",
        ProductName: "Sleek Wooden Soap",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/904.jpg",
        ProductPrice: "970.00",
        ProductCompany: "Jacobi - O'Reilly",


        id: "5"
    },
    {
        createdAt: "2024-11-27T18:10:36.891Z",
        ProductName: "Intelligent Soft Car",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/978.jpg",
        ProductPrice: "183.00",
        ProductCompany: "Wilkinson - West",


        id: "6"
    },
    {
        createdAt: "2024-11-28T02:24:12.029Z",
        ProductName: "Handcrafted Wooden Soap",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/201.jpg",
        ProductPrice: "689.00",
        ProductCompany: "Koelpin Inc",


        id: "7"
    },
    {
        createdAt: "2024-11-28T02:09:33.076Z",
        ProductName: "Gorgeous Wooden Shoes",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/707.jpg",
        ProductPrice: "110.00",
        ProductCompany: "Little, Morissette and Bartell",


        id: "8"
    },
    {
        createdAt: "2024-11-27T17:08:15.215Z",
        ProductName: "Elegant Metal Chair",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/370.jpg",
        ProductPrice: "383.00",
        ProductCompany: "Fritsch, Beer and Grant",


        id: "9"
    },
    {
        createdAt: "2024-11-28T03:38:48.707Z",
        ProductName: "Awesome Wooden Gloves",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/453.jpg",
        ProductPrice: "17.00",
        ProductCompany: "Effertz and Sons",


        id: "10"
    },
    {
        createdAt: "2024-11-27T22:34:43.094Z",
        ProductName: "Practical Frozen Soap",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/266.jpg",
        ProductPrice: "615.00",
        ProductCompany: "Dietrich - Feeney",


        id: "11"
    },
    {
        createdAt: "2024-11-27T12:19:25.851Z",
        ProductName: "Refined Wooden Mouse",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/470.jpg",
        ProductPrice: "460.00",
        ProductCompany: "Brown Group",


        id: "12"
    },
    {
        createdAt: "2024-11-27T11:15:28.360Z",
        ProductName: "Handmade Wooden Keyboard",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/317.jpg",
        ProductPrice: "206.00",
        ProductCompany: "Hintz - West",


        id: "13"
    },
    {
        createdAt: "2024-11-27T08:44:01.049Z",
        ProductName: "Awesome Soft Table",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/217.jpg",
        ProductPrice: "273.00",
        ProductCompany: "Ruecker - Lynch",


        id: "14"
    },
    {
        createdAt: "2024-11-27T09:09:37.632Z",
        ProductName: "Rustic Bronze Pizza",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/786.jpg",
        ProductPrice: "619.00",
        ProductCompany: "Jakubowski - Cremin",


        id: "15"
    },
    {
        createdAt: "2024-11-27T21:56:10.396Z",
        ProductName: "Unbranded Fresh Bacon",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/941.jpg",
        ProductPrice: "189.00",
        ProductCompany: "Okuneva, Predovic and Schneider",


        id: "16"
    },
    {
        createdAt: "2024-11-28T01:35:59.413Z",
        ProductName: "Ergonomic Plastic Mouse",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/343.jpg",
        ProductPrice: "627.00",
        ProductCompany: "Connelly LLC",


        id: "17"
    },
    {
        createdAt: "2024-11-27T20:36:30.045Z",
        ProductName: "Handcrafted Steel Hat",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1092.jpg",
        ProductPrice: "649.00",
        ProductCompany: "Trantow - Herzog",


        id: "18"
    },
    {
        createdAt: "2024-11-27T08:19:07.675Z",
        ProductName: "Handcrafted Plastic Chips",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1088.jpg",
        ProductPrice: "938.00",
        ProductCompany: "Hodkiewicz - Bashirian",


        id: "19"
    },
    {
        createdAt: "2024-11-27T15:31:53.046Z",
        ProductName: "Handmade Rubber Cheese",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/596.jpg",
        ProductPrice: "265.00",
        ProductCompany: "Rogahn Inc",


        id: "20"
    },
    {
        createdAt: "2024-11-27T15:58:27.460Z",
        ProductName: "Gorgeous Cotton Chips",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/50.jpg",
        ProductPrice: "423.00",
        ProductCompany: "Kemmer, Bogan and Lebsack",


        id: "21"
    },
    {
        createdAt: "2024-11-27T14:40:39.246Z",
        ProductName: "Incredible Granite Chair",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/193.jpg",
        ProductPrice: "192.00",
        ProductCompany: "Spinka, Ritchie and Bernier",


        id: "22"
    },
    {
        createdAt: "2024-11-27T09:56:01.013Z",
        ProductName: "Modern Cotton Shirt",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/559.jpg",
        ProductPrice: "260.00",
        ProductCompany: "Kuhlman - Bernhard",


        id: "23"
    },
    {
        createdAt: "2024-11-27T13:39:22.376Z",
        ProductName: "Generic Fresh Tuna",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/69.jpg",
        ProductPrice: "409.00",
        ProductCompany: "Barton Inc",


        id: "24"
    },
    {
        createdAt: "2024-11-27T19:55:15.051Z",
        ProductName: "Small Wooden Mouse",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/562.jpg",
        ProductPrice: "989.00",
        ProductCompany: "Mertz, Stiedemann and O'Hara",


        id: "25"
    },
    {
        createdAt: "2024-11-27T21:35:59.619Z",
        ProductName: "Intelligent Cotton Tuna",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/549.jpg",
        ProductPrice: "528.00",
        ProductCompany: "Gutmann Group",


        id: "26"
    },
    {
        createdAt: "2024-11-27T16:25:27.528Z",
        ProductName: "Handcrafted Concrete Computer",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/123.jpg",
        ProductPrice: "132.00",
        ProductCompany: "Bechtelar, Daugherty and West",


        id: "27"
    },
    {
        createdAt: "2024-11-28T00:13:02.109Z",
        ProductName: "Licensed Plastic Salad",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/5.jpg",
        ProductPrice: "356.00",
        ProductCompany: "Mante, O'Reilly and McKenzie",


        id: "28"
    },
    {
        createdAt: "2024-11-28T06:59:16.677Z",
        ProductName: "Ergonomic Wooden Salad",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1201.jpg",
        ProductPrice: "46.00",
        ProductCompany: "Jacobson Inc",


        id: "29"
    },
    {
        createdAt: "2024-11-27T18:02:51.862Z",
        ProductName: "Tasty Fresh Car",
        ProductImage: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/983.jpg",
        ProductPrice: "686.00",
        ProductCompany: "Okuneva and Sons",


        id: "30"
    }
];

export default products;