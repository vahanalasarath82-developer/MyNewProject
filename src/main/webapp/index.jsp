<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Advanced Shop UI</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
    --bg:#ffffff;
    --primary:#0a2540;
    --accent:#00d4ff;
    --card:rgba(255,255,255,0.7);
}

body.dark{
    --bg:#0b0f19;
    --primary:#ffffff;
    --card:rgba(20,25,40,0.7);
}

body{
    margin:0;
    font-family:Poppins;
    background:var(--bg);
    color:var(--primary);
    transition:.3s;
}

/* HEADER */
header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 30px;
    backdrop-filter:blur(10px);
    position:sticky;
    top:0;
}

.logo{
    font-size:22px;
    font-weight:600;
}

.actions{
    display:flex;
    gap:15px;
}

.icon-btn{
    background:none;
    border:none;
    font-size:18px;
    cursor:pointer;
}

/* HERO */
.hero{
    text-align:center;
    padding:60px 20px;
    background:linear-gradient(to right,#00d4ff,#0077ff);
    color:white;
}

.hero h1{
    font-size:36px;
}

/* GRID */
.products{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:20px;
    padding:40px;
}

/* CARD */
.product{
    background:var(--card);
    backdrop-filter:blur(12px);
    padding:15px;
    border-radius:12px;
    transition:.3s;
}

.product:hover{
    transform:translateY(-10px) scale(1.03);
}

.product img{
    width:100%;
    height:180px;
    object-fit:cover;
    border-radius:10px;
}

.btn{
    margin-top:10px;
    width:100%;
    padding:10px;
    border:none;
    border-radius:8px;
    background:linear-gradient(135deg,#00d4ff,#0077ff);
    color:white;
    cursor:pointer;
}

/* FOOTER */
footer{
    text-align:center;
    padding:20px;
}
</style>
</head>

<body>

<header>
    <div class="logo">NexusShop</div>
    <div class="actions">
        <button class="icon-btn" id="themeToggle">
            <i class="fas fa-moon"></i>
        </button>
        <button class="icon-btn">
            <i class="fas fa-shopping-cart"></i>
        </button>
    </div>
</header>

<section class="hero">
    <h1>Modern Shopping Experience</h1>
    <p>Advanced UI with smooth animations</p>
</section>

<section class="products" id="products"></section>

<footer>
    © 2026 Advanced UI
</footer>

<script>
const PRODUCTS = [
{title:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{title:"Headphones",price:299,img:"https://images.unsplash.com/photo-1600185365483"},
{title:"Shoes",price:150,img:"https://images.unsplash.com/photo-1542291026"}
];

const container = document.getElementById("products");

function render(){
    container.innerHTML="";
    PRODUCTS.forEach(p=>{
        container.innerHTML+=`
        <div class="product">
            <img src="${p.img}">
            <h3>${p.title}</h3>
            <p>$${p.price}</p>
            <button class="btn">Add to Cart</button>
        </div>
        `;
    });
}

render();

/* DARK MODE */
document.getElementById("themeToggle").onclick=()=>{
    document.body.classList.toggle("dark");
}
</script>

</body>
</html>
