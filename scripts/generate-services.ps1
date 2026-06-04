# Genera las 4 paginas estaticas por servicio.
# Ejecutar desde la raiz: powershell -File scripts/generate-services.ps1
# (Usa HTML entities en lugar de emojis literales para evitar problemas de encoding)

$root = Split-Path -Parent $PSScriptRoot
$tpl  = Get-Content (Join-Path $root "scripts/_template-servicio.html") -Raw
$out  = Join-Path $root "servicios"
if (-not (Test-Path $out)) { New-Item -ItemType Directory -Path $out | Out-Null }

$services = @(
  @{
    slug = "asesoramiento-impositivo-laboral"
    n = 1
    title = "Asesoramiento Impositivo y Laboral"
    h1 = "Asesoramiento impositivo y laboral en Ituzaingo"
    h1Url = "Asesoramiento%20impositivo%20y%20laboral"
    subtitle = "Cumplimiento fiscal y laboral integral para que tu empresa opere con tranquilidad ante ARCA, ARBA y los organismos provinciales. Te avisamos cada vencimiento y nos ocupamos de todo."
    metaDesc = "Asesoramiento impositivo y laboral en Ituzaingo. Liquidacion de impuestos, sueldos, cargas sociales, inscripciones ARCA/ARBA y defensa ante inspecciones."
    keywords = "asesoramiento impositivo Ituzaingo, asesoramiento laboral Ituzaingo, contador ARCA, liquidacion de sueldos, cargas sociales, inscripciones ARCA ARBA, contador para PyMEs"
    longDescription = @'
<p>Llevamos el cumplimiento impositivo y laboral de tu empresa o actividad de punta a punta. Trabajamos con personas humanas, monotributistas, autonomos, sociedades, PyMEs y comercios &mdash; adaptando el servicio a la escala y al sector de cada cliente.</p>
<p>El objetivo es simple: que vos te dediques a lo que mejor sabes hacer y nosotros nos ocupemos de los impuestos, los sueldos y la relacion con ARCA, ARBA y los organismos provinciales. Te avisamos con tiempo los vencimientos, presentamos en termino y te explicamos que se hizo y por que.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Como trabajamos</h3>
<p>Despues de una primera reunion sin cargo, te enviamos un plan de trabajo con los servicios concretos, la frecuencia y los honorarios. Si decidis avanzar, asignamos un profesional responsable que va a ser tu interlocutor unico. Toda la documentacion se gestiona de forma digital y respondemos consultas por WhatsApp, email o telefono en menos de 24 horas habiles.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Por que tercerizar este servicio</h3>
<p>Las normativas impositivas y laborales argentinas cambian constantemente. Tener un estudio contable actualizado te evita multas, intereses por mora, errores de liquidacion y problemas con empleados. Ademas, una correcta planificacion fiscal te puede ahorrar dinero legalmente todos los anos.</p>
'@
    bullets = @(
      "Liquidacion de IVA, Ganancias e Ingresos Brutos",
      "Liquidacion mensual de sueldos y cargas sociales",
      "Inscripciones ARCA, ARBA y altas tempranas",
      "Recategorizaciones de Monotributo",
      "Defensa ante inspecciones y fiscalizaciones",
      "Convenios de pago y planes de regularizacion",
      "Asesoramiento en relacion de dependencia",
      "Liquidacion de aguinaldos y vacaciones"
    )
    audience = @(
      @{ icon = "&#127978;"; title = "Comercios y PyMEs"; text = "Locales, mayoristas, distribuidoras, fabricas y prestadores de servicios con empleados." }
      @{ icon = "&#128100;"; title = "Monotributistas y autonomos"; text = "Profesionales independientes que necesitan estar al dia sin perder tiempo en tramites." }
      @{ icon = "&#127970;"; title = "Sociedades"; text = "SAS, SRL y SA que requieren un seguimiento integral mes a mes." }
    )
  }
  @{
    slug = "asesoramiento-comercial"
    n = 2
    title = "Asesoramiento Comercial"
    h1 = "Asesoramiento comercial y planificacion estrategica"
    h1Url = "Asesoramiento%20comercial"
    subtitle = "Analisis, planificacion y acompanamiento estrategico para que cada decision de negocio este respaldada con numeros claros, no con intuicion."
    metaDesc = "Asesoramiento comercial en Ituzaingo: planificacion impositiva y financiera, analisis de rentabilidad, costos, constitucion de sociedades y acompanamiento mensual."
    keywords = "asesoramiento comercial Ituzaingo, planificacion financiera, analisis rentabilidad, constitucion sociedades SAS SRL, contador para PyMEs, asesor de negocios"
    longDescription = @'
<p>El asesoramiento comercial va mas alla del cumplimiento impositivo: te ayudamos a tomar mejores decisiones con tus numeros. Analizamos rentabilidad por producto o servicio, costos fijos y variables, margenes, punto de equilibrio y flujo de caja para que sepas exactamente donde estas parado.</p>
<p>Trabajamos con duenos de negocio que quieren profesionalizar su gestion: ordenar la administracion, planificar inversiones, evaluar la conveniencia de incorporar empleados, decidir entre alquilar o comprar, o entender si conviene una SAS, SRL o seguir como monotributista.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Reportes mensuales claros</h3>
<p>Recibis cada mes un informe simple y accionable con los indicadores clave de tu negocio: facturacion, costos, margenes brutos, resultado neto y proyeccion. Sin tecnicismos, con explicacion de las variaciones y recomendaciones concretas.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Constitucion y reorganizacion societaria</h3>
<p>Si estas por arrancar o queres cambiar de figura, te asesoramos en la eleccion optima del tipo de sociedad (SAS, SRL, SA, monotributo), tramitamos la constitucion completa y te explicamos las implicancias impositivas, laborales y patrimoniales de cada opcion.</p>
'@
    bullets = @(
      "Planificacion impositiva y financiera anual",
      "Analisis de rentabilidad por producto/servicio",
      "Reportes de gestion mensuales",
      "Constitucion de sociedades (SAS, SRL, SA)",
      "Reorganizaciones y fusiones societarias",
      "Asesoramiento en decisiones de inversion",
      "Proyecciones de flujo de caja",
      "Acompanamiento personalizado mes a mes"
    )
    audience = @(
      @{ icon = "&#128640;"; title = "Emprendedores"; text = "Que estan por formalizar su proyecto y necesitan elegir bien la estructura." }
      @{ icon = "&#128202;"; title = "PyMEs en crecimiento"; text = "Que quieren profesionalizar su gestion y tomar decisiones con datos reales." }
      @{ icon = "&#128188;"; title = "Empresas familiares"; text = "Que necesitan ordenar la administracion y planificar el futuro del negocio." }
    )
  }
  @{
    slug = "liquidacion-ganancias"
    n = 3
    title = "Liquidacion del Impuesto a las Ganancias"
    h1 = "Liquidacion de Ganancias"
    h1Url = "Liquidacion%20de%20Ganancias"
    subtitle = "Liquidacion precisa del Impuesto a las Ganancias para personas humanas, autonomos, monotributistas que superan los topes y sociedades. Con optimizacion legal de la base imponible."
    metaDesc = "Liquidacion del Impuesto a las Ganancias en Ituzaingo. Calculo, presentacion, deducciones, anticipos y optimizacion legal para personas y empresas."
    keywords = "liquidacion Ganancias Ituzaingo, impuesto a las Ganancias personas humanas, Ganancias autonomos, Ganancias sociedades, deducciones Ganancias, anticipos Ganancias"
    longDescription = @'
<p>El Impuesto a las Ganancias es uno de los tributos mas relevantes y, al mismo tiempo, mas complejos del sistema impositivo argentino. Una liquidacion bien hecha puede significar miles o decenas de miles de pesos de diferencia, todo dentro del marco legal vigente.</p>
<p>Liquidamos Ganancias para personas humanas (empleados en relacion de dependencia, autonomos, profesionales), monotributistas que superan los topes, sociedades y todo tipo de contribuyente. Estudiamos cada caso para aprovechar todas las deducciones admitidas: cargas de familia, gastos medicos, alquiler, intereses hipotecarios, donaciones, primas de seguro y aportes jubilatorios.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Optimizacion legal del impuesto</h3>
<p>No se trata de "evadir" sino de "elusion legal": aplicar todas las deducciones, exenciones y desgravaciones que la ley permite para pagar lo justo, ni mas ni menos. Te explicamos que documentacion necesitamos a lo largo del ano para poder maximizar tus deducciones cuando llegue el momento de la presentacion.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Anticipos y planificacion</h3>
<p>Calculamos y te avisamos los anticipos de Ganancias para que no te tomen por sorpresa. Si la situacion lo amerita, evaluamos opciones de reduccion de anticipos cuando los ingresos esperados son menores que los del ano anterior.</p>
'@
    bullets = @(
      "Calculo, presentacion y pago anual",
      "Optimizacion legal de la base imponible",
      "Aplicacion de todas las deducciones admitidas",
      "Liquidacion de anticipos a lo largo del ano",
      "Retenciones y percepciones &mdash; recupero de saldos",
      "Recategorizaciones y planes de pago",
      "Asesoramiento en deducciones especiales (alquiler, hipoteca)",
      "Soporte ante intimaciones o requerimientos"
    )
    audience = @(
      @{ icon = "&#128084;"; title = "Empleados en relacion de dependencia"; text = "Que superan el minimo no imponible y necesitan presentar deducciones." }
      @{ icon = "&#128188;"; title = "Autonomos y profesionales"; text = "Que facturan en forma habitual y deben liquidar Ganancias todos los anos." }
      @{ icon = "&#127970;"; title = "Sociedades"; text = "Regimen general, con cierre de balance y determinacion de impuesto." }
    )
  }
  @{
    slug = "bienes-personales"
    n = 4
    title = "Bienes Personales"
    h1 = "Liquidacion de Bienes Personales"
    h1Url = "Bienes%20Personales"
    subtitle = "Valuacion, presentacion y pago del impuesto sobre los Bienes Personales con foco en compliance y optimizacion dentro del marco legal vigente."
    metaDesc = "Liquidacion de Bienes Personales en Ituzaingo. Valuacion de bienes en el pais y exterior, regimen de responsable sustituto, anticipos y planes de pago."
    keywords = "Bienes Personales Ituzaingo, liquidacion Bienes Personales, valuacion bienes exterior, responsable sustituto, anticipos Bienes Personales, plan de pago ARCA"
    longDescription = @'
<p>El Impuesto sobre los Bienes Personales grava el patrimonio de personas humanas y sucesiones indivisas al 31 de diciembre de cada ano. La determinacion correcta requiere valuar todos los bienes (inmuebles, automotores, depositos, inversiones, participaciones societarias) segun las reglas especificas que dicta la ARCA, que cambian anualmente.</p>
<p>Liquidamos Bienes Personales para residentes argentinos con bienes en el pais y/o en el exterior, evaluando en cada caso la conveniencia de aplicar la alicuota agravada para bienes en el exterior o repatriar parcialmente para acceder a la alicuota reducida.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Regimen de responsable sustituto</h3>
<p>Si tenes acciones o participaciones en una SA, SRL o SAS, ese impuesto lo paga la sociedad como responsable sustituto. Nos ocupamos de calcularlo, presentarlo y pagarlo en tiempo y forma para evitar intereses y multas.</p>
<h3 class="font-display text-xl font-semibold text-ink mt-6 mb-3">Anticipos y regularizacion</h3>
<p>Calculamos los anticipos anuales y te avisamos cada vencimiento. Si tenes deuda atrasada, evaluamos los planes de pago vigentes en ARCA para que regularices tu situacion de la mejor manera posible.</p>
'@
    bullets = @(
      "Valuacion de inmuebles, automotores y bienes muebles",
      "Valuacion de depositos, inversiones y participaciones",
      "Bienes en el exterior &mdash; alicuota especial y repatriacion",
      "Regimen de responsable sustituto (sociedades)",
      "Calculo y pago de anticipos",
      "Planes de pago y regularizacion",
      "Soporte ante intimaciones y fiscalizaciones",
      "Planificacion patrimonial anual"
    )
    audience = @(
      @{ icon = "&#127968;"; title = "Personas con patrimonio relevante"; text = "Inmuebles, automotores, plazos fijos, acciones, fondos comunes." }
      @{ icon = "&#127758;"; title = "Con bienes en el exterior"; text = "Depositos, inmuebles o inversiones fuera del pais &mdash; alicuota especial." }
      @{ icon = "&#127970;"; title = "Socios de sociedades"; text = "Regimen de responsable sustituto que paga la SA, SRL o SAS." }
    )
  }
)

