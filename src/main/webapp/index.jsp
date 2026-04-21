<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<title>NexusShop | Advanced E-Commerce Experience</title>

<!-- Google Fonts & Font Awesome -->
<link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- Swiper JS for carousel / hero sliders (optional but adds advanced feel) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --bg: #f7fafc;
    --surface: #ffffff;
    --primary: #0f172a;
    --primary-soft: #1e293b;
    --accent: #3b82f6;
    --accent-glow: #60a5fa;
    --accent-dark: #2563eb;
    --card-bg: rgba(255, 255, 255, 0.85);
    --border: #e2e8f0;
    --text-muted: #475569;
    --shadow-sm: 0 8px 20px rgba(0,0,0,0.03), 0 2px 6px rgba(0,0,0,0.05);
    --shadow-lg: 0 20px 35px -12px rgba(0,0,0,0.1);
    --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
}

body.dark {
    --bg: #0a0c10;
    --surface: #11161f;
    --primary: #edf2ff;
    --primary-soft: #cbd5e1;
    --card-bg: rgba(18, 24, 36, 0.85);
    --border: #1e2a3a;
    --text-muted: #94a3b8;
    --shadow-sm: 0 8px 20px rgba(0,0,0,0.4);
    --shadow-lg: 0 20px 35px -10px rgba(0,0,0,0.5);
}

body {
    font-family: 'Inter', sans-serif;
    background: var(--bg);
    color: var(--primary);
    transition: background 0.3s ease, color 0.2s;
    scroll-behavior: smooth;
}

/* Custom scrollbar */
::-webkit-scrollbar {
    width: 6px;
}
::-webkit-scrollbar-track {
    background: var(--border);
}
::-webkit-scrollbar-thumb {
    background: var(--accent);
    border-radius: 10px;
}

/* Header Glassmorphism */
.glass-header {
    background: rgba(var(--bg-rgb), 0.75);
    backdrop-filter: blur(14px);
    border-bottom: 1px solid var(--border);
    position: sticky;
    top: 0;
    z-index: 100;
    padding: 0 5%;
}

.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 16px 0;
}

.logo {
    font-size: 1.8rem;
    font-weight: 800;
    background: linear-gradient(135deg, var(--accent), #8b5cf6);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    letter-spacing: -0.5px;
}

.nav-icons {
    display: flex;
    gap: 1.2rem;
    align-items: center;
}

.icon-btn {
    background: none;
    border: none;
    font-size: 1.4rem;
    cursor: pointer;
    color: var(--primary);
    transition: transform 0.2s, color 0.2s;
    position: relative;
    display: flex;
    align-items: center;
}

.icon-btn:hover {
    transform: scale(1.08);
    color: var(--accent);
}

.cart-count-badge {
    position: absolute;
    top: -8px;
    right: -12px;
    background: var(--accent);
    color: white;
    font-size: 0.7rem;
    font-weight: bold;
    padding: 2px 6px;
    border-radius: 40px;
    font-family: monospace;
}

/* Hero Carousel */
.hero-carousel {
    margin: 20px 5% 30px;
    border-radius: 32px;
    overflow: hidden;
    box-shadow: var(--shadow-lg);
}

.swiper-slide {
    position: relative;
    border-radius: 32px;
    overflow: hidden;
}

.slide-bg {
    background-size: cover;
    background-position: center;
    height: 380px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    padding: 0 60px;
    position: relative;
}

.slide-overlay {
    background: linear-gradient(90deg, rgba(0,0,0,0.65) 0%, rgba(0,0,0,0.2) 100%);
    position: absolute;
    inset: 0;
}

.slide-content {
    position: relative;
    z-index: 2;
    max-width: 500px;
    color: white;
}

.slide-content h2 {
    font-size: 2.8rem;
    font-weight: 800;
    margin-bottom: 12px;
}

.slide-content p {
    font-size: 1rem;
    margin-bottom: 24px;
    opacity: 0.9;
}

.btn-primary {
    background: white;
    color: #0f172a;
    border: none;
    padding: 12px 28px;
    border-radius: 40px;
    font-weight: 700;
    cursor: pointer;
    transition: 0.2s;
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 18px -8px rgba(0,0,0,0.3);
    background: #f1f5f9;
}

/* Section titles */
.section-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    margin: 40px 5% 20px;
}

