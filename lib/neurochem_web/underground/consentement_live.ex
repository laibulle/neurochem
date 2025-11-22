defmodule NeurochemWeb.Underground.ConsentementLive do
  use NeurochemWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
        socket =
            socket
            |> assign(:current_scope, %{name: :underground})

        {:ok, socket}
  end

  @impl true
  def render(assigns) do
        ~H"""
        <Layouts.print>
            <style>
        @page {
            margin: 0.75in;
            size: letter;
        }

        @media print {
            body {
                print-color-adjust: exact;
                -webkit-print-color-adjust: exact;
            }
            .no-print {
                display: none !important;
            }
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', 'Helvetica', sans-serif;
            font-size: 11pt;
            line-height: 1.4;
            color: #000;
            background: #fff;
            max-width: 8.5in;
            margin: 0 auto;
            padding: 0.5in;
        }

        h1 {
            font-size: 18pt;
            font-weight: bold;
            text-align: center;
            margin-bottom: 0.15in;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        h2 {
            font-size: 14pt;
            font-weight: bold;
            text-align: center;
            margin-bottom: 0.25in;
            color: #333;
        }

        h3 {
            font-size: 11pt;
            font-weight: bold;
            margin-top: 0.2in;
            margin-bottom: 0.1in;
            border-bottom: 2px solid #000;
            padding-bottom: 0.05in;
        }

        .section {
            margin-bottom: 0.25in;
        }

        .date-line {
            text-align: right;
            margin-bottom: 0.2in;
            font-weight: bold;
        }

        .underline {
            display: inline-block;
            border-bottom: 1px solid #000;
            min-width: 2.5in;
            margin: 0 0.1in;
        }

        .underline-long {
            display: block;
            border-bottom: 1px solid #000;
            width: 100%;
            margin: 0.05in 0;
        }

        .checkbox {
            display: inline-block;
            width: 0.15in;
            height: 0.15in;
            border: 1.5px solid #000;
            margin-right: 0.1in;
            vertical-align: middle;
        }

        .checkbox-line {
            margin: 0.08in 0;
            line-height: 1.6;
        }

        .participant-box {
            border: 1.5px solid #000;
            padding: 0.15in;
            margin: 0.1in 0;
        }

        .safeword-box {
            border: 2px solid #000;
            padding: 0.15in;
            margin: 0.15in 0;
            background: #f9f9f9;
            text-align: center;
        }

        .signature-area {
            margin-top: 0.2in;
            padding: 0.15in;
            border: 1px solid #000;
        }

        .signature-line {
            display: flex;
            justify-content: space-between;
            margin-top: 0.25in;
        }

        .sig-box {
            width: 45%;
        }

        .footer {
            margin-top: 0.3in;
            padding-top: 0.15in;
            border-top: 2px solid #000;
            text-align: center;
            font-size: 9pt;
            font-style: italic;
        }

        .important {
            font-weight: bold;
            text-transform: uppercase;
        }

        .warning {
            background: #fff3cd;
            border: 2px solid #856404;
            padding: 0.1in;
            margin: 0.1in 0;
            text-align: center;
            font-weight: bold;
        }

        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin: 0.15in 0;
        }
    </style>

      <div class="no-print" style="background: #f0f0f0; padding: 10px; margin: -0.5in -0.5in 0.5in -0.5in; text-align: center;">
        <p><strong>Pour imprimer :</strong> Utilisez Ctrl+P (ou Cmd+P sur Mac) puis sélectionnez votre imprimante.</p>
        <p>Le formulaire est optimisé pour une impression sur format Letter (8.5" x 11") ou A4.</p>
      </div>

    <h1>Formulaire de Consentement</h1>
    <h2>Consentement éclairé</h2>

      <div class="date-line">
        Date : <span class="underline"></span>
      </div>

      <hr>

      <div class="section">
        <h3>1. NATURE DE L'ACTIVITÉ</h3>
        <p>Les soussignés déclarent participer de manière volontaire et éclairée à une activité convenue et encadrée.</p>
        <p style="margin-top: 0.1in;"><strong>Nous confirmons que :</strong></p>
        <div class="checkbox-line"><span class="checkbox"></span> L'activité est d'ordre symbolique et n'a pas de finalité thérapeutique</div>
        <div class="checkbox-line"><span class="checkbox"></span> Aucune action professionnelle ou technique n'est prévue</div>
        <div class="checkbox-line"><span class="checkbox"></span> Les objets utilisés sont non fonctionnels ou symboliques</div>
        <div class="checkbox-line"><span class="checkbox"></span> L'activité repose sur une mise en scène ou une interaction simulée</div>
        <div class="checkbox-line"><span class="checkbox"></span> Nous participons de notre plein gré et en pleine conscience</div>
      </div>

      <div class="section">
        <h3>2. IDENTIFICATION DES PARTICIPANTS</h3>

        <div class="participant-box">
            <p><strong>Participant(e) 1 - Rôle narratif :</strong></p>
            <p style="margin-top: 0.1in;">Nom & Prénom : <span class="underline-long"></span></p>
            <p>Date de naissance : <span class="underline"></span></p>
            <p>Adresse : <span class="underline-long"></span></p>
            <p><span class="underline-long"></span></p>
        </div>

        <div class="participant-box">
            <p><strong>Participant(e) 2 - Rôle narratif :</strong></p>
            <p style="margin-top: 0.1in;">Nom & Prénom : <span class="underline-long"></span></p>
            <p>Date de naissance : <span class="underline"></span></p>
            <p>Adresse : <span class="underline-long"></span></p>
            <p><span class="underline-long"></span></p>
        </div>
      </div>

      <div class="section">
        <h3>3. MOT DE SÉCURITÉ (SAFEWORD)</h3>
        <p>En cas d'inconfort, de besoin d'arrêt immédiat, ou pour toute raison, l'un ou l'autre participant peut utiliser le signal de sécurité suivant :</p>

        <div class="safeword-box">
            <p style="font-size: 12pt;"><strong>MOT DE SÉCURITÉ :</strong></p>
            <p style="margin-top: 0.1in; font-size: 16pt; font-weight: bold;"><span class="underline" style="min-width: 3in;"></span></p>
        </div>

        <div class="checkbox-line"><span class="checkbox"></span> Nous nous engageons à respecter immédiatement ce mot</div>
        <div class="checkbox-line"><span class="checkbox"></span> L'utilisation de ce mot arrête instantanément toute activité</div>
        <div class="checkbox-line"><span class="checkbox"></span> Aucune justification n'est requise pour l'utiliser</div>
      </div>

      <div class="section">
        <h3>4. LIMITES ET BOUNDARIES</h3>

        <p><strong>Activités acceptées :</strong></p>
        <div class="checkbox-line"><span class="checkbox"></span> Interactions simulées ou scénarisées (ex. lecture de documents, manipulation d'objets non fonctionnels)</div>
        <div class="checkbox-line"><span class="checkbox"></span> Échanges verbaux et mises en scène douces</div>
        <div class="checkbox-line"><span class="checkbox"></span> Mise en place d'une ambiance ou d'accessoires symboliques</div>
        <div class="checkbox-line"><span class="checkbox"></span> Autre : <span class="underline" style="min-width: 3in;"></span></div>

        <p style="margin-top: 0.15in;"><strong>Limites strictes - ce qui N'EST PAS autorisé :</strong></p>
        <div class="checkbox-line"><span class="checkbox"></span> Aucune intervention médicale ni administration de substances</div>
        <div class="checkbox-line"><span class="checkbox"></span> Aucune contrainte physique dangereuse</div>
        <div class="checkbox-line"><span class="checkbox"></span> Autre : <span class="underline" style="min-width: 3in;"></span></div>
      </div>

      <div class="section">
        <h3>5. CONSENTEMENT EXPLICITE</h3>

        <div class="signature-area">
            <p><strong>Je, soussigné(e)</strong> <span class="underline" style="min-width: 2.5in;"></span><strong>, déclare :</strong></p>

            <div style="margin-top: 0.1in;">
                <div class="checkbox-line"><span class="checkbox"></span> Avoir lu et compris l'intégralité de ce document</div>
                <div class="checkbox-line"><span class="checkbox"></span> Participer de mon plein gré à l'activité convenue</div>
                <div class="checkbox-line"><span class="checkbox"></span> Comprendre que je peux arrêter à tout moment en utilisant le signal de sécurité</div>
                <div class="checkbox-line"><span class="checkbox"></span> Confirmer qu'aucune action professionnelle ou technique ne sera réalisée</div>
                <div class="checkbox-line"><span class="checkbox"></span> Être légalement habilité(e) à consentir</div>
                <div class="checkbox-line"><span class="checkbox"></span> Accepter que l'activité reste de nature symbolique ou simulée</div>
            </div>

            <div class="signature-line">
                <div class="sig-box">
                    <p><strong>Signature Participant(e) 1 :</strong></p>
                    <p style="margin-top: 0.4in; border-bottom: 1px solid #000;"></p>
                </div>
                <div class="sig-box">
                    <p><strong>Date :</strong></p>
                    <p style="margin-top: 0.4in; border-bottom: 1px solid #000;"></p>
                </div>
            </div>
        </div>

        <div class="signature-area" style="margin-top: 0.2in;">
            <p><strong>Je, soussigné(e)</strong> <span class="underline" style="min-width: 2.5in;"></span><strong>, déclare :</strong></p>

            <div style="margin-top: 0.1in;">
                <div class="checkbox-line"><span class="checkbox"></span> Avoir lu et compris l'intégralité de ce document</div>
                <div class="checkbox-line"><span class="checkbox"></span> Participer de mon plein gré à l'activité convenue</div>
                <div class="checkbox-line"><span class="checkbox"></span> Comprendre que je peux arrêter à tout moment en utilisant le signal de sécurité</div>
                <div class="checkbox-line"><span class="checkbox"></span> Confirmer qu'aucune action professionnelle ou technique ne sera réalisée</div>
                <div class="checkbox-line"><span class="checkbox"></span> Être légalement habilité(e) à consentir</div>
                <div class="checkbox-line"><span class="checkbox"></span> M'engager à respecter les limites établies et le signal de sécurité</div>
            </div>

            <div class="signature-line">
                <div class="sig-box">
                    <p><strong>Signature Participant(e) 2 :</strong></p>
                    <p style="margin-top: 0.4in; border-bottom: 1px solid #000;"></p>
                </div>
                <div class="sig-box">
                    <p><strong>Date :</strong></p>
                    <p style="margin-top: 0.4in; border-bottom: 1px solid #000;"></p>
                </div>
            </div>
        </div>
      </div>

      <div class="section">
        <h3>6. COMMUNICATION POST-SESSION</h3>
        <p>Nous nous engageons à communiquer après la session pour :</p>
        <ul style="margin-left: 0.3in; margin-top: 0.05in;">
            <li>Discuter de ce qui a fonctionné</li>
            <li>Partager nos ressentis</li>
            <li>Ajuster les futures sessions si nécessaire</li>
        </ul>
        <div class="checkbox-line" style="margin-top: 0.1in;"><span class="checkbox"></span> Nous acceptons de faire un débriefing après l'activité</div>
      </div>

      <div class="section">
        <h3>7. RÉVOCATION</h3>
        <div class="warning">
            Ce consentement peut être révoqué à tout moment par l'un ou l'autre participant, sans justification nécessaire.
        </div>
      </div>

      <div class="footer">
        <p><strong>Ce document doit être conservé par les deux parties.</strong></p>
        <p style="margin-top: 0.1in;">En cas de doute, d'inconfort ou de question : ARRÊTEZ et COMMUNIQUEZ.</p>
        <hr style="margin: 0.15in 0;">
        <p>Document version 1.0 - Novembre 2024</p>
        <p>Pour usage personnel uniquement - Jeu de rôle consensuel entre adultes</p>
      </div>
        </Layouts.print>
    """
  end
end
