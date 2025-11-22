# Mobile Menu Implementation

## What Was Fixed

Both the corporate and underground site layouts now have **fully functional mobile hamburger menus**.

## Changes Made

### 1. Added Alpine.js
**File:** [root.html.heex](lib/neurochem_web/components/layouts/root.html.heex:13)

Added Alpine.js via CDN for lightweight interactivity:
```html
<script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
```

### 2. Added Alpine Cloaking CSS
**File:** [app.css](assets/css/app.css:106)

Added CSS to prevent flash of unstyled content:
```css
[x-cloak] { display: none !important; }
```

### 3. Updated Corporate Layout
**File:** [corporate.html.heex](lib/neurochem_web/components/layouts/corporate.html.heex:1)

Added:
- Alpine.js `x-data` directive to manage menu state
- Click handler on burger button (`@click="mobileMenuOpen = !mobileMenuOpen"`)
- Toggle between hamburger (☰) and close (×) icons
- Dropdown mobile menu with smooth transitions
- Proper hover states for mobile links

### 4. Updated Underground Layout
**File:** [underground.html.heex](lib/neurochem_web/components/layouts/underground.html.heex:1)

Same functionality as corporate layout but with dark theme styling:
- Red accent colors on hover
- Dark background for mobile menu items
- Consistent with underground aesthetic

## How It Works

### Alpine.js State Management
```html
x-data="{ mobileMenuOpen: false }"
```
Creates a reactive state variable to track whether the menu is open or closed.

### Toggle Button
```html
@click="mobileMenuOpen = !mobileMenuOpen"
```
Toggles the menu state when the burger icon is clicked.

### Conditional Icon Display
```html
<svg x-show="!mobileMenuOpen">...</svg>  <!-- Hamburger icon -->
<svg x-show="mobileMenuOpen" x-cloak>...</svg>  <!-- Close icon -->
```
Shows the appropriate icon based on menu state.

### Mobile Menu Panel
```html
<div x-show="mobileMenuOpen" x-transition class="md:hidden pb-4" x-cloak>
  <!-- Menu items -->
</div>
```
- `x-show`: Shows/hides based on state
- `x-transition`: Smooth fade in/out animation
- `x-cloak`: Prevents flash before Alpine loads
- `md:hidden`: Only visible on mobile devices

## Testing

### Desktop (768px+)
- Regular horizontal navigation visible
- Burger icon hidden
- No mobile menu

### Mobile (<768px)
- Burger icon visible in header
- Click burger → menu slides down with smooth transition
- Icon changes from ☰ to ×
- Click × or navigate → menu closes

## Browser Compatibility

Alpine.js supports all modern browsers:
- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Future Enhancements

Optional improvements:
1. **Close on outside click** - Add `@click.away="mobileMenuOpen = false"`
2. **Close on navigation** - Auto-close when link is clicked
3. **Keyboard support** - Add Escape key handler
4. **Accessibility** - Add ARIA attributes for screen readers

## Why Alpine.js?

- **Lightweight**: ~15KB minified
- **No build step needed**: Works via CDN
- **Phoenix-friendly**: Works alongside LiveView
- **Declarative**: HTML-first approach
- **Simple**: Perfect for basic interactivity like menus

## Alternative Approaches

Other options we didn't use:
1. **JavaScript in app.js** - More code, less declarative
2. **LiveView** - Overkill for simple menu toggle
3. **CSS-only** - Requires checkbox hack, less accessible
4. **Full framework** - React/Vue would be heavy-handed

Alpine.js is the sweet spot for this use case.