.section-header h2 {
    font-size: 1.8rem;
    font-weight: 700;
    letter-spacing: -0.3px;
    position: relative;
    display: inline-block;
}

.section-header h2:after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 55px;
    height: 3px;
    background: var(--accent);
    border-radius: 4px;
}

/* Product Grid */
.products-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
    gap: 28px;
    padding: 0 5% 50px;
}

.product-card {
    background: var(--card-bg);
    backdrop-filter: blur(8px);
    border-radius: 28px;
    overflow: hidden;
    border: 1px solid var(--border);
    transition: var(--transition);
    box-shadow: var(--shadow-sm);
    cursor: default;
}

.product-card:hover {
    transform: translateY(-8px) scale(1.01);
    box-shadow: var(--shadow-lg);
    border-color: var(--accent-glow);
}

.card-img {
    position: relative;
    height: 230px;
    overflow: hidden;
}

.card-img img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease;
}

.product-card:hover .card-img img {
    transform: scale(1.05);
}

.badge {
    position: absolute;
    top: 16px;
    left: 16px;
    background: rgba(0,0,0,0.6);
    backdrop-filter: blur(4px);
    padding: 4px 12px;
    border-radius: 40px;
    font-size: 0.7rem;
    font-weight: 600;
    color: white;
    letter-spacing: 0.5px;
}

.card-content {
    padding: 18px 16px 20px;
}

.card-content h3 {
    font-size: 1.3rem;
    font-weight: 700;
    margin-bottom: 8px;
}

.price {
    font-size: 1.5rem;
    font-weight: 800;
    color: var(--accent);
    margin: 8px 0;
}

.rating {
    color: #fbbf24;
    font-size: 0.8rem;
    margin-bottom: 12px;
}

.btn-add {
    width: 100%;
    background: linear-gradient(95deg, var(--accent), #6366f1);
    border: none;
    padding: 12px;
    border-radius: 40px;
    font-weight: 700;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    cursor: pointer;
    transition: 0.2s;
}

.btn-add:hover {
    background: linear-gradient(95deg, var(--accent-dark), #4f46e5);
    transform: scale(0.98);
    letter-spacing: 0.3px;
}

/* Shopping Cart Sidebar */
.cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.5);
    backdrop-filter: blur(5px);
    z-index: 1000;
    visibility: hidden;
    opacity: 0;
    transition: 0.25s;
}

.cart-sidebar {
    position: fixed;
    top: 0;
    right: -450px;
    width: 420px;
    max-width: 90vw;
    height: 100vh;
    background: var(--surface);
    box-shadow: -5px 0 25px rgba(0,0,0,0.2);
    z-index: 1001;
    transition: right 0.3s ease;
    display: flex;
    flex-direction: column;
    border-left: 1px solid var(--border);
}

.cart-sidebar.open {
    right: 0;
}

.cart-overlay.active {
    visibility: visible;
    opacity: 1;
}

.cart-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    border-bottom: 1px solid var(--border);
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 16px;
}

.cart-item {
    display: flex;
    gap: 14px;
    margin-bottom: 20px;
    background: var(--card-bg);
    border-radius: 20px;
    padding: 12px;
    border: 1px solid var(--border);
}

.cart-item-img {
    width: 70px;
    height: 70px;
    border-radius: 16px;
    object-fit: cover;
}

.cart-item-details {
    flex: 1;
}

.cart-item-title {
    font-weight: 700;
}

.cart-item-price {
    font-size: 0.9rem;
    color: var(--accent);
}

.quantity-control {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-top: 6px;
}

.quantity-control button {
    background: var(--border);
    border: none;
    width: 26px;
    height: 26px;
    border-radius: 30px;
    cursor: pointer;
    font-weight: bold;
}

.cart-footer {
    padding: 20px;
    border-top: 1px solid var(--border);
}

.total {
    display: flex;
    justify-content: space-between;
    font-size: 1.3rem;
    font-weight: 800;
    margin-bottom: 18px;
}

