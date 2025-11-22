# Neurochem - Dark Romance Lore Multi-Domain Site

A dual-domain Phoenix application for an immersive dark romance narrative experience. The project simulates both a legitimate pharmaceutical company (Neurochem) and an underground marketplace for a fictional mind-control substance (SUBMISSYN).

## Project Overview

This application demonstrates a sophisticated multi-domain architecture with two distinct brand identities:

### 1. Corporate Site - Neurochem Pharmaceuticals
**Domain:** `neurochem.com` (or `localhost:4000` in development)

A professional pharmaceutical company website featuring:
- Clean, trustworthy design with blue color scheme
- Company information and research programs
- FDA-approved products (NeuroBalance, CogniGuard)
- Clinical trial information
- Contact forms and office locations

**Pages:**
- `/` - Homepage with company overview
- `/about` - Company history and leadership
- `/research` - Research programs and publications
- `/products` - Product portfolio and pipeline
- `/contact` - Contact information and inquiry form

### 2. Underground Site - SUBMISSYN Marketplace
**Domain:** `submissyn.com` (or `submissyn.local:4000` in development)

A dark, mysterious marketplace for the fictional SUBMISSYN injectable:
- Dark aesthetic with red/black color scheme
- Ominous copy emphasizing control and compliance
- Product catalog with multiple formulations
- Security and discretion protocols
- Anonymous ordering process

**Pages:**
- `/` - Homepage introducing SUBMISSYN
- `/catalog` - Product catalog with 4 formulations
- `/product/:id` - Detailed product pages
- `/discretion` - Security and privacy protocols
- `/order` - Secure ordering form

## Technical Architecture

### Multi-Domain Routing

The application uses Phoenix's host-based routing to serve different content based on the domain:

```elixir
# Corporate site
scope "/", NeurochemWeb.Corporate, host: "neurochem." do
  pipe_through :corporate
  # routes...
end

# Underground site
scope "/", NeurochemWeb.Underground, host: "submissyn." do
  pipe_through :underground
  # routes...
end
```

### Layout System

Two distinct layouts provide completely different visual experiences:
- `corporate.html.heex` - Professional pharmaceutical aesthetic
- `underground.html.heex` - Dark, clandestine marketplace feel

### Controller Organization

Controllers are organized by domain:
- `lib/neurochem_web/controllers/corporate/` - Corporate site controllers
- `lib/neurochem_web/controllers/underground/` - Underground site controllers

## Getting Started

### Prerequisites
- Elixir 1.14+
- Phoenix 1.8+
- PostgreSQL 14+
- Node.js 18+ (for asset compilation)

### Setup

1. Install dependencies:
```bash
mix setup
```

2. Create and migrate database:
```bash
mix ecto.setup
```

3. Start the Phoenix server:
```bash
mix phx.server
```

### Local Development - Multi-Domain Setup

#### Option 1: Using localhost (easiest)
- Corporate site: http://localhost:4000
- Underground site: Add to `/etc/hosts`:
  ```
  127.0.0.1 submissyn.local
  ```
  Then access at http://submissyn.local:4000

#### Option 2: Using subdomains with /etc/hosts
Add these entries to `/etc/hosts`:
```
127.0.0.1 neurochem.local
127.0.0.1 submissyn.local
```
Then access:
- Corporate: http://neurochem.local:4000
- Underground: http://submissyn.local:4000

#### Option 3: Multiple server instances
Run two separate servers on different ports:
```bash
# Terminal 1 - Corporate site
PORT=4000 mix phx.server

# Terminal 2 - Underground site
PORT=4001 mix phx.server
```

### Production Deployment

For production, configure your DNS to point:
- `neurochem.com` → Your server IP
- `submissyn.com` → Your server IP (or subdomain)

The Phoenix router will automatically serve the correct content based on the `Host` header.

## Technology Stack

