
<div style="page-break-before: always;"></div>
\newpage

# Información del Documento

Esta es la doc del grupo.
## Versión del Documento

> 

<br>

---
title: Propuesta de Servicios Secretaria de la Alcaldía de Bogotá
subtitle: Evaluación y Hoja de Ruta de la Arquitectura del Canal Bancario Whatsapp
subject: Proyecto de Evaluación y Hoja de Ruta Arquitectura
author: SoftProductiva.com
date: 2025-01-20
keywords: [Arquitectura, Evaluación, Diseño, Hoja de ruta, Transición]
geometry:
  - top=1.3in
  - bottom=1in
  - left=1in
  - right=1in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
titlepage-background: include/background2.pdf
titlepage-logo: include/logo.png
logo-width: 60mm
listings-no-page-break: true
...

Versión actual 1.485b2b8 - Compilación para entrega: accion-actualizacionContd (f252a39) - Tue, 12 Aug 2025 13:42:39 +0000 


## Control de Cambios
Historia de cambios del documento.

1.7f9a96a - Compilación para entrega: accion-actualizacionContd (9d89c64) - Mon, 11 Aug 2025 01:07:28 +0000

1.c2aaff6 - Compilación para entrega: accion-actualizacionContd (c625626) - Mon, 11 Aug 2025 00:57:34 +0000

1.127abc9 - Compilación para entrega: accion-actualizacionContd (d03a6bb) - Sun, 10 Aug 2025 04:02:40 +0000

1.15d99b5 - Compilación para entrega: accion-actualizacionContd (309ad63) - Sun, 10 Aug 2025 02:33:50 +0000


### Realizado Por
(creador)

### Revisado Por
(revisor), Arquitectura de Aplicaciones




---
lang: en
titlepage: true
titlepage-rule-color: 360049

...




<div style="page-break-before: always;"></div>
\newpage

# Servicios de Ingeniería Arquitectura de Aplicaciones Secretaria de la Alcaldía de Bogotá

## 03.ENTRG.1n. Modelo de Entregas

> Ingenium.  Modelo de Entregas. Dominio de Aplicación. AE. Secretaria Seneral Alcaldía Mayor de Bogotá.  

<br>


