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
          <h2 style="margin:0 0 6mm 0; font-size:14px;">Letter / Lettre (A4)</h2>
          <p style="margin:0 0 6mm 0; color:#444;">Write your letter inside this area. After printing, follow the folding steps below to turn the sheet into an envelope that holds the folded letter.</p>
          <div style="height:160mm; border:1px dashed rgba(0,0,0,0.06); padding:6mm; overflow:hidden; font-size:12px; color:#111;">
            <p style="margin:0; white-space:pre-wrap;">(Your letter content — print here)</p>
          </div>
        </div>

        <div class="address">
          <strong>Recipient / Destinataire</strong>
          <div style="height:48px;"></div>
          <div style="font-size:11px; color:#555;">Street, City, Postal code</div>
        </div>

        <div class="mark" style="left:50%; top:96mm; transform:translate(-50%,-50%);">1</div>
        <div class="mark" style="left:50%; top:198mm; transform:translate(-50%,-50%);">2</div>



      </div>

      <div style="position:fixed; left:12mm; top:12mm; font-size:11px;" class="no-print">Printable origami envelope template — A4</div>
    </Layouts.print>
    """
  end
end
