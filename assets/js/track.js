/* ============================================================
   GICI — tracking de conversiones
   Funciona con Vercel Analytics (siempre) y con GA4 (si se
   completa el measurement ID en index → window.GICI_GA4_ID).
   No rompe nada si GA4 no está configurado.
   ============================================================ */
(function () {
  'use strict';

  // ── GA4 ──────────────────────────────────────────────────────
  // Pegá acá tu Measurement ID (formato "G-XXXXXXXXXX") y GA4 queda
  // activo en TODAS las páginas. Si lo dejás vacío, no se carga nada.
  var GA4_ID = '';
  if (GA4_ID) {
    var gs = document.createElement('script');
    gs.async = true;
    gs.src = 'https://www.googletagmanager.com/gtag/js?id=' + GA4_ID;
    document.head.appendChild(gs);
    window.dataLayer = window.dataLayer || [];
    window.gtag = function () { window.dataLayer.push(arguments); };
    window.gtag('js', new Date());
    window.gtag('config', GA4_ID, { anonymize_ip: true });
  }

  // Dispara un evento tanto a GA4 (gtag) como a Vercel Analytics (va).
  function track(name, params) {
    params = params || {};
    try { if (typeof window.gtag === 'function') window.gtag('event', name, params); } catch (e) {}
    try { if (typeof window.va === 'function') window.va('event', { name: name, data: params }); } catch (e) {}
  }
  window.gticTrack = track;

  function ready(fn) {
    if (document.readyState !== 'loading') fn();
    else document.addEventListener('DOMContentLoaded', fn);
  }

  ready(function () {
    // 1) Clicks en WhatsApp / Teléfono / Email (delegación de eventos)
    document.addEventListener('click', function (e) {
      var a = e.target && e.target.closest ? e.target.closest('a[href]') : null;
      if (!a) return;
      var href = a.getAttribute('href') || '';
      if (href.indexOf('wa.me') !== -1 || href.indexOf('api.whatsapp.com') !== -1) {
        track('whatsapp_click', { location: a.dataset.loc || 'page', url: href });
      } else if (href.indexOf('tel:') === 0) {
        track('phone_click', { number: href.replace('tel:', '') });
      } else if (href.indexOf('mailto:') === 0) {
        track('email_click', { email: href.replace('mailto:', '') });
      }
    }, { passive: true });

    // 2) Envío del formulario de contacto
    var form = document.getElementById('contactForm');
    if (form) form.addEventListener('submit', function () { track('form_submit', { form: 'contacto' }); });

    // 3) Profundidad de scroll (25 / 50 / 75 / 100 %)
    var marks = [25, 50, 75, 100], fired = {};
    function onScroll() {
      var h = document.documentElement;
      var max = h.scrollHeight - h.clientHeight;
      if (max <= 0) return;
      var pct = Math.round((h.scrollTop || window.scrollY) / max * 100);
      for (var i = 0; i < marks.length; i++) {
        var m = marks[i];
        if (pct >= m && !fired[m]) { fired[m] = true; track('scroll_depth', { percent: m }); }
      }
      if (fired[100]) window.removeEventListener('scroll', onScroll);
    }
    window.addEventListener('scroll', onScroll, { passive: true });

    // 4) Tiempo de permanencia (engagement) a los 30 s
    setTimeout(function () { track('engaged_30s', {}); }, 30000);
  });
})();
