# SUBMISSYN Bottle Label Design

## Label Concept

A pharmaceutical-style label designed to be printed on adhesive label paper and applied to vials/bottles. Creates the bridge between physical prop and digital lore.

## Label Specifications

### Dimensions
- **Standard vial:** 2" x 1.5" (50mm x 38mm)
- **Larger bottle:** 3" x 2" (76mm x 50mm)
- **Print format:** Avery 5160 or similar address label sheets

### Print Settings
- **Colors:** Black text on white, red accents
- **Font:** Monospace/medical style (Courier, Consolas)
- **QR Code:** High contrast, error correction Level H
- **Paper:** Waterproof label stock recommended

## Label Layout

```
┌─────────────────────────────────────────┐
│  SUBMISSYN™                             │
│  Neural Compliance Technology           │
│  ─────────────────────────────────────  │
│                                         │
│  LOT: 2024-R7-1142        ┌─────────┐   │
│  EXP: 11/2026             │  [QR]   │   │
│  10mL (50mg/mL)           │  CODE   │   │
│  SKU: SUB-100             │         │   │
│                           └─────────┘   │
│  ⚠ RESEARCH USE ONLY                    │
│  NOT FOR HUMAN USE                      │
│                                         │
│  Product Information:                   │
│  submissyn.thenerdcompany.us            │
│                                         │
│  Store 2-8°C • Keep Refrigerated        │
└─────────────────────────────────────────┘
```

## Text-Only Version (No QR Code)

For simpler printing or when QR code isn't available:

```
┌─────────────────────────────────────────┐
│         SUBMISSYN™                      │
│    Neural Compliance Technology         │
│  ═══════════════════════════════════    │
│                                         │
│  BATCH: 2024-R7-1142                   │
│  EXPIRES: November 2026                 │
│                                         │
│  VOLUME: 10mL                          │
│  CONCENTRATION: 50mg/mL                 │
│  PRODUCT CODE: SUB-100                  │
│                                         │
│  ⚠ WARNING                              │
│  FOR RESEARCH PURPOSES ONLY             │
│  NOT APPROVED FOR HUMAN USE             │
│                                         │
│  PRODUCT INFORMATION:                   │
│  submissyn.thenerdcompany.us           │
│                                         │
│  STORAGE: Refrigerate 2-8°C             │
│  HANDLE WITH CARE                       │
└─────────────────────────────────────────┘
```

## QR Code Generation

### URL to Encode
```
https://submissyn.thenerdcompany.us/manual
```

### QR Code Specifications
- **Size:** 0.75" x 0.75" (minimum for scanning)
- **Error Correction:** Level H (30% - highest)
- **Color:** Black on white
- **Border:** 4 modules (quiet zone)

### Generation Tools
- **Online:** qr-code-generator.com, qr.io
- **Command line:** `qrencode -o submissyn-qr.png "https://submissyn.thenerdcompany.us/manual"`
- **Browser:** Many free QR code generators

## Design Variants

### Variant 1: Medical/Clinical
```
SUBMISSYN™ Injectable Solution
────────────────────────────────
Concentration: 50mg/mL
Volume: 10mL multidose vial

Lot: R7-1142    Exp: 11/2026

⚠ NOT APPROVED BY FDA
RESEARCH USE ONLY

[QR CODE]

submissyn.thenerdcompany.us
Store at 2-8°C
```

### Variant 2: Minimal/Cryptic
```
SUBMISSYN
─────────
LOT R7-1142

[QR CODE]

submissyn.thenerdcompany.us

⚠ UNAUTHORIZED USE PROHIBITED
```

### Variant 3: Pharmaceutical Style (Most Realistic)
```
┌─────────────────────────────────────────┐
│  Rx ONLY          SUBMISSYN™            │
│                                         │
│  (proprietary neural modulator)         │
│  Injectable Solution                    │
│  50 mg/mL                              │
│                                         │
│  For intramuscular or subcutaneous      │
│  administration                         │
│                                         │
│  Each mL contains:                      │
│  Proprietary compound.......50mg        │
│  Sterile water for injection...q.s.    │
│                                         │
│  Lot: 2024R71142    [QR CODE]          │
│  Exp: 11/2026                          │
│                                         │
│  10 mL Multi-Dose Vial                 │
│                                         │
│  ⚠ WARNING: NOT APPROVED FOR           │
│  HUMAN USE • RESEARCH ONLY              │
│                                         │
│  submissyn.thenerdcompany.us           │
│                                         │
│  Store refrigerated 2-8°C (36-46°F)    │
│  Protect from light                     │
└─────────────────────────────────────────┘
```

## Color Options

### Option 1: Classic Pharmaceutical (White)
- Background: White
- Text: Black
- Warnings: Red
- Professional, medical appearance

