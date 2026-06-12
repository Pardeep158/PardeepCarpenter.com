<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carpenter Work | Custom Furniture & Wood Carving Saharanpur</title>
    <meta name="description" content="Best carpenter services in Saharanpur. Custom kitchen, beds, furniture making, wood carving, and restoration. Contact: 9191836556">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Georgia', serif;
        }

        :root {
            --primary: #8B4513;
            --secondary: #D2691E;
            --light: #F5F5DC;
            --dark: #2C1810;
            --white: #FFFFFF;
        }

        body {
            line-height: 1.6;
            color: var(--dark);
        }

        /* Header */
        header {
            background: var(--dark);
            padding: 1rem 5%;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            color: var(--white);
            font-size: 1.5rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logo span {
            color: var(--secondary);
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        nav a {
            color: var(--white);
            text-decoration: none;
            transition: color 0.3s;
        }

        nav a:hover {
            color: var(--secondary);
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                        url('https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=1920');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 0 5%;
        }

        .hero-content {
            color: var(--white);
            max-width: 800px;
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.3rem;
            margin-bottom: 2rem;
        }

        .btn {
            display: inline-block;
            padding: 1rem 2.5rem;
            background: var(--secondary);
            color: var(--white);
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn:hover {
            background: var(--primary);
        }

        .btn-whatsapp {
            background: #25D366;
            margin-left: 1rem;
        }

        .btn-whatsapp:hover {
            background: #128C7E;
        }

        /* Services Section */
        .services {
            padding: 5rem 10%;
            background: var(--light);
        }

        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }

        .section-title h2 {
            font-size: 2.5rem;
            color: var(--primary);
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
        }

        .service-card {
            background: var(--white);
            padding: 2rem;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }

        .service-card:hover {
            transform: translateY(-10px);
        }

        .service-card h3 {
            color: var(--primary);
            margin-bottom: 1rem;
            font-size: 1.5rem;
        }

        .service-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        /* Why Choose Us */
        .why-us {
            padding: 5rem 10%;
            background: var(--dark);
            color: var(--white);
        }

        .why-us .section-title h2 {
            color: var(--white);
        }

        .why-us .section-title p {
            opacity: 0.8;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .feature-item {
            text-align: center;
            padding: 2rem;
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .feature-item h3 {
            color: var(--secondary);
            margin-bottom: 0.5rem;
        }

        /* Portfolio */
        .portfolio {
            padding: 5rem 10%;
        }

        .portfolio-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
        }

        .portfolio-item {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            height: 250px;
        }

        .portfolio-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .portfolio-item:hover img {
            transform: scale(1.1);
        }

        .portfolio-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(transparent, rgba(0,0,0,0.8));
            padding: 1rem;
            color: var(--white);
        }

        /* About */
        .about {
            padding: 5rem 10%;
            background: var(--light);
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
        }

        .about img {
            width: 100%;
            border-radius: 10px;
        }

        .about-content h2 {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        /* Contact */
        .contact {
            padding: 5rem 10%;
        }

        .contact-container {
            max-width: 600px;
            margin: 0 auto;
        }

        .contact-info {
            text-align: center;
            margin-bottom: 2rem;
            padding: 2rem;
            background: var(--light);
            border-radius: 10px;
        }

        .contact-info p {
            font-size: 1.2rem;
            margin: 0.5rem 0;
        }

        .contact-info a {
            color: var(--primary);
            text-decoration: none;
        }

        .contact form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .contact input,
        .contact textarea {
            padding: 1rem;
            border: 2px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .contact textarea {
            height: 150px;
            resize: vertical;
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: var(--white);
            padding: 3rem 10% 1rem;
            text-align: center;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
            text-align: left;
        }

        .footer-grid h4 {
            color: var(--secondary);
            margin-bottom: 1rem;
        }

        .footer-grid p {
            opacity: 0.8;
        }

        .copyright {
            border-top: 1px solid rgba(255,255,255,0.2);
            padding-top: 1rem;
            opacity: 0.6;
        }

        /* Floating Call Button */
        .floating-call {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--secondary);
            color: var(--white);
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            text-decoration: none;
            box-shadow: 0 5px 20px rgba(0,0,0,0.3);
            z-index: 1000;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .about {
                grid-template-columns: 1fr;
            }

            nav {
                display: none;
            }

            .btn-whatsapp {
                margin-left: 0;
                margin-top: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">🪵 Carpenter <span>Work</span></div>
        <nav>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#why-us">Why Us</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero -->
    <section class="hero" id="home">
        <div class="hero-content">
            <h1>Carpenter Work</h1>
            <p>Best Custom Furniture & Wood Carving in Saharanpur. Kitchen, Beds, Tables & All Furniture Types</p>
            <p style="font-size: 1rem; opacity: 0.9;">📍 Shalimar Garden, Bhagwati Colony, Saharanpur</p>
            <br>
            <a href="tel:9191836556" class="btn">📞 Call Now</a>
            <a href="https://wa.me/9191836556" class="btn btn-whatsapp">💬 WhatsApp</a>
        </div>
    </section>

    <!-- Services -->
    <section class="services" id="services">
        <div class="section-title">
            <h2>Our Services</h2>
            <p>Quality craftsmanship for every need</p>
        </div>
        <div class="services-grid">
            <div class="service-card">
                <div class="service-icon">🪑</div>
                <h3>Kitchen Cabinets</h3>
                <p>Custom-built modular and regular kitchen cabinets with premium fittings and elegant designs.</p>
            </div>
            <div class="service-card">
                <div class="service-icon">🛏️</div>
                <h3>Beds & Bedroom</h3>
                <p>Handcrafted single beds, double beds, poster beds, and storage beds in modern and classic styles.</p>
            </div>
            <div class="service-card">
                <div class="service-icon">🎨</div>
                <h3>Wood Carving</h3>
                <p>Intricate hand-carved designs for furniture, temple work, decorative pieces, and custom artworks.</p>
            </div>
            <div class="service-card">
                <div class="service-icon">🛋️</div>
                <h3>Living Room Furniture</h3>
                <p>Sofas, center tables, TV units, dining tables, chairs, and almirahs built to last.</p>
            </div>
            <div class="service-card">
                <div class="service-icon">🚪</div>
                <h3>Doors & Windows</h3>
                <p>Custom wooden doors, flush doors, panelled doors, and window frames in various designs.</p>
            </div>
            <div class="service-card">
                <div class="service-icon">🔧</div>
                <h3>Repair & Polish</h3>
                <p>Furniture repair, restoration, repolishing, and polishing services to make old furniture new.</p>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section class="why-us" id="why-us">
        <div class="section-title">
            <h2>Why Choose Carpenter Work?</h2>
            <p>We take pride in delivering the best carpenter services in Saharanpur</p>
        </div>
        <div class="features-grid">
            <div class="feature-item">
                <div class="feature-icon">⭐</div>
                <h3>Quality Work</h3>
                <p>Premium quality materials and expert craftsmanship ensure long-lasting furniture.</p>
            </div>
            <div class="feature-item">
                <div class="feature-icon">💰</div>
                <h3>Best Prices</h3>
                <p>Competitive pricing with no compromise on quality. Get value for your money.</p>
            </div>
            <div class="feature-item">
                <div class="feature-icon">⏰</div>
                <h3>On Time Delivery</h3>
                <p>We complete projects on schedule. Your time matters to us.</p>
            </div>
            <div class="feature-item">
                <div class="feature-icon">🤝</div>
                <h3>Customer Satisfaction</h3>
                <p>Thousands of satisfied customers across Saharanpur and nearby areas.</p>
            </div>
        </div>
    </section>

    <!-- Portfolio -->
    <section class="portfolio" id="portfolio">
        <div class="section-title">
            <h2>Our Recent Work</h2>
            <p>Some of our completed projects</p>
        </div>
        <div class="portfolio-grid">
            <div class="portfolio-item">
                <img src="https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=600" alt="Kitchen Cabinets">
                <div class="portfolio-overlay">
                    <h4>Custom Kitchen</h4>
                </div>
            </div>
            <div class="portfolio-item">
                <img src="https://images.unsplash.com/photo-1505693416388-ac5ce068aaea?w=600" alt="Wooden Bed">
                <div class="portfolio-overlay">
                    <h4>Bed Making</h4>
                </div>
            </div>
            <div class="portfolio-item">
                <img src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=600" alt="Living Room">
                <div class="portfolio-overlay">
                    <h4>Living Room Set</h4>
                </div>
            </div>
            <div class="portfolio-item">
                <img src="https://images.unsplash.com/photo-1600585152220-90363fe7e115?w=600" alt="Dining Table">
                <div class="portfolio-overlay">
                    <h4>Dining Table</h4>
                </div>
            </div>
            <div class="portfolio-item">
                <img src="https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?w=600" alt="Wood Carving">
                <div class="portfolio-overlay">
                    <h4>Wood Carving</h4>
                </div>
            </div>
            <div class="portfolio-item">
                <img src="https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=600" alt="Office Furniture">
                <div class="portfolio-overlay">
                    <h4>Office Furniture</h4>
                </div>
            </div>
        </div>
    </section>

    <!-- About -->
    <section class="about" id="about">
        <img src="https://images.unsplash.com/photo-1452860606245-08befc0ff44b?w=600" alt="Carpenter at work">
        <div class="about-content">
            <h2>About Carpenter Work</h2>
            <p>We are experts in custom furniture making and wood carving in Saharanpur, Uttar Pradesh. With years of experience, we create beautiful, durable furniture that transforms your home.</p>
            <br>
            <p>Our services include:</p>
            <ul style="margin-left: 1.5rem; margin-top: 0.5rem;">
                <li>Custom Kitchen Cabinets</li>
                <li>All Types of Beds</