.checkout-btn {
    width: 100%;
    background: linear-gradient(135deg, #10b981, #059669);
    border: none;
    padding: 14px;
    border-radius: 40px;
    font-weight: 700;
    color: white;
    font-size: 1rem;
    cursor: pointer;
}

.empty-cart-msg {
    text-align: center;
    opacity: 0.6;
    padding: 40px;
}

/* Toast notification */
.toast {
    position: fixed;
    bottom: 30px;
    left: 50%;
    transform: translateX(-50%) translateY(100px);
    background: var(--surface);
    color: var(--primary);
    padding: 12px 24px;
    border-radius: 60px;
    box-shadow: var(--shadow-lg);
    z-index: 1100;
    transition: 0.3s;
    opacity: 0;
    font-weight: 500;
    backdrop-filter: blur(12px);
    border-left: 5px solid var(--accent);
}

.toast.show {
    transform: translateX(-50%) translateY(0);
    opacity: 1;
}

/* footer */
footer {
    text-align: center;
    padding: 35px 20px;
    border-top: 1px solid var(--border);
    margin-top: 20px;
    color: var(--text-muted);
}

@media (max-width: 700px) {
    .slide-content h2 {
        font-size: 1.8rem;
    }
    .slide-bg {
        padding: 0 24px;
    }
}
</style>
</head>
<body>

<header class="glass-header">
    <div class="header-container">
        <div class="logo"><i class="fas fa-bolt" style="color: #3b82f6;"></i> NexusShop</div>
        <div class="nav-icons">
            <button class="icon-btn" id="themeToggleBtn"><i class="fas fa-moon"></i></button>
            <button class="icon-btn" id="cartIconBtn">
                <i class="fas fa-shopping-bag"></i>
                <span id="cartCountBadge" class="cart-count-badge">0</span>
            </button>
        </div>
    </div>
</header>

<!-- Hero Swiper Carousel (advanced) -->
<div class="hero-carousel">
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="slide-bg" style="background-image: url('https://images.unsplash.com/photo-1556741533-6e6a3bd15868?w=1200');">
                    <div class="slide-overlay"></div>
                    <div class="slide-content">
                        <h2>Flash Sale 40% OFF</h2>
                        <p>Premium electronics & fashion – limited time</p>
                        <button class="btn-primary shop-now-trigger">Shop Now →</button>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="slide-bg" style="background-image: url('https://images.unsplash.com/photo-1483985988355-9d9f5a8b9b8d?w=1200');">
                    <div class="slide-overlay"></div>
                    <div class="slide-content">
                        <h2>New Arrivals</h2>
                        <p>Discover the most advanced gear & streetwear</p>
                        <button class="btn-primary shop-now-trigger">Explore →</button>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="slide-bg" style="background-image: url('https://images.unsplash.com/photo-1611162617213-7d7a39e9b1d7?w=1200');">
                    <div class="slide-overlay"></div>
                    <div class="slide-content">
                        <h2>Free Shipping</h2>
                        <p>On orders over $150 + 30-day returns</p>
                        <button class="btn-primary shop-now-trigger">Shop now</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>

<div class="section-header">
    <h2>✨ Trending Now</h2>
    <span style="color: var(--accent); font-weight: 500;"><i class="fas fa-arrow-right"></i> Limited edition</span>
</div>

<div class="products-grid" id="productsGrid"></div>

<footer>
    <p>© 2026 NexusShop — Advanced immersive UI • Secure checkout</p>
</footer>

<!-- Cart Sidebar -->
<div id="cartOverlay" class="cart-overlay"></div>
<div id="cartSidebar" class="cart-sidebar">
    <div class="cart-header">
        <h3><i class="fas fa-shopping-cart"></i> Your Cart</h3>
        <button id="closeCartBtn" class="icon-btn"><i class="fas fa-times"></i></button>
    </div>
    <div id="cartItemsList" class="cart-items">
        <div class="empty-cart-msg">🛒 Cart is empty</div>
    </div>
    <div class="cart-footer">
        <div class="total">
            <span>Total:</span>
            <span id="cartTotalPrice">$0</span>
        </div>
        <button id="checkoutBtn" class="checkout-btn"><i class="fas fa-lock"></i> Secure Checkout</button>
    </div>
</div>

<div id="toastMsg" class="toast">✨ Item added</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
// ---------- ADVANCED PRODUCTS DATABASE ----------
const PRODUCTS_DB = [
    { id: 1, title: "iPhone 14 Pro", price: 999, img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=400", rating: 4.8, badge: "Best Seller" },
    { id: 2, title: "MacBook Pro M3", price: 1999, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400", rating: 4.9, badge: "New" },
    { id: 3, title: "Sony WH-1000XM5", price: 349, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=400", rating: 4.7, badge: "Noise Cancel" },
    { id: 4, title: "Nike Air Max", price: 159, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400", rating: 4.5, badge: "Trending" },
    { id: 5, title: "UltraWatch Series 9", price: 429, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=400", rating: 4.6, badge: "Smart" },
    { id: 6, title: "Gaming Keyboard RGB", price: 129, img: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=400", rating: 4.4, badge: "Gamer" }
];

// Cart state
let cart = []; // each item { id, title, price, img, quantity }

// Helper: update UI badge & cart sidebar
function updateCartUI() {
    const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
    document.getElementById('cartCountBadge').innerText = totalItems;
    renderCartSidebar();
    saveCartToLocal();
}

// Render cart items list inside sidebar
function renderCartSidebar() {
    const cartContainer = document.getElementById('cartItemsList');
    const totalSpan = document.getElementById('cartTotalPrice');
    if (!cartContainer) return;

    if (cart.length === 0) {
        cartContainer.innerHTML = `<div class="empty-cart-msg"><i class="fas fa-box-open"></i> Your cart is empty<br>✨ Add amazing items!</div>`;
        totalSpan.innerText = `$0`;
        return;
    }

    let html = '';
    let total = 0;
    cart.forEach(item => {
        const itemTotal = item.price * item.quantity;
        total += itemTotal;
        html += `
            <div class="cart-item">
                <img class="cart-item-img" src="${item.img}" alt="${item.title}">
                <div class="cart-item-details">
                    <div class="cart-item-title">${item.title}</div>
                    <div class="cart-item-price">$${item.price}</div>
                    <div class="quantity-control">
                        <button class="cart-qty-dec" data-id="${item.id}">-</button>
                        <span>${item.quantity}</span>
                        <button class="cart-qty-inc" data-id="${item.id}">+</button>
                        <button style="background:transparent; color:#ef4444; margin-left:auto;" class="cart-remove" data-id="${item.id}"><i class="fas fa-trash-alt"></i></button>
                    </div>
                </div>
            </div>
        `;
    });
    cartContainer.innerHTML = html;
    totalSpan.innerText = `$${total.toFixed(2)}`;

    // attach events to cart dynamic buttons
    document.querySelectorAll('.cart-qty-dec').forEach(btn => {
        btn.addEventListener('click', (e) => {
            const id = parseInt(btn.dataset.id);
            changeQuantity(id, -1);
        });
    });
    document.querySelectorAll('.cart-qty-inc').forEach(btn => {
        btn.addEventListener('click', (e) => {
            const id = parseInt(btn.dataset.id);
            changeQuantity(id, 1);
        });
    });
    document.querySelectorAll('.cart-remove').forEach(btn => {
        btn.addEventListener('click', (e) => {
            const id = parseInt(btn.dataset.id);
            removeCartItem(id);
        });
    });
}

function changeQuantity(productId, delta) {
    const existing = cart.find(i => i.id === productId);
    if (existing) {
        const newQty = existing.quantity + delta;
        if (newQty <= 0) {
            cart = cart.filter(i => i.id !== productId);
        } else {
            existing.quantity = newQty;
        }
        updateCartUI();
        showToast(delta > 0 ? "Quantity updated" : "Item removed");
    }
}

function removeCartItem(productId) {
    cart = cart.filter(i => i.id !== productId);
    updateCartUI();
    showToast("Item removed from cart");
}

function addToCart(product) {
    const existing = cart.find(i => i.id === product.id);
    if (existing) {
        existing.quantity += 1;
        showToast(`${product.title} quantity +1`);
    } else {
        cart.push({
            id: product.id,
            title: product.title,
            price: product.price,
            img: product.img,
            quantity: 1
        });
        showToast(`✨ ${product.title} added to cart`);
    }
    updateCartUI();
}

function showToast(message) {
    const toast = document.getElementById('toastMsg');
    toast.innerText = message;
    toast.classList.add('show');
    setTimeout(() => {
        toast.classList.remove('show');
    }, 2000);
}

// localStorage persistence
function saveCartToLocal() {
    localStorage.setItem('nexus_cart', JSON.stringify(cart));
}
function loadCartFromLocal() {
    const saved = localStorage.getItem('nexus_cart');
    if (saved) {
        try {
            cart = JSON.parse(saved);
            updateCartUI();
        } catch(e) {}
    }
}

// Render product grid with rating stars & badge
function renderProducts() {
    const grid = document.getElementById('productsGrid');
    if (!grid) return;
    grid.innerHTML = '';
    PRODUCTS_DB.forEach(prod => {
        const stars = '★'.repeat(Math.floor(prod.rating)) + '☆'.repeat(5 - Math.floor(prod.rating));
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
            <div class="card-img">
                <img src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="badge">${prod.badge}</div>
            </div>
            <div class="card-content">
                <h3>${prod.title}</h3>
                <div class="rating"><i class="fas fa-star" style="color:#fbbf24;"></i> ${prod.rating} ${stars}</div>
                <div class="price">$${prod.price}</div>
                <button class="btn-add" data-id="${prod.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
            </div>
        `;
        grid.appendChild(card);
    });

    // attach add to cart events
    document.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', (e) => {
            const id = parseInt(btn.dataset.id);
            const product = PRODUCTS_DB.find(p => p.id === id);
            if (product) addToCart(product);
        });
    });
}

// ----- CART SIDEBAR TOGGLE -----
const cartSidebar = document.getElementById('cartSidebar');
const cartOverlay = document.getElementById('cartOverlay');
const openCartBtn = document.getElementById('cartIconBtn');
const closeCartBtn = document.getElementById('closeCartBtn');

function openCart() {
    cartSidebar.classList.add('open');
    cartOverlay.classList.add('active');
}
function closeCart() {
    cartSidebar.classList.remove('open');
    cartOverlay.classList.remove('active');
}

openCartBtn.addEventListener('click', openCart);
closeCartBtn.addEventListener('click', closeCart);
cartOverlay.addEventListener('click', closeCart);

// Checkout simulation
document.getElementById('checkoutBtn').addEventListener('click', () => {
    if (cart.length === 0) {
        showToast("Your cart is empty, add some items first!");
        return;
    }
    const total = cart.reduce((sum, i) => sum + (i.price * i.quantity), 0);
    showToast(`🎉 Order placed! Total $${total.toFixed(2)}. Thank you!`);
    cart = [];
    updateCartUI();
    closeCart();
});

// Theme Toggle with icon change & local storage
const themeBtn = document.getElementById('themeToggleBtn');
const isDark = localStorage.getItem('nexus_theme') === 'dark';
if (isDark) document.body.classList.add('dark');
themeBtn.addEventListener('click', () => {
    document.body.classList.toggle('dark');
    const isNowDark = document.body.classList.contains('dark');
    localStorage.setItem('nexus_theme', isNowDark ? 'dark' : 'light');
    const icon = themeBtn.querySelector('i');
    if (isNowDark) icon.classList.replace('fa-moon', 'fa-sun');
    else icon.classList.replace('fa-sun', 'fa-moon');
});
// initial icon sync
if (document.body.classList.contains('dark')) themeBtn.querySelector('i').classList.replace('fa-moon', 'fa-sun');

// Initialize Swiper Hero
const swiper = new Swiper('.mySwiper', {
    loop: true,
    autoplay: { delay: 4000, disableOnInteraction: false },
    pagination: { el: '.swiper-pagination', clickable: true },
    effect: 'slide',
    speed: 800,
});

// "Shop Now" triggers scroll to products
document.querySelectorAll('.shop-now-trigger').forEach(btn => {
    btn.addEventListener('click', () => {
        document.querySelector('.products-grid').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
});

// Load all
renderProducts();
loadCartFromLocal();
updateCartUI();   // ensure badge sync after local load

// Additional micro-interaction: Hover parallax effect on product cards (modern)
const style = document.createElement('style');
style.textContent = `
    .product-card {
        transition: transform 0.2s ease, box-shadow 0.2s;
    }
    .btn-add:active {
        transform: scale(0.96);
    }
`;
document.head.appendChild(style);

// Live update cart total on any modification
window.addEventListener('load', () => {
    // if cart had previous items, sidebar shows them
    updateCartUI();
});
</script>
</body>
</html>