### Option 2: Dark/Ominous (Black)
- Background: Black
- Text: White
- Accents: Red
- More sinister, underground feel

### Option 3: Aged/Found Document
- Background: Slightly yellowed/cream
- Text: Black
- Distressed appearance
- Feels "discovered" or old

## Physical Materials

### Label Stock Options
1. **Waterproof vinyl** - Survives condensation from refrigeration
2. **Glossy photo paper** - Professional look, not water resistant
3. **Matte label stock** - Easy to write on, pharmaceutical feel
4. **Clear labels** - See-through, applied over existing bottle

### Vial/Bottle Options
1. **Amber glass vials** - Pharmaceutical standard, protects from light
2. **Clear glass bottles** - Can see (fake) liquid inside
3. **Plastic vials** - Safer, less realistic
4. **Vintage medicine bottles** - Atmospheric, unique

### Application Tips
- Clean surface with alcohol before applying
- Apply from one edge to avoid bubbles
- Smooth with credit card or squeegee
- Let dry completely before handling
- For curved surfaces, use vinyl labels

## Additional Label Ideas

### Back Label (Optional)
```
SUBMISSYN™ Product Information

COMPOSITION: Proprietary neurochemical
formulation. Inactive ingredients include
benzyl alcohol (preservative).

INDICATIONS: Research use only. Not
intended for therapeutic purposes.

CONTRAINDICATIONS: Not for use in
pregnant or nursing subjects. Avoid in
subjects with cardiovascular conditions.

ADMINISTRATION: See product manual at
submissyn.thenerdcompany.us/manual

MANUFACTURER: Not affiliated with any
recognized pharmaceutical entity.

DISTRIBUTED BY: [REDACTED]
```

### Warning Sticker (Separate)
```
┌─────────────────────────┐
│    ⚠ WARNING ⚠         │
│                         │
│  UNAUTHORIZED USE       │
│  MAY RESULT IN          │
│  PERMANENT EFFECTS      │
│                         │
│  HANDLE WITH CARE       │
└─────────────────────────┘
```

### Security Seal (Optional)
```
┌─────────────────────┐
│  TAMPER EVIDENT     │
│  DO NOT USE IF      │
│  SEAL IS BROKEN     │
│  ───────────────    │
│  LOT: R7-1142       │
└─────────────────────┘
```

## File Formats for Printing

### For DIY Printing
- **PDF:** Best for preserving layout
- **PNG:** High resolution (300dpi minimum)
- **SVG:** Vector format, scales perfectly

### Recommended Workflow
1. Design in Canva/Photoshop/InDesign
2. Generate QR code separately
3. Import QR code into design
4. Export as PDF for printing
5. Print on label stock
6. Cut precisely (label cutter or scissors)
7. Apply to clean, dry vials

## URL Configuration

### Main URL
- **Full:** `https://submissyn.thenerdcompany.us/manual`
- **Short (if available):** `submissyn.thenerdcompany.us/m`
- **Even shorter:** `sub.tnc.us/m` (requires DNS setup)

### Tracking (Optional)
Add UTM parameters to see who scans:
```
https://submissyn.thenerdcompany.us/manual?src=vial&batch=r7-1142
```

## Creative Variations

### "Recalled" Version
```
┌─────────────────────────────────────────┐
│  SUBMISSYN™                             │
│  ═══════════════════════════════════    │
│                                         │
│  ⚠ PRODUCT RECALL NOTICE ⚠             │
│                                         │
│  This batch has been flagged for        │
│  investigation. Do not use.             │
│                                         │
│  For information:                       │
│  submissyn.thenerdcompany.us           │
│                                         │
│  Return to distributor immediately.     │
└─────────────────────────────────────────┘
```

### "Prototype" Version
```
┌─────────────────────────────────────────┐
│  SUBMISSYN™ EXPERIMENTAL                │
│  ─────────────────────────────────────  │
│  PROTOTYPE FORMULATION                  │
│  NOT FOR DISTRIBUTION                   │
│                                         │
│  BATCH: PROTO-001                       │
│  TRIAL: PHASE-UNKNOWN                   │
│                                         │
│  [QR CODE]                              │
│                                         │
│  submissyn.thenerdcompany.us           │
│                                         │
│  ⚠ EFFECTS MAY VARY ⚠                  │
└─────────────────────────────────────────┘
```

## Testing Before Use

1. **Print test label** on regular paper first
2. **Scan QR code** to verify it works
3. **Check size** against actual vial
4. **Print final** on label stock
5. **Apply to test vial** to check appearance
6. **Scan again** to ensure readability on curved surface

## Legal/Safety Note

Remember to include:
- "For entertainment/fiction purposes"
- "Not real pharmaceutical product"
- "Contains no actual medication"

If using for props/photography only.

---

**Ready to create:** Generate your QR code for `https://submissyn.thenerdcompany.us/manual` and you're set!
