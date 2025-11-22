# Order Confirmation Flow

## Overview

The order confirmation system now includes a two-step process that makes the receipt more realistic and personalized by collecting delivery information before displaying the receipt.

## The Flow

### Step 1: Order Confirmation Form
**URL:** `/order-confirmation`

After "placing an order," the aggressor is presented with a form asking for:
- Recipient Name
- Delivery Address

**Key Features:**
- Clean, professional confirmation page
- Security notices about encryption and data deletion
- Form validation (required fields)
- Smooth UX with proper styling

### Step 2: Personalized Receipt
**URL:** `/receipt?name={name}&address={address}`

When the form is submitted, it redirects to the receipt page with URL parameters containing:
- `name` - The recipient's name
- `address` - The delivery address

The receipt dynamically displays this information in a "Delivery Information" section, making it look authentic and personalized.

## URL Examples

### Order Confirmation Page
```
https://submissyn.thenerdcompany.us/order-confirmation
```

### Receipt with Parameters
```
https://submissyn.thenerdcompany.us/receipt?name=Sarah%20Johnson&address=742%20Evergreen%20Terrace%0ASpringfield%2C%20OR%2097477
```

## Technical Implementation

### Router
Added new route in `lib/neurochem_web/router.ex`:
```elixir
get "/order-confirmation", PageController, :order_confirmation
```

### Controller
Added action in `lib/neurochem_web/controllers/underground/page_controller.ex`:
```elixir
def order_confirmation(conn, _params) do
  render(conn, :order_confirmation)
end

def receipt(conn, params) do
  render(conn, :receipt,
    recipient_name: Map.get(params, "name", ""),
    delivery_address: Map.get(params, "address", "")
  )
end
```

### Form Template
Created `order_confirmation.html.heex` with:
- Form fields for name and address
- JavaScript to handle form submission
- URL parameter encoding
- Redirect to receipt with params

### Receipt Template
Updated `receipt.html.heex` to:
- Accept `@recipient_name` and `@delivery_address` assigns
- Conditionally display "Delivery Information" section when params are present
- Show personalized delivery details with timestamp

## The Victim's Experience

### Finding the Receipt

When the victim discovers the receipt, they see:

1. **Order Confirmation Header** - Order #SUB-2024-R7-1142
2. **Delivery Information Box** ⭐ **NEW**
   - Shows their name
   - Shows their address
   - Shows delivery date/time
   - Makes it feel **real** and **targeted**
3. **Storage Instructions** - "Product placed in refrigerator"
4. **Product Details** - Full order information
5. **Quick Start Guide** - Step 1: Check the fridge

### Psychological Impact

The personalized delivery information amplifies the horror:
- "This is addressed to ME"
- "They used MY address"
- "This was delivered HERE"
- "It's not just a generic receipt... it's MINE"

This makes the discovery more visceral and immediate.

## Usage Scenarios

### Scenario 1: Digital Trail
1. Aggressor fills out order confirmation form
2. Saves/prints the personalized receipt
3. "Carelessly" leaves it where victim will find it
4. Victim sees their own name and address on the receipt
5. Horror: "This was delivered to MY house"

### Scenario 2: Email Version
1. Generate receipt with URL parameters
2. Create fake email with receipt link
3. Subject: "Delivery Confirmation for Sarah Johnson"
4. Link includes personalized parameters
5. Victim clicks, sees their information

### Scenario 3: Screenshot
1. Fill out form with victim's real information
2. Take screenshot of personalized receipt
3. "Accidentally" leave screenshot on phone/computer
4. Victim finds image with their details
5. Can visit URL to see full receipt

## Customization

### Change the Delivery Date
The receipt shows delivery as 2 days ago by default:
```elixir
<%= Date.utc_today() |> Date.add(-2) |> Calendar.strftime("%B %d, %Y") %>
```

Edit this in `receipt.html.heex` to change the timing.

### Add More Fields
You can extend the form to collect:
- Phone number
- Special delivery instructions
- Subject details (height, weight, etc.)
- Dosage preferences

### Style the Information Box
The delivery information section uses blue styling to make it stand out as "official" delivery confirmation. You can adjust colors in the template.

## Testing Locally

### Development URLs

**Order Confirmation:**
```bash
# Using host routing
http://submissyn.local:4000/order-confirmation

# Or direct IP
http://127.0.0.1:4000/order-confirmation
```

**Receipt (no params):**
```bash
http://submissyn.local:4000/receipt
```

**Receipt (with params):**
```bash
http://submissyn.local:4000/receipt?name=Test%20User&address=123%20Test%20St
```

### Test the Flow

1. Visit `/order-confirmation`
2. Fill in name: "Sarah Johnson"
3. Fill in address: "742 Evergreen Terrace, Springfield"
4. Click "Generate Receipt"
5. Should redirect to receipt with personalized information

## Production URLs

**Order Confirmation:**
```
https://submissyn.thenerdcompany.us/order-confirmation
```

**Receipt:**
```
https://submissyn.thenerdcompany.us/receipt?name={encoded_name}&address={encoded_address}
```

## Routes Summary

| Route | Purpose | View |
|-------|---------|------|
| `/order-confirmation` | Form to collect delivery info | Dark themed form |
| `/receipt` | Basic receipt (no personalization) | Black & white receipt |
| `/receipt?name=...&address=...` | Personalized receipt | Receipt with delivery info |

## Files Created/Modified

### New Files
- `lib/neurochem_web/controllers/underground/page_html/order_confirmation.html.heex`
- `ORDER_CONFIRMATION_FLOW.md` (this file)

### Modified Files
- `lib/neurochem_web/router.ex` - Added `/order-confirmation` route
- `lib/neurochem_web/controllers/underground/page_controller.ex` - Added actions
- `lib/neurochem_web/controllers/underground/page_html/receipt.html.heex` - Added personalization

## Next Steps Ideas

### Enhanced Personalization
- Add order-specific product selection
- Show calculated dosage based on subject weight
- Include custom lot numbers
- Timeline-based delivery dates

### Multi-Step Form
- Product selection → Delivery info → Payment → Receipt
- Each step builds the narrative
- Progressive disclosure of horror

### Dynamic Receipt Generation
- Generate unique order numbers
- Randomize lot numbers
- Vary delivery services
- Multiple product configurations

## Security & Ethics

**Remember:**
- ✅ Consensual roleplay only
- ✅ Clear boundaries established
- ✅ Safe words in place
- ✅ Fiction for entertainment
- ❌ Never for actual manipulation
- ❌ Respect consent always

## Print Optimization

The receipt is fully optimized for single-page printing:

**Print Features:**
- ✅ Fits on single US Letter page (8.5" x 11")
- ✅ 0.5" margins for clean printing
- ✅ Header and footer automatically hidden
- ✅ White background (no dark gradients)
- ✅ Compact spacing and typography
- ✅ Two-column layout for efficiency
- ✅ Colors print correctly

**To Print:**
1. Visit `/receipt` or `/receipt?name=...&address=...`
2. Use browser print (Ctrl+P or Cmd+P)
3. Receipt automatically optimizes for printing
4. All web navigation elements hidden
5. Clean, professional receipt output

---

**The personalized receipt makes the discovery feel targeted, real, and inevitable.** 🖤
