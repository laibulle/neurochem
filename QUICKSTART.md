# Quick Start Guide

Get your Neurochem dark romance lore site up and running in minutes!

## Initial Setup

### 1. Install Dependencies
```bash
mix setup
```

This will:
- Install Elixir dependencies
- Install Node.js dependencies for assets
- Set up the database

### 2. Start the Server
```bash
mix phx.server
```

The server will start on port 4000.

## Viewing the Sites

### Corporate Site (Neurochem)
Simply visit: **http://localhost:4000**

You should see a professional pharmaceutical company website with blue branding.

### Underground Site (SUBMISSYN)

You have two options:

#### Option A: Add to /etc/hosts (Recommended)
1. Edit your hosts file:
   ```bash
   sudo nano /etc/hosts
   ```

2. Add this line:
   ```
   127.0.0.1 submissyn.local
   ```

3. Save and visit: **http://submissyn.local:4000**

#### Option B: Use 127.0.0.1
The fallback corporate site currently serves on localhost. To properly test underground routing, use Option A above or modify the router to use path-based routing temporarily.

## What to Explore

### Corporate Site (Neurochem)
- **Homepage (/)** - Company overview with trust indicators
- **/about** - Company history and leadership team
- **/research** - Research programs and publications
- **/products** - NeuroBalance and CogniGuard products
- **/contact** - Contact form and office locations

### Underground Site (SUBMISSYN)
- **Homepage (/)** - Dark introduction to SUBMISSYN
- **/catalog** - Browse 4 different formulations
- **/product/sub-100** - Detailed product page (try other SKUs too)
- **/discretion** - Security and privacy protocols
- **/order** - Complete order form

## Testing the Multi-Domain Routing

### Check Current Routes
```bash
mix phx.routes
```

This will show you all configured routes for both domains.

### Verify Host-Based Routing
The router uses Phoenix's `host:` option to match domains:
- `host: "neurochem."` matches neurochem.* domains
- `host: "submissyn."` matches submissyn.* domains

## Common Issues

### "Page not found" on submissyn.local
- Make sure you added the entry to /etc/hosts
- Restart your browser after editing /etc/hosts
- Clear browser cache if needed

### Assets not loading
Run:
```bash
mix assets.deploy
```

### Database errors
Reset the database:
```bash
mix ecto.reset
```

## Next Steps

1. **Customize the Lore**
   - Edit page templates in `lib/neurochem_web/controllers/*/page_html/`
   - Modify product descriptions in the catalog
   - Add your own research papers and publications

2. **Add Database Schemas**
   - Create Product schema for dynamic catalog
   - Add ContentPage schema for CMS functionality
   - Build Order schema for tracking (fictional) orders

3. **Extend with More Sites**
   - Create conspiracy theory blog
   - Add whistleblower document site
   - Build investigation forum

4. **Enhance Interactivity**
   - Add LiveView for real-time features
   - Build interactive forms
   - Create user accounts (if needed)

## Development Workflow

```bash
# Start development server
mix phx.server

# Run in IEx for debugging
iex -S mix phx.server

# Run tests (when you add them)
mix test

# Format code
mix format

# Check for issues
mix compile --warnings-as-errors
```

## Need Help?

Check out:
- [README.md](README.md) for full documentation
- [Phoenix Guides](https://hexdocs.pm/phoenix/overview.html)
- [Elixir Getting Started](https://elixir-lang.org/getting-started/introduction.html)

## Preview the Experience

### Corporate Site Feel
Professional, trustworthy, legitimate pharmaceutical company. Blue colors, clean layouts, FDA approvals, research citations.

### Underground Site Feel
Dark, mysterious, illicit marketplace. Red/black colors, ominous warnings, cryptocurrency payments, "research use only" disclaimers.

The contrast between the two creates a compelling dark romance narrative where the corporate facade hides something far more sinister.

Enjoy building your dark romance lore!
