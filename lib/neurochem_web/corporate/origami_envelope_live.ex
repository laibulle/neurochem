defmodule NeurochemWeb.Corporate.OrigamiEnvelopeLive do
  use NeurochemWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.print>
      <style>
        @page { size: A4; margin: 12mm; }
        html,body { height:100%; }
        body { background:#fff; color:#111; margin:0; -webkit-print-color-adjust:exact; print-color-adjust:exact; }
        .sheet { width:210mm; height:297mm; position:relative; box-sizing:border-box; margin:0 auto; }
        .guide { position:absolute; left:0; right:0; border-top:2px dashed rgba(0,0,0,0.35); }
        .guide.vert { width:2px; top:0; bottom:0; left:50%; border-top:none; border-left:2px dashed rgba(0,0,0,0.35); }
        .mark { position:absolute; width:8mm; height:8mm; border-radius:50%; border:1px solid rgba(0,0,0,0.5); background:#fff; display:flex; align-items:center; justify-content:center; font-size:9px; }
        .content-area { position:absolute; inset:28mm 18mm; border:1px solid rgba(0,0,0,0.06); padding:6mm; font-size:12px; }
        .address { position:absolute; right:18mm; top:45mm; width:80mm; border:1px dashed rgba(0,0,0,0.12); padding:6mm; font-size:11px; }
        .instructions { position:absolute; left:18mm; bottom:18mm; right:18mm; font-size:11px; color:#333; }
        @media print { .no-print { display:none !important; } }
      </style>

      <div class="sheet" role="document">
        <div class="guide" style="top:99mm"></div>
        <div class="guide" style="top:198mm"></div>
        <div class="guide vert" aria-hidden="true"></div>

        <div class="content-area">
          <div style="height:160mm; border:1px dashed rgba(0,0,0,0.06); padding:6mm; overflow:hidden; font-size:12px; color:#111;">
            <p style="margin:0; white-space:pre-wrap;">(Your letter content — print here)</p>
          </div>
        </div>

        <div class="address">
          <div style="display:flex; align-items:center; justify-content:space-between; gap:8px;">
            <strong>Neurochem</strong>
            <!-- more realistic biohazard icon -->
            <svg width="28" height="28" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" style="flex:0 0 28px;">
              <g fill="#000">
                <path d="M50 30a20 20 0 0 0-14 33 20 20 0 0 0 28 0A20 20 0 0 0 50 30zm0 8a12 12 0 1 1 0 24 12 12 0 0 1 0-24z"/>
                <path d="M20 20a2 2 0 0 0-2 2 28 28 0 0 0 11 22 2 2 0 0 0 2-3.3A24 24 0 0 1 22 22a2 2 0 0 0-2-2z"/>
                <path d="M80 20a2 2 0 0 1 2 2 28 28 0 0 1-11 22 2 2 0 0 1-2-3.3A24 24 0 0 0 78 22a2 2 0 0 1 2-2z"/>
                <path d="M29 62a2 2 0 0 0-2 2 22 22 0 0 0 7 16 2 2 0 0 0 2-3 18 18 0 0 1-6-13 2 2 0 0 0-1-2z"/>
                <path d="M71 62a2 2 0 0 1 2 2 22 22 0 0 1-7 16 2 2 0 0 1-2-3 18 18 0 0 0 6-13 2 2 0 0 1 1-2z"/>
                <circle cx="50" cy="50" r="6" />
              </g>
            </svg>
          </div>

          <div style="height:8px;"></div>
          <div style="font-size:11px; color:#555; line-height:1.15;">
            <div><strong>According to our lore</strong></div>
            <div>Rue du Seigneur 13</div>
            <div>CH-1207 Genève</div>
            <div>Switzerland</div>
          </div>
        </div>

        <div class="mark" style="left:50%; top:96mm; transform:translate(-50%,-50%);">1</div>
        <div class="mark" style="left:50%; top:198mm; transform:translate(-50%,-50%);">2</div>



      </div>

      <div style="position:fixed; left:12mm; top:12mm; font-size:11px;" class="no-print">Printable origami envelope template — A4</div>
    </Layouts.print>
    """
  end
end
