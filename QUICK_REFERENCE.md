# SUBMISSYN Quick Reference Card

## 🌐 Your Production URL
```
https://submissyn.thenerdcompany.us/manual
```

## 📱 QR Code Generation
Use any QR code generator with this URL to create scannable codes for bottle labels.

**Recommended generators:**
- https://www.qr-code-generator.com/
- https://qr.io/
- Command line: `qrencode -o qr.png "https://submissyn.thenerdcompany.us/manual"`

**Settings:**
- Error correction: Level H (highest, 30%)
- Size: At least 0.75" x 0.75"
- Colors: Black on white (high contrast)

## 🏷️ Label Quick Start

### Simple Text Label
```
SUBMISSYN™
Neural Compliance Technology
─────────────────────────────
LOT: 2024-R7-1142
EXP: 11/2026
10mL (50mg/mL)

⚠ RESEARCH USE ONLY
NOT FOR HUMAN USE

[QR CODE HERE]

submissyn.thenerdcompany.us

Store 2-8°C
```

### Minimal Label
```
SUBMISSYN
LOT R7-1142

[QR CODE]

submissyn.thenerdcompany.us
⚠ UNAUTHORIZED USE PROHIBITED
```

## 📄 What You've Built

### Pages Available
1. **Underground Homepage** - `/` - Dark intro to SUBMISSYN
2. **Product Catalog** - `/catalog` - 4 formulations
3. **Product Details** - `/product/:id` - Individual product pages
4. **Discretion Info** - `/discretion` - Security protocols
5. **Order Form** - `/order` - Complete ordering process
6. **Product Manual** - `/manual` - ⭐ For victims to discover
7. **Order Confirmation** - `/order-confirmation` - ⭐ **NEW** - Collects delivery info
8. **Order Receipt** - `/receipt` - ⭐ **NEW** - Personalized receipt with fridge discovery

### Corporate Site
- Homepage, About, Research, Products, Contact
- Clean, professional pharmaceutical facade
- Accessible at `localhost:4000` in dev

## 🎭 The Victim's Journey (Updated!)

### The Breadcrumb Trail
1. **Find Receipt** → "Carelessly" left where victim will discover
2. **See Their Name** → Receipt shows THEIR name and address (personalized!)
3. **Read Horror** → Order confirmation for SUBMISSYN
4. **The Trigger** → "Product placed in refrigerator as requested"
5. **Check Fridge** → Must verify... finds the vial
6. **Scan QR Code** → On vial label
7. **Read Manual** → Clinical description of effects
8. **Realization** → "This is what's happening to me..."
9. **Descent** → Explores more of the lore...

### Alternative Flow
1. **Find Vial** → Discover in fridge directly
2. **Scan QR Code** → Without context
3. **Read Manual** → Learn what it is
4. **Search for Receipt** → Need proof this is real
5. **Find Receipt** → Confirms everything

## 📦 Printing the Label

### Materials Needed
- Label stock paper (Avery 5160 or similar)
- Printer (inkjet or laser)
- QR code image
- Scissors or label cutter

### Steps
1. Generate QR code for `https://submissyn.thenerdcompany.us/manual`
2. Open label template (see [BOTTLE_LABEL.md](BOTTLE_LABEL.md))
3. Insert QR code image
4. Print on label stock
5. Cut and apply to vial/bottle

### Quick Print Option
Use the manual page itself:
1. Go to `/manual` in browser
2. Print to PDF
3. Include as "product insert" in packaging

## 🎨 Design Files

- **Label designs:** [BOTTLE_LABEL.md](BOTTLE_LABEL.md)
- **Manual documentation:** [PRODUCT_MANUAL.md](PRODUCT_MANUAL.md)
- **Receipt guide:** [RECEIPT_GUIDE.md](RECEIPT_GUIDE.md)
- **Order confirmation flow:** [ORDER_CONFIRMATION_FLOW.md](ORDER_CONFIRMATION_FLOW.md) ⭐ **NEW**
- **Mobile menu fix:** [MOBILE_MENU_FIX.md](MOBILE_MENU_FIX.md)
- **Full project docs:** [README.md](README.md)
- **Quick start:** [QUICKSTART.md](QUICKSTART.md)

## 🚀 Testing Locally

```bash
# Start server
mix phx.server

# Access manual
http://submissyn.local:4000/manual
```

## 🔗 All Routes

### Underground Site
- `/` - Homepage
- `/catalog` - Product catalog
- `/product/sub-100` - Standard formulation
- `/product/sub-200` - Enhanced formulation
- `/order` - Order form
- `/discretion` - Security info
- `/manual` - Product manual
- `/order-confirmation` - Delivery info form ⭐ **NEW**
- `/receipt` - Personalized receipt ⭐ **NEW**
- `/receipt?name={name}&address={address}` - Receipt with params ⭐ **NEW**

### Corporate Site
- `/` - Homepage
- `/about` - Company info
- `/research` - Research programs
- `/products` - Product portfolio
- `/contact` - Contact form

## 💡 Next Steps Ideas

### Physical Props
- Print labels with QR codes
- Create aged/distressed versions
- Use amber glass vials
- Add "tamper evident" seals

### Digital Expansion
- Add "support group" conspiracy site
- Create whistleblower documents
- Build investigation timeline
- Add testimonials (both sides)

### Lore Development
- Write victim discovery stories
- Create forum posts discussing SUBMISSYN
- Add news articles about incidents
- Government investigation docs

## ⚠️ Remember

This is **fictional dark romance content** for:
- Consensual roleplay
- Creative writing
- Storytelling
- Entertainment

Not for:
- Actual manipulation
- Non-consensual scenarios
- Real pharmaceutical claims

## 📞 Quick Commands

```bash
# Compile project
mix compile

# Check routes
mix phx.routes | grep manual

# Start server
mix phx.server

# Run in interactive mode
iex -S mix phx.server
```

## 🎯 The Power Move

The genius of this setup:
1. **Physical artifact** (bottle) leads to **digital experience** (manual)
2. **Victim discovers** what was done in **clinical language**
3. **Fear + curiosity** = inevitable **exploration**
4. Each discovery leads **deeper into the lore**
5. The cold, medical tone makes it **more disturbing**

---

**Your URL:** `https://submissyn.thenerdcompany.us/manual`

Generate your QR code, print your labels, and let the dark romance unfold! 🖤