![03.ENTRG.1n. Modelo de Entregas. _Fuente: Propuesta servicios de ingeniería y evaluación de arquitectura Arquitectura de Aplicaciones Secretaria de la Alcaldía de Bogotá (2025)_](images/03.ENTRG.1n.ModelodeEntregas.png){#fig:id-b7aa07be1bf34794b7ab18f800fd4d63 width=5in height=}

### Elementos del Modelo

| Nombre  | Tipo | Documentación |
|---------|------|---------------|
| Hoja ruta del producto / Plan de producto | Grouping |  |
| Plan de entregas / iteración | Grouping |  |
| Hoja ruta arquitectura | Grouping |  |

Table: Elementos de la vista. {#tbl:tblelement-03.ENTRG.1n.ModelodeEntregas-id}

<br>




---
lang: en
titlepage: true
titlepage-rule-color: 360049
todo: aun no está lista
...




## Entregables Fase I de la Visión AE de SG

>   

<br>


![03. Entregables Vision. _Fuente: Propuesta servicios de ingeniería y evaluación de arquitectura Arquitectura de Aplicaciones Secretaria de la Alcaldía de Bogotá (2025)_](images/03.EntregablesVision.png){#fig:id-0993b3b264144f84abe5c7031666fede width= height=}

### Visión

### Contexto de Arquitectura de Sistemas de Información SG
Desde el dominio de aplicaciones y sistemas de información de la Secretaría General, llamada en adelante “la arquitectura de sistemas de Información de SG”, buscamos adelantar las especificaciones de las arquitecturas objetivo de los sistemas de información de Secretaria de la Alcaldía de Bogotá que soporten la arquitectura de negocio y datos, en línea y dentro del alcance de la visión establecida en el primer entregable de este ejercicio de arquitectura empresarial de SG (AESG).

En particular, la arquitectura de sistemas de información de SG se plantea, dentro del alcance de la visión del ejercicio:

* Definir la arquitectura de las aplicaciones (SI) necesarias para soportar los procesos de negocio de SG.
* Identificar las funciones de negocio que deben ser soportadas por las aplicaciones de SG.
* Establecer la interacción y el flujo de información entre las diferentes aplicaciones de SG.
* Considerar aspectos sistémicos como la escalabilidad, el rendimiento, la mantenibilidad y la seguridad de las aplicaciones de SG.
* Listar los capacidades de negocio (servicios de aplicación) relacionadas con las arquitecturas de aplicaciones de SG.

De esta manera, la arquitectura de sistemas de SG contribuye a la consecución de la visión de este ejercicio de arquitectura empresarial SG (AESG); y en lo específico, contribuye a los fines de la arquitectura de negocio y tecnológica de SG, a delinear oportunidades y soluciones, y a soportar la planeación de la migración. Todo lo anterior dentro del alcance consignado en este ejercicio.

#### Alcance
El presente ejercicio de la arquitectura dominio de aplicaciones toma como alcance horizontal las áreas o unidades siguientes de la SG (_fuente: sesiones de levantamiento, entrevistas, y cuestionarios compartidos en el mes de julio del 2025, junto con la recopilación estructurada de las fuentes de información y organigramas_):

Unidades de negocio del alcance del dominio:

* Secretaría Privada
    * Oficina Consejería Distrital de Comunicación. César Augusto Castro Rodríguez
    * Oficina Consejería Distrital de Tecnologías de la Información y las Comunicaciones -TIC. Diana Celis Mora
* Despacho del Secretario General. Miguel Andrés Silva Moyano
    * Oficina de Tecnologías de la Información y las Comunicaciones. Arleth Patricia Saurith Contreras
    * Subsecretaría Distrital de Fortalecimiento Institucional. Alejandra Rodas Gaiter
        * Dirección Distrital de Desarrollo Institucional. Sebastian Estrada Jaramillo
            * Subdirección Técnica de Desarrollo Institucional. Diego Canesco Arenas
    * Subsecretaría de Servicio a la Ciudadanía . Adriana Vargas Tamayo
        * Dirección del Sistema Distrital de Servicio a la Ciudadanía. Enrique Cusba García
    * Subsecretaría Corporativa. Henry Villamarín Serrano
    * Subsecreataría de Servicios Ciudadanos (…)
    * Subsecreataría de Inversión y FF (…)
    * Subsecreataría de Operaciones
    * Subsecreataría de Relaciones Internacionales (…)

En cuanto al alcance vertical, las aplicaciones de software que están consignadas en este ejercicio son las siguientes (_fuente: sesiones de levantamiento, entrevistas, y cuestionarios compartidos en el mes de julio del 2025, junto con la recopilación estructurada de las fuentes de información_):

* Administrativo y Financiero: Soporta la gestión financiera, gestión de servicios administrativos y tecnológicos, y gestión de recursos físicos
* Bogotá Te Escucha: Es fundamental para el proceso de Gobierno abierto y relacionamiento con la ciudadanía5. También se menciona como el Sistema Distrital para la Gestión de Peticiones Ciudadanas, a través del cual se evalúa la calidad de las respuestas emitidas a la ciudadanía
* Bogotá Aprende TIC: Apoya los procesos de Gobierno abierto y relacionamiento con la ciudadanía, y Fortalecimiento de la Gestión Pública
* DARUMA: Se utiliza en el proceso de Fortalecimiento de la Gestión Pública5. También es el aplicativo donde se encuentran definidas las fichas técnicas de productos y servicios de la Secretaría General8 y se gestionan los riesgos estratégicos
* SIGA: Interviene en la gestión de contratación, gestión financiera, gestión de servicios administrativos y tecnológicos, y gestión de recursos físicos
* SAT Web: Relacionado con la gestión de servicios administrativos y tecnológicos
* GLOBO: Utilizado en el proceso de Fortalecimiento de la Gestión Pública
* Datos para la Transparencia (SATI): Soporta el proceso de Gobierno abierto y relacionamiento con la ciudadanía
* SUDIVC: Se aplica en los procesos de Gobierno abierto y relacionamiento con la ciudadanía, Paz, víctimas y reconciliación, y Fortalecimiento de la Gestión Pública
* HUMANAPP: Apoya la gestión del talento humano
* SIAB (El COFRE): Utilizado en los procesos de Gobierno abierto y relacionamiento con la ciudadanía, y Fortalecimiento de la Gestión Pública
* KOHA: Relacionado con la Gestión del conocimiento
* SIVIC: Interviene en los procesos de Paz, víctimas y reconciliación, y Fortalecimiento de la Gestión Pública
* Data Warehouse AVANTI: Apoya la Gestión del conocimiento
* Gestión Académica: Relacionado con la Gestión del conocimiento
* EMLAZE: Utilizado en los procesos de Gobierno abierto y relacionamiento con la ciudadanía, y Fortalecimiento de la Gestión Pública
* GLPI: Soporta la gestión de servicios administrativos y tecnológicos
* GitLab: Se relaciona con la Gestión de alianzas e internacionalización de Bogotá

### Matriz de Sistemas de Información vs Procesos de Negocio
Las matrices del dominio de aplicaciones de software y sistemas de información (SI) de SG son herramientas para el relacionamiento con otros dominios del ejercicio de arquitectura empresarial de SG. Con esto conseguimos soportar la toma decisiones de lo que debe ser compartido de los SI dentro de la Secretaría, y entre sus aplicaciones de software. Las matrices de este ejercicio sirven además para comunicar el grado de relacionamiento de los elementos.

En resumen,

* Las matrices son cruciales para especificar cómo debe relacionarse la información entre los sistemas y otros dominios
* proporcionan información crítica para los proyectos que involucren a los sistemas de SG.
* Contribuye a la determinación de brechas (gaps) en las necesidades de compartir información (o funciones de los sistemas) ente los elementos de la matriz. 
* La matriz ayuda a definir el nivel de detalle de lo que se comparte.
* Se deben establecer medidas similares para la interoperabilidad de servicios/negocios y la infraestructura (tecnología física).
* Sintetizan la información de las arquitecturas, y son simples para compartir documentos.

Las matrices de este dominio (procesos e interoperabilidad) actúan como una hoja de ruta para la conectividad y el intercambio de información; inician desde una perspectiva de negocio de alto nivel y van hasta una especificación técnica detallada del la interacción con los sistemas. Sirven como herramienta de comunicación para los demás dominios de la arquitectura empresarial de SG, y contribuyen a que las interacciones relevantes entre servicios, canales, y procesos estén definidas y sean compatibles.

### Catálogo de Sistemas de Información
En el contexto de TOGAF, El Catálogo de sistemas de información es un inventario detallado y documentado que actúa como ficha técnica de los sistemas de información o aplicaciones de software de SG. 

Es un producto entregable clave de la fase de Arquitectura de Aplicaciones dentro de la Fase 3 de este ejercicio de arquitectura empresarial (AE). Forma parte del Marco de Referencia del Contenido Arquitectónico de TOGAF y del Marco de Arquitectura de Referencia del MinTIC (MAE 3.0, Colombia).

La construcción del catálogo de aplicaciones implican a las sesiones de levantamiento, entrevistas, y cuestionarios compartidos en el mes de julio, junto con la recopilación estructurada de las fuentes de información sobre cada sistema.

#### Contenido Mínimo del Catálogo

* ID de Aplicación. Código de identificación de la aplicación de software.
* Nombre de la Aplicación. Nombre de identificación de la aplicación de software.
* Descripción. Funcionamiento básico de la aplicación de software.
* Estado: [En producción, en desmantelamiento, en implementación, Inactiva]
* Categoría: [Sistema de apoyo al negocio (misional), herramienta de gestión, Ofimática, Seguridad] 
* Proceso(s) de Negocio Clave(s)
* Capacidad: Capacidades de nivel 2 relacionadas con la aplicación de software.
* Tipo de aplicación: Web, Móvil, Cliente Servidor 
* Método de despliegue: on-premises, cloud SAAS, cloud PAAS, cloud IAAS 
* Tecnología. Aspectos técnicos de la aplicación de software.
* Versión actual de la tecnología
* Responsable técnico en la entidad
* Responsable funcional en la entidad
* Fabricante
* Proveedor de soporte externo
* Fecha de vigencia de soporte externo
* Nombre de servidor. Nombre de red del entorno o nodo contenedor de la aplicación de software. 
* Criticidad de negocio

El Catálogo de aplicaciones de SG procura beneficios estratégicos y operativos:

* Unifica la documentación y la comunicación: Es un artefacto clave para documentar, comprender y comunicar el panorama actual y futuro de las aplicaciones.
* Base para la toma de decisiones: Sirve como base para la toma de decisiones en la gestión y gobierno de las capacidades de los sistemas de SG, y del portafolio y ciclo de vida de las aplicaciones.
* Facilita la actualización continua: Permite la actualización continua de las características y atributos relevantes de los sistemas de información.

### Necesidades SI de SG
La construcción de lista de necesidades, preocupaciones y oportunidades implican a las sesiones de levantamiento, entrevistas, y cuestionarios compartidos en el mes de julio, junto con la recopilación estructurada de las fuentes de información sobre cada sistema.

#### Necesidades de Transformación Digital y Tecnológica
La transformación digital (objetivo estratégico de SG)  es un motor fundamental para alinear las estrategias, procesos y tecnologías de la Secretaría General. Esta transformación busca:

* Impulsar la transformación digital para alinear estrategias, procesos y tecnologías, que resulte en el aumento de eficiencia de la gestión pública.
* Cerrar las brechas en la Política de Gobierno Digital, de la cual la Arquitectura Empresarial es un habilitador clave.
* Modernizar la infraestructura tecnológica que resulte del análisis de obsolescencia para asegurar su continuidad y disponibilidad.
* Integrar plataformas y ecosistemas digitales y superar la falta de interoperabilidad.
* Aumentar la automatización de los trámites digitales.
* Estandarizar la gestión y gobernanza de datos públicos.
* Mejorar el soporte que los SI dan a la toma de decisiones basada en evidencia.
* Generar análisis predictivos y prospectivos de resultados de gestión, que son insumos para la toma de decisiones.
* Contar con disponibilidad de personal adecuado para actualizar plataformas tecnológicas y gestionar las cargas de trabajo.
* Aprovechar nuevas tecnologías como la Inteligencia Artificial, la minería de datos, el procesamiento del lenguaje, para mejorar los procesos y la relación con la ciudadanía.

* Abordar los altos costos de la tecnología que limitan la implementación de sistemas avanzados. (??)
* Fortalecer la ciberseguridad y seguridad de la información para proteger la integridad, disponibilidad y confidencialidad de los datos y prevenir ataques.

#### Necesidades Específicas del Dominio de Aplicaciones de software
Esta tipo de necesidades refiere al comportamiento de las aplicaciones que apoyan la misionalidad, a su estructura, y su relación con los objetos de datos que utilizan.

Para los Componentes de Aplicación (Application Component) y Servicios de Aplicación (Application Service) de SG:

* Adquirir software especializado en análisis de datos: implica la necesidad de incorporar de nuevos componentes de aplicación (Application Component).
* Integrar plataformas y ecosistemas digitales :requiere reforzar la relación entre componentes de aplicación y la exposición de servicios de aplicación (Application Service), y clicar los lineamientos del Marco de Referencia de AE, versión 3.0 al momento, del MinTIC.
* Mejorar la capacidad de las herramientas tecnológicas para el soporte a la toma de decisiones y la gestión: requiere la mejora de las Funcionalidad (Application Function) y Componentes de Aplicación actuales asociadas a esta capacidad.

### Preocupaciones SI de SG
Con base en el estudio de las sesiones de levantamiento, entrevistas, y cuestionarios compartidos en el mes de julio, junto con la recopilación estructurada de las fuentes de información sobre cada sistema, identificamos las siguientes preocupaciones (y debilidades) de SG relacionadas con el dominio de sistemas de información, dentro del alcance de este ejercicio.

Las preocupaciones tecnológicas respecto de los sistemas de información de SG mencionadas en estas fuentes señalan:

* Deficiente apropiación del conocimiento en procesos de tecnologías de la información, lo que genera demora en la solución de los servicios de tecnologías de la información.
* Equipos tecnológicos en proceso de mitigar la obsolescencia, que generan dificultad en la ejecución de las actividades que desarrolla la entidad.
* Fallas recurrentes en el funcionamiento de los sistemas de información y plataformas tecnológicas de la entidad, que afectan la continuidad del servicio y generan retrasos y reprocesos en la ejecución de las actividades.
* Insuficiencia en la capacidad de las herramientas tecnológicas de la entidad que pueden obstaculizar el avance de los iniciativas en marcha de la SG.
* Debilidad en la capacidad de extraer información dinámica que sirva como insumo para la toma de decisiones basado en evidencia.
* Se realizan análisis de datos descriptivos aislados, pero no predictivos y prospectivos de los resultados de la gestión de la entidad, lo que dificulta la toma de decisiones basada en evidencia.
* Falta de personal para actualizar las plataformas tecnológicas, lo que genera retrasos en la operación de la entidad.
* Deficiente conectividad y falta de interoperabilidad de las plataformas tecnológicas.
* Cambios en las plataformas tecnológicas que no interactúan con las anteriores, lo cual expone a la SG a posibles pérdidas de información y reprocesos.
* Apostar más en la mejora continua de la inestabilidad de la conectividad, indisponibilidad de servidores de información y vulnerabilidad en la seguridad informática; lo contrario puede comprometer la operatividad, la integridad de los datos críticos de la entidad y el cumplimiento de las metas.
* Potencial y rápida obsolescencia tecnológica que implica la necesidad de renovación de los equipos y dificulta la prestación de los servicios de la entidad.
* Los altos costos de la tecnología pueden limitar la capacidad de la entidad para implementar y mantener sistemas avanzados y eficientes.

### Oportunidades SI de SG
La construcción de lista de oportunidades mencionadas implica el estudio de las sesiones de levantamiento, entrevistas, y cuestionarios compartidos en el mes de julio, junto con la recopilación estructurada de las fuentes de información al respecto de cada sistema de SG.

Las oportunidades tecnológicas y de mejora de sistemas de información mencionadas indicadas en estas fuentes se centran en:

* Modernización de la infraestructura y sistemas tecnológicos
    * Las nuevas tecnologías, especialmente la Inteligencia Artificial (IA), ofrecen la oportunidad de mejorar los procesos y herramientas de relacionamiento con la ciudadanía. La Secretaría General ya ha empezado a incorporar tecnologías como IA, Big Data, pero debe seguir ampliando ese despliegue, así como incorporar otras, como el Internet de las Cosas (IoT), o la minería de datos en la planificación urbana y la prestación de servicios.
    * Una oportunidad es la adquisición y puesta en producción de software especializado en análisis de datos para la toma de decisiones que ya poseen otras entidades.

* Integración y automatización de procesos
    * Se identifican oportunidades para contar con herramientas que evalúen el soporte tecnológico personalizado, flexible y configurable para las operaciones de los procesos jurídicos.
    * Se buscan mejores controles e integración de sistemas distritales con los canales de la Secretaría General.
    * También se necesitan mejores controles e integración de los sistemas de gestión como los sistemas GLOBO (de gestión internacional), el sistema de proyectos GLPI.

* Mejora de la comunicación pública a través de medios digitales
    * Se busca la consolidación de herramientas, canales e información para fortalecer la oferta y celeridad de servicios y la participación ciudadana. Esto incluye el seguimiento a canales de atención virtual como SuperCADE Virtual, chat, chat-Bot y (video) llamadas de la línea 195.
    * Se busca optimizar los procesos de recolección, análisis y divulgación de la información mediante la implementación de sistemas de información que incluyan la automatización de la recolección de datos y el uso de herramientas analíticas.
    * Es destacado que el Distrito unifica en el portal Bogotá su oferta de trámites y servicios, como el realizar pagos en línea (no tributarios) y agendamiento de citas en la RedCADE desde casa; esfuerzo que debe continuar y extenderse a los  más de 1.400 trámites y servicios. Esto representa una mejora significativa en la accesibilidad y eficiencia de los servicios digitales para la ciudadanía.

* capacitación en nuevas tecnologías y 

* Implementación de la Arquitectura Empresarial como estrategia para impulsar la transformación digital y la eficiencia en la gestión pública de la SG
    * Se espera que la Arquitectura Empresarial fortalezca la transparencia, y aumente la eficiencia de la gestión pública y la rendición de cuentas al estandarizar procesos y sistemas de información. La AE busca realmente impactar el objetivo de aumentar la confianza de la ciudadanía en la Gestión Pública.
    * Es requerido que este ejercicio beneficie a la SG con la entrega de activos como hojas de ruta, catálogos y caracterización de los sistemas de información, matrices de interacción, entre otros.

### 06.2n4. Aplicaciones. Situación Actual SG
La Fase Tres (3) de la arquitectura empresarial (AE) de SG se divide en dos partes principales: Arquitectura de Datos y Arquitectura de Aplicaciones.

#### Objetivo de la Arquitectura de Aplicaciones:

El objetivo principal de la Arquitectura de Aplicaciones es desarrollar las arquitecturas de sistemas de información objetivo (tanto de datos como de aplicaciones) que soporten la arquitectura de negocio (desarrollada en la Fase B) y que implementen la visión de arquitectura inicial (establecida en la Fase A).

En términos más específicos, la arquitectura de aplicaciones busca:

* Definir la arquitectura de las aplicaciones (software) necesarias para soportar los procesos de negocio.
* Identificar las funciones de negocio que deben ser soportadas por las aplicaciones.
* Establecer la interacción y el flujo de información entre las diferentes aplicaciones.
* Considerar aspectos como la escalabilidad, el rendimiento, la mantenibilidad y la seguridad de las aplicaciones.
* Listar los capacidades de negocio (servicios de aplicación) relacionadas con las arquitecturas de aplicaciones de SG.


#### Relación con las demás fases del proyecto
La Arquitectura de Aplicaciones no opera de forma aislada; está intrínsecamente conectada con las fases anteriores y posteriores de la arquitectura empresarial de Secretaria de la Alcaldía de Bogotá:

* Relación con la Fase A (Visión de la Arquitectura): La Fase C toma como entrada principal la Visión de la Arquitectura, que establece el alcance, los objetivos de alto nivel, los principios de la arquitectura y la visión del negocio. La Arquitectura de Sistemas de Información debe alinearse y contribuir a la consecución de esta visión.
* Relación con la Fase B (Arquitectura de Negocio): La Arquitectura de Negocio (procesos de negocio, funciones, organización, etc.) es el motor principal para la Fase C. La Arquitectura de Sistemas de Información se construye para soportar y habilitar los requisitos definidos en la Arquitectura de Negocio. Por ejemplo, los procesos de negocio definidos en la Fase B informarán las necesidades de datos y las funcionalidades de las aplicaciones en la Fase C.
* Relación con la Fase D (Arquitectura Tecnológica): La Fase C proporciona los requisitos para la Fase D. La Arquitectura de Sistemas de Información (datos y aplicaciones) determina la tecnología subyacente (hardware, software de infraestructura, middleware, redes) que se necesitará para soportar las aplicaciones y gestionar los datos. La Fase D, por lo tanto, desarrollará la Arquitectura Tecnológica basándose en las necesidades identificadas en la Fase C.
* Relación con la Fase E (Oportunidades y Soluciones) y Fase F (Planificación de la Migración): Las arquitecturas de datos y aplicaciones desarrolladas en la Fase C son insumos críticos para identificar oportunidades de implementación (Fase E) y para desarrollar el plan de migración (Fase F) de las arquitecturas actuales a las arquitecturas objetivo.
* Relación con la Gestión de Requisitos (Requirements Management): La Gestión de Requisitos es una capacidad continua que atraviesa todas las fases del ADM. Los requisitos de los sistemas de información, capturados y gestionados, son fundamentales para guiar el desarrollo de las arquitecturas en la Fase C y para asegurar que la arquitectura final cumpla con las necesidades del negocio.

#### Requisitos Necesarios para su Realización (Entradas Clave):
Para llevar a cabo la Fase C de manera efectiva, una empresa debe contar con ciertos requisitos y entradas esenciales, que provienen principalmente de las fases previas del proceso de AE:

* Requisitos de Negocio: Una comprensión clara y detallada de los requisitos de negocio, procesos de negocio, funciones y estructuras organizacionales definidos en la Fase B. Esto incluye, por ejemplo, el Catálogo de Requisitos (como se menciona en el documento "TOGAF Catalogs Matrices and Diagrams.pdf", página 60), que "captura las cosas que la empresa necesita hacer para cumplir sus objetivos".
* Visión de la Arquitectura: La "Visión de la Arquitectura" (Architectural Vision) y los "Principios de la Arquitectura" establecidos en la Fase A, que guiarán las decisiones de diseño en la Fase C.
* Arquitectura de Negocio de Línea Base y Objetivo: Los modelos de Arquitectura de Negocio actual y deseada (definidos en la Fase B), que servirán como punto de partida y destino para la Arquitectura de Sistemas de Información.
* Metamodelo de Contenidos de la Arquitectura: Una comprensión y aplicación del metamodelo de contenidos de TOGAF (referenciado en "TOGAF 9.2 - Content Metamodel.pdf"), que proporciona un marco estructurado para describir los artefactos de la arquitectura.
* Principios de Arquitectura de Sistemas de Información: Principios específicos que guiarán el diseño de los datos y las aplicaciones, asegurando la coherencia y la alineación con los objetivos empresariales.
* Capacidad de Arquitectura Empresarial: La infraestructura y los recursos necesarios para realizar actividades de arquitectura, incluyendo herramientas de modelado (como ArchiMate, Draw.io, compatible con TOGAF) y personal con las habilidades adecuadas.
* Planes de Iteración y Nivel de Detalle: El alcance y el nivel de detalle requerido para la arquitectura de sistemas de información, que a menudo se define en la Fase de Visión y se refina a medida que avanza el proceso de AE. Esto puede incluir un enfoque iterativo para el desarrollo de la arquitectura, según lo discutido en "ADM Guidelines & Techniques.pdf" (Capítulo 19: Applying Iteration to the ADM).

La arquitectura de aplicaciones es un pilar fundamental en la transformación empresarial, traduciendo las necesidades de negocio en soluciones tangibles de datos y aplicaciones, y preparando el terreno para la selección de la tecnología subyacente.






---
lang: en
titlepage: true
titlepage-rule-color: 360049
todo: aun no está lista
...




## Caracterización de Sistemas Información SG

> Arquitectura Empresarial SG.  Ingenium. 2025  Dominio de Sistemas y Aplicaciones de Software. Sistemas de información del análisis de entorno.  

<br>

### Producto Entregable Caracterización de los sistemas de información
Arquitectura de aplicaciones - MAE.LI.ASI.03 Caracterización de los sistemas de información SG.

Inventario de las sistemas de información (o aplicaciones de software) de Secretaria de la Alcaldía de Bogotá y su ficha de características, pertenecientes al alcance del ejercicio actual de arquitectura empresarial objeto del contrato.

Es un inventario detallado y documentado que contiene las fichas técnicas de los sistemas de información de una institución.


#### Justificación
El catálogo y caracterización de las aplicaciones de Secretaria de la Alcaldía de Bogotá es un artefacto clave para documentar, comprender, y comunicar el panorama actual y futuro de las aplicaciones de SG. el panorama actual y futuro de las aplicaciones de Secretaria de la Alcaldía de Bogotá. A la vez, es base para la toma de decisiones de la gestión y gobierno de las capacidades de TI, y del portafolio y ciclo de vida de las aplicaciones de Secretaria de la Alcaldía de Bogotá. Sirve además para la actualización continua de las características y atributos relevantes de los sistemas de información.

#### Objetivos
1. Documentar y comunicar el panorama actual y futuro de las aplicaciones de SG.
1. Proveer base para la toma de decisiones de la gestión del portafolio y del ciclo de vida de las aplicaciones de SG.
1. Facilitar la actualización de su información. Para el efecto, debe usar medios y formatos accesibles y editables por SG.

#### Contenido
1. Catálogo de sistemas de información seleccionadas. El catálogo relaciona datos individuales e importantes de los sistemas. Incluye la descripción, e identificación de cada aplicación, relación con dominio de negocio, información para la gestión y mantenimiento del sistema.
    * ID de Aplicación
    * Nombre de la Aplicación
    * Descripción
    * Tipo de Aplicación
    * Dominio de Negocio
    * Proceso(s) de Negocio Clave(s)
    * Tecnología Clave
    * Proveedor/Desarrollador
    * Versión Actual
    * Estado

1. Caracterización de los sistemas de información del catálogo es la ficha técnica que complementa al catálogo. Incluye datos como actores, subsistemas y componentes candidatos, relaciones base de primer grado, atributos, integraciones candidatas y las acciones o intervenciones a realizar. 
    1. Identificación y Descripción General
    1. Contexto de Negocio: propietario, capacidades o procesos, nivel de criticidad para el negocio.
    1. Aspectos Técnicos y Arquitectónicos
    1. Gestión y Mantenimiento: costos recurrentes, como licencias, uso de plataforma, soporte del proveedor; recursos de personal asignado; percepción del valor de negocio aportado.
    1. Estrategia y Relaciones Clave: alineación con la visión de Secretaria de la Alcaldía de Bogotá, proyectos planificados participantes.

![03.1o. Organizacion sistemas informacion. _Fuente: Propuesta servicios de ingeniería y evaluación de arquitectura Arquitectura de Aplicaciones Secretaria de la Alcaldía de Bogotá (2025)_](images/03.1o.Organizacionsistemasinformacion.png){#fig:id-adad9ef6534c4bf486404fd53431de2a width= height=}

### Canales Alcaldía

### SuperCADE Virtual
Red de canales presenciales de atención a ciudadanía.

### Chat-Bot
Canal web de atención a ciudadanía.

### Línea 195
Canal telefónico de atención a ciudadanía.

### Portal Bogotá Capital Digital
Plataforma de Trámites en línea. Portal Integrador de trámites y servicios ofrecidos a la ciudadanía. Componente de aplicación que permite la realización de trámites digitales.

### Sistemas de interacción ciudadana y transparencia

### Bogotá Te Escucha
Sistema de información para la administración, registro, atención, seguimiento y control de las peticiones, quejas, reclamos, solicitudes de información, denuncias y sugerencias que reciban las entidades del distrito capital por los diferentes canales. Fundamental para el proceso de Gobierno abierto y relacionamiento con la ciudadanía. También se menciona como el Sistema Distrital para la Gestión de Peticiones Ciudadanas, a través del cual se evalúa la calidad de las respuestas emitidas a la ciudadanía.

### Ficha

| **Nombre aplicación**                     | Bogotá Te Escucha                                                                                                                                                                                                                                            |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Descripción Funcional**                 | Sistema de información para la administración, registro, atención, seguimiento y control de las peticiones, quejas, reclamos, solicitudes de información, denuncias y sugerencias que reciban las entidades del distrito capital por los diferentes canales. |
| **Tipo de software**                      | Desarrollo Interno                                                                                                                                                                                                                                           |
| **Estado**                                | Productivo                                                                                                                                                                                                                                                   |
| **Esquema de licenciamiento**             | A perpetuidad                                                                                                                                                                                                                                                |
| **Fabricante**                            | Secretaría General de la Alcaldía Mayor de Bogotá D.C.                                                                                                                                                                                                       |
| **Debilidades o hallazgos estructurales** | Ninguna                                                                                                                                                                                                                                                      |

### Datos para Transparencia (SATI)
Sistem de tableros de control con datos relevantes, actualizados y comprensibles, incluyendo alertas tempranas contra la corrupción. Plataforma que facilita el acceso a datos e información gubernamental. Soporta el proceso de Gobierno abierto y relacionamiento con la ciudadanía.

### Ficha

| **Nombre aplicación**                     | Datos para la Transparencia (SATI)                                                                                        |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| **Descripción Funcional**                 | Tableros de control con datos relevantes, actualizados y comprensibles, incluyendo alertas tempranas contra la corrupción |
| **Tipo de software**                      | Desarrollo Interno                                                                                                        |
| **Estado**                                | Productivo                                                                                                                |
| **Esquema de licenciamiento**             | A perpetuidad                                                                                                             |
| **Fabricante**                            | Secretaría General de la Alcaldía Mayor de Bogotá D.C.                                                                    |
| **Debilidades o hallazgos estructurales** | Lanzamiento del nuevo diseño de la plataforma de datos para la transparencia.                                             |

### EMLAZE
Sistema para la planeación de recursos empresariales (ERP) de la Imprenta Distrital y control de ejecución y consumo de insumos en el ejercicio de imprenta.

### MoviApp
Canal móvil de atención a ciudadanía. Sesión levantamiento no. 2.

### Sistemas de gestión administrativa y financiera

### ADMON
Se relaciona con la gestión financiera, gestión de servicios administrativos y tecnológicos, y gestión de recursos físicos.

### Administrativo y Financiero
Sistema de soporta la gestión financiera, gestión de servicios administrativos y tecnológicos, y gestión de recursos físicos. Incluye los siguientes módulos/sistemas: Módulo de Personal y Nómina (PERNO, heredado de SICAPITAL), Administración de costos y facturación de los Cades y Supercades (FACTURACIÓN), Libro Mayor (LIMAY, heredado de SICAPITAL), Sistema de control de gestión de elementos de consumo (SAE, heredado de SICAPITAL), Sistema control de gestión de elementos devolutivos (SAI, heredado de SICAPITAL), Registro y control de la información de presupuesto de la Secretaría General (SIPRES), Sistema para manejo y control del presupuesto de regalías (SIPRES REGALIAS), Registro y control de la información contractual de la Secretaría General (CONTRACTUAL), Sistema para manejo de contratos con presupuesto de regalías (CONTRACTUAL REGALIAS).

### SIGA
Sistema Integrado de Gestión Documental, Archivo y Correspondencia.

### Ficha

| **Nombre aplicación**                     | SIGA                                                                |
| ----------------------------------------- | ------------------------------------------------------------------- |
| **Descripción Funcional**                 | Sistema Integrado de Gestión Documental, Archivo y Correspondencia. |
| **Tipo de software**                      | Desarrollo Interno                                                  |
| **Estado**                                | Productivo                                                          |
| **Esquema de licenciamiento**             | A perpetuidad                                                       |
| **Fabricante**                            | Secretaría General de la Alcaldía Mayor de Bogotá D.C.              |
| **Debilidades o hallazgos estructurales** | Ninguna                                                             |

### Sistema Gestión Documental
Componente de aplicación para la gestión electrónica de documentos.

### DARUMA
Sistema para el registro de documentos de procesos, procedimientos, formatos, entre otros, como insumos de la Gestión de Calidad.

### SAT Web
Sistema de Asignación de Turnos en los puntos de atención a la ciudadanía (Red Cade).

### GLPI
Sistema de soporta a la gestión de servicios administrativos y tecnológicos, donde se registran y gestionan las solicitudes de servicios TIC.

### PANDORA
Implementación de temas precontractual y planeación.

### Comisiones
Sesión levantamiento no. 1.

### Sistemas de fortalecimiento de capacidades y conocimiento

### Bogotá Aprende TIC
Portal de apoya los procesos de Gobierno abierto y relacionamiento con la ciudadanía, y Fortalecimiento de la Gestión Pública.

### GLOBO
Registro de acciones de cooperación internacional. Utilizado en el proceso de Fortalecimiento de la Gestión Pública.

### SUDIVC
Sistema Unificado Distrital de Inspección, Vigilancia y Control – SUDIVC.

### HUMANAPP
Apoya la gestión del talento humano. Aplicativo de generación de desprendibles de pago para funcionarios y certificaciones laborales, de seguridad social y de ingresos y retenciones.

### SIAB (El COFRE)
Sistema de Información del Archivo de Bogotá SIAB. Permite automatizar los procesos archivísticos y técnicos que realiza el Archivo, tales como llevar un registro de los Ingresos Documentales (antes área de acopio), para la descripción y catalogación de la documentación, propios del proceso de Gestión de la Función Archivística y del Patrimonio Documental, para su custodia y conservación permanente. Utilizado en los procesos de Gobierno abierto y relacionamiento con la ciudadanía, y Fortalecimiento de la Gestión Pública.

### KOHA
Sistema Integrado de Gestión de Bibliotecas. Relacionado con la Gestión del conocimiento.

### Data Warehouse
Almacenes de datos de trabajo de SG. Bodega de datos con diversas fuentes de información para el análisis y transformación de datos de interés.

### Gestión Académica
Moodle para capacitación de servidores de la Entidad en diferentes temas. Relacionado con la Gestión del conocimiento.

### SIVIC
Sistema de Información de Víctimas de Bogotá para registrar la gestión de atención integral a las víctimas. Interviene en los procesos de Paz, víctimas y reconciliación, y Fortalecimiento de la Gestión Pública. Interviene en los procesos de Paz, víctimas y reconciliación, y Fortalecimiento de la Gestión Pública.

### AVANTI
Sistema de Información para registrar avance de programación y seguimiento de metas plan de desarrollo de las entidades distritales SDARIV relacionadas con atención integral a las víctimas.

### Sistemas de desarrollo

### Gitlab
Plataforma de desarrollo de software y colaboración.

### Ofimática y colaboración

### Office 365
Herramientas de ofimática y colaboración SG.






---
lang: en
titlepage: true
titlepage-rule-color: 360049
todo: aun no está lista
...



