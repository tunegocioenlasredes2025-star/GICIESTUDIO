# GICI — Gestión Integral Contable e Impositiva

Sitio web institucional del estudio contable **GICI**, ubicado en Ituzaingó, Buenos Aires.

> Estudio contable que ofrece soluciones impositivas, laborales y comerciales para personas y empresas.

## Stack

Sitio estático single-page construido con:

- **HTML5** semántico
- **Tailwind CSS** (CDN) con paleta de marca personalizada
- **Google Fonts** — Sora (display), Inter (UI), Manrope (body)
- **Vanilla JavaScript** — animaciones, counters, formulario, menú mobile
- **Schema.org** JSON-LD (`AccountingService`) para SEO local

Sin build step. Sin dependencias instalables. Listo para servir.

## Estructura

```
.
├── index.html              # Sitio completo (one-pager con 4 secciones)
├── assets/
│   ├── favicon.svg         # Favicon SVG
│   └── images/
│       └── logo.png        # Logo oficial GICI
├── vercel.json             # Configuración de despliegue + headers de seguridad
├── package.json            # Marca el repo como sitio estático (sin build)
└── README.md
```

## Secciones

1. **Inicio** — Hero con dashboard glassmorphism y stats animadas
2. **Servicios** — 4 áreas (impositivo/laboral · comercial · ganancias · bienes personales)
3. **Nosotros** — Manifiesto, propósito y 6 valores
4. **Contacto** — Formulario, canales directos y mapa de Google

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

Para hacer un deploy manual desde local (requiere Vercel CLI):

```bash
npm i -g vercel
vercel        # preview
vercel --prod # producción
```

## Datos de contacto

- **WhatsApp / Tel**: +54 11 5495-6931
- **Email**: contacto@gici.com.ar
- **Dirección**: Gral. Las Heras 350, B1714 Ituzaingó, Buenos Aires
- **Horario**: Lun a Vie · 9:00 – 18:00

---

© GICI — Gestión Integral Contable e Impositiva. Todos los derechos reservados.
