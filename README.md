# GICI — Gestión Integral Contable e Impositiva

Sitio web institucional del estudio contable **GICI**, ubicado en Ituzaingó, Buenos Aires.

🌐 **Producción**: https://estudiocontablegici.com/
🚀 **Deploy preview**: https://giciestudio.vercel.app/

## Stack

Sitio estático single-page construido con:

- **HTML5** semántico
- **Tailwind CSS compilado** (`assets/css/app.min.css`, ~31 KB) — sin CDN en producción. La paleta de marca vive en `tailwind.config.js` y los estilos custom en `assets/css/tailwind.src.css`.
- **Google Fonts** — Sora (display), Inter (UI), Manrope (body), cargadas de forma no bloqueante.
- **Vanilla JavaScript** — animaciones, counters, formulario, menú mobile, FAQ accordion.
- **Schema.org** JSON-LD multi-schema (LocalBusiness/AccountingService, Organization, WebSite, BreadcrumbList, FAQPage, Service).
- **Tracking de conversiones** — `assets/js/track.js` (clicks WhatsApp/teléfono/email, envío de formulario, scroll depth) hacia Vercel Analytics y GA4 (opcional).
- **Vercel Analytics + Speed Insights** (script directo, sin npm).

El sitio se **sirve estático** (sin build en Vercel): el CSS ya viene compilado y commiteado.

### Recompilar el CSS (solo si tocás clases o estilos)

```bash
npx tailwindcss@3 -c tailwind.config.js -i assets/css/tailwind.src.css -o assets/css/app.min.css --minify
```

### Activar Google Analytics 4 (opcional)

Abrí `assets/js/track.js` y pegá tu Measurement ID en la constante `GA4_ID` (`"G-XXXXXXXXXX"`). Con eso GA4 queda activo en todas las páginas. Si lo dejás vacío, no se carga nada y las conversiones igual se registran en Vercel Analytics.

## Estructura

```
.
├── index.html                      # Home (one-pager: 6 secciones + FAQ)
├── contador-ituzaingo.html         # Landing SEO — "contador ituzaingó"
├── contador-monotributo.html       # Landing SEO — "contador para monotributistas"
├── contador-pymes.html             # Landing SEO — "contador para pymes/empresas"
├── liquidacion-de-sueldos.html     # Landing SEO — "liquidación de sueldos"
├── servicios/                      # Páginas de servicio (4)
│   ├── asesoramiento-impositivo-laboral.html
│   ├── asesoramiento-comercial.html
│   ├── liquidacion-ganancias.html
│   └── bienes-personales.html
├── assets/
│   ├── favicon.svg                 # Favicon SVG
│   ├── css/
│   │   ├── tailwind.src.css        # Fuente (directivas + estilos de marca)
│   │   └── app.min.css             # CSS compilado y minificado (el que se sirve)
│   ├── js/
│   │   └── track.js                # Tracking de conversiones (GA4 + Vercel)
│   └── images/
│       ├── logo.png                # Logo oficial GICI
│       ├── og.svg                  # OG fuente (vector)
│       └── og.png                  # OG 1200×630 (el que usan redes/WhatsApp)
├── tailwind.config.js              # Config Tailwind (paleta, fuentes, content)
├── sitemap.xml                     # Mapa del sitio para crawlers
├── robots.txt                      # Reglas para bots
├── manifest.webmanifest            # PWA manifest (icono, theme color)
├── vercel.json                     # Config Vercel + headers + outputDirectory
└── README.md
```

## Secciones del sitio

1. **Inicio** — Hero animado con dashboard glassmorphism y stats animadas
2. **Servicios** — 4 áreas (impositivo/laboral · comercial · ganancias · bienes personales)
3. **Nosotros** — Manifiesto, propósito y 6 valores
4. **Testimonios** — 3 testimonios de clientes
5. **FAQ** — 10 preguntas optimizadas para búsquedas reales
6. **Contacto** — Formulario, canales directos y mapa de Google

## SEO implementado

### Meta tags

- Title optimizado con keywords locales
- Description con CTA y keywords
- Keywords (con variantes semánticas)
- Robots / Googlebot
- Geo tags (geo.region, geo.placename, geo.position, ICBM)
- Canonical + hreflang
- Open Graph completo
- Twitter Card
- Apple touch icon + manifest
- Theme color por modo (light/dark)

### Schemas JSON-LD

- **LocalBusiness + AccountingService + ProfessionalService** (combinado) — con horarios, dirección, geo, services, areaServed
- **Organization** — con contactPoint y logo
- **WebSite** — con publisher
- **BreadcrumbList** — para navegación
- **FAQPage** — separado, con 10 Q&A

### Archivos extras

- `sitemap.xml` — listado de secciones
- `robots.txt` — permite Google, Bing y bots de IA (GPTBot, ClaudeBot, PerplexityBot)
- `manifest.webmanifest` — PWA básico

### Verificaciones (preparado, falta completar)

En el `<head>` del `index.html` hay placeholders comentados para:

```html
<!-- <meta name="google-site-verification" content="..." /> -->
<!-- <meta name="msvalidate.01" content="..." /> -->
```

Cuando tengas la cuenta de Google Search Console / Bing Webmaster, descomentás esa línea y pegás el código.

## Vercel Analytics

Implementado mediante script directo (la forma correcta para sitios estáticos puros). No requiere `npm install`. Los snippets están al final del `<body>`:

```html
<script defer src="/_vercel/insights/script.js"></script>
<script defer src="/_vercel/speed-insights/script.js"></script>
```

Vercel inyecta esos scripts automáticamente en producción cuando Analytics y Speed Insights están habilitados en el dashboard del proyecto.

## Desarrollo local

Abrí `index.html` directamente en cualquier navegador (doble click) o serví la carpeta con cualquier servidor estático:

```bash
# Opción 1 — Python
python -m http.server 8000

# Opción 2 — Node (npx)
npx serve .
```

## Despliegue en Vercel

El repo está conectado a Vercel. Cada push a `main` se publica automáticamente.

Configuración (en `vercel.json`):

- `outputDirectory: "."` — la raíz es el output (no hay build)
- `buildCommand: null` — sin build
- `framework: null` — sitio estático puro
- Headers de seguridad (X-Content-Type-Options, Referrer-Policy)
- Cache largo (1 año) para assets

## Datos de contacto

- **WhatsApp / Tel**: +54 11 5495-6931
- **Email**: contacto@gici.com.ar
- **Dirección**: Gral. Las Heras 350, B1714 Ituzaingó, Buenos Aires
- **Horario**: Lun a Vie · 8:00 – 17:00

---

© GICI — Gestión Integral Contable e Impositiva. Todos los derechos reservados.