- **Phoenix 1.8.1** - Web framework
- **Elixir 1.15+** - Programming language
- **PostgreSQL** - Database
- **Tailwind CSS v4** - Styling framework
- **daisyUI** - Component library (customized themes)
- **Alpine.js 3.x** - Lightweight JavaScript for interactivity (mobile menus)
- **Phoenix LiveView** - Real-time features (ready for future enhancement)
- **Heroicons** - Icon library

## Project Structure

```
lib/
├── neurochem/                      # Business logic layer
│   ├── application.ex
│   ├── repo.ex
│   └── mailer.ex
└── neurochem_web/                  # Web layer
    ├── controllers/
    │   ├── corporate/              # Corporate site
    │   │   ├── page_controller.ex
    │   │   ├── page_html.ex
    │   │   └── page_html/          # Templates
    │   │       ├── home.html.heex
    │   │       ├── about.html.heex
    │   │       ├── research.html.heex
    │   │       ├── products.html.heex
    │   │       └── contact.html.heex
    │   └── underground/            # Underground site
    │       ├── page_controller.ex
    │       ├── page_html.ex
    │       └── page_html/          # Templates
    │           ├── home.html.heex
    │           ├── catalog.html.heex
    │           ├── product.html.heex
    │           ├── discretion.html.heex
    │           └── order.html.heex
    ├── components/
    │   ├── layouts/
    │   │   ├── corporate.html.heex  # Corporate layout
    │   │   ├── underground.html.heex # Underground layout
    │   │   └── root.html.heex       # Base HTML
    │   └── layouts.ex
    ├── router.ex                    # Multi-domain routing
    └── endpoint.ex
```

## The Lore

### The Story
Neurochem Pharmaceuticals appears to be a legitimate pharmaceutical company developing treatments for neurological and behavioral disorders. Their flagship products, NeuroBalance and CogniGuard, are FDA-approved therapies with legitimate medical applications.

However, beneath this corporate facade exists SUBMISSYN - an illicit, underground product derived from Neurochem's research. SUBMISSYN is marketed as a "neural compliance technology" that can allegedly induce submission and reduce autonomy in subjects. The underground site emphasizes discretion, anonymity, and the dangerous nature of the substance.

### Future Expansion Ideas
- Conspiracy theory blog sites investigating SUBMISSYN
- Fake news articles about mysterious behavioral changes
- Whistleblower documents and "leaked" research papers
- Forum discussions and testimonials (both positive and horrifying)
- Government investigation documents
- Support group websites for "victims"

## Development Notes

### Adding New Domains
To add additional sites (e.g., conspiracy sites):

1. Create new controller modules under `lib/neurochem_web/controllers/[domain]/`
2. Add routes in `router.ex` with appropriate host matching
3. Create new layout in `lib/neurochem_web/components/layouts/`
4. Add pipeline in router if custom middleware needed

### Styling Guidelines
- Corporate site uses light theme with blue accents (professional, trustworthy)
- Underground site uses dark theme with red accents (dangerous, illicit)
- All styling uses Tailwind CSS utility classes
- Avoid daisyUI components for unique custom designs per AGENTS.md

## Database Schemas (Future)

Planned schemas for enhanced functionality:
- `products` - Product catalog with domain-specific filtering
- `content_pages` - Dynamic lore content management
- `testimonials` - User stories and experiences
- `orders` - Simulated order tracking (underground site)
- `documents` - "Leaked" research papers and evidence

## Security & Ethics Notice

This is a **fictional creative project** for storytelling and dark romance narrative purposes.

- SUBMISSYN is entirely fictional
- No actual pharmaceutical research is being conducted
- This is for entertainment and artistic expression only
- Do not use this as a template for actual illicit marketplaces
- Always respect consent and legality in real-world scenarios

## Contributing

This is a creative narrative project. Contributions that enhance the lore, improve the technical implementation, or add new conspiracy/investigation sites are welcome.

## License

This project is for educational and entertainment purposes only.

## Learn More About Phoenix

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
