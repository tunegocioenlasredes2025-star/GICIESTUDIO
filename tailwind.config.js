/** @type {import('tailwindcss').Config} */
// Build con:  npx tailwindcss@3 -c tailwind.config.js -i assets/css/tailwind.src.css -o assets/css/app.min.css --minify
module.exports = {
  content: [
    './index.html',
    './servicios/**/*.html',
    './*.html',
  ],
  // Clases que el JS agrega/quita en runtime (el scanner igual las encuentra en el
  // texto, pero las dejamos explícitas como red de seguridad).
  safelist: [
    'pt-2', 'pt-4', 'h-14', 'h-16', 'glass', 'shadow-soft',
    'opacity-0', 'opacity-100', 'translate-y-0', 'translate-y-4',
    'pointer-events-none', 'active', 'hidden', 'in',
  ],
  theme: {
    extend: {
      colors: {
        brand: { DEFAULT:'#08818a', 50:'#effbfb', 100:'#d7f4f5', 200:'#b3e8eb', 300:'#7ed4da', 400:'#42b6c0', 500:'#27989f', 600:'#08818a', 700:'#0b6770', 800:'#0f535a', 900:'#11464c', 950:'#042c31' },
        ink: { DEFAULT:'#1b110c', 50:'#f7f5f4', 100:'#ebe7e5', 200:'#cdc4c0', 300:'#a89c96', 400:'#7d6d66', 500:'#5d4f49', 600:'#48403c', 700:'#393331', 800:'#2a2421', 900:'#1b110c' },
        cream:'#fbfaf8', ivory:'#f4f1ee', stoneWarm:'#665e5c'
      },
      fontFamily: {
        sans:['Inter','system-ui','sans-serif'],
        display:['Sora','system-ui','sans-serif'],
        body:['Manrope','system-ui','sans-serif']
      },
      boxShadow: {
        soft:'0 4px 24px -8px rgba(27,17,12,0.08)',
        premium:'0 20px 60px -20px rgba(8,129,138,0.25), 0 6px 20px -10px rgba(27,17,12,0.08)'
      }
    }
  }
}