foreach ($s in $services) {
  $bulletsHtml = ($s.bullets | ForEach-Object { '<li class="flex items-start gap-3 text-sm text-ink/75"><span class="mt-1.5 h-1.5 w-1.5 flex-none rounded-full bg-brand-600"></span><span>' + $_ + '</span></li>' }) -join "`n          "
  $audienceHtml = ($s.audience | ForEach-Object { '<div class="rounded-3xl border border-ink/10 bg-white p-7 hover:shadow-soft transition-all"><div class="text-3xl mb-3">' + $_.icon + '</div><h3 class="font-display text-lg font-semibold text-ink mb-2">' + $_.title + '</h3><p class="text-sm leading-relaxed text-ink/65">' + $_.text + '</p></div>' }) -join "`n      "

  $html = $tpl `
    -replace '@@SLUG@@', $s.slug `
    -replace '@@N@@', $s.n `
    -replace '@@TITLE@@', $s.title `
    -replace '@@H1@@', $s.h1 `
    -replace '@@H1_URL@@', $s.h1Url `
    -replace '@@SUBTITLE@@', $s.subtitle `
    -replace '@@META_DESC@@', $s.metaDesc `
    -replace '@@KEYWORDS@@', $s.keywords `
    -replace '@@LONG_DESCRIPTION@@', $s.longDescription `
    -replace '@@BULLETS_LIST@@', $bulletsHtml `
    -replace '@@AUDIENCE_CARDS@@', $audienceHtml

  $outPath = Join-Path $out ($s.slug + ".html")
  Set-Content -Path $outPath -Value $html -Encoding UTF8
  Write-Host "OK: servicios/$($s.slug).html"
}
