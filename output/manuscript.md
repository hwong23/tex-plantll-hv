# Contenido
* [Información del Documento](#información-del-documento)
* [Informe Ejecutivo](#informe-ejecutivo)
* [Informe de Rendimiento y Capacidad](#informe-de-rendimiento-y-capacidad)
* [Resultados y Conclusiones del Informe de Rendimiento](#resultados-y-conclusiones-del-informe-de-rendimiento)


<div style="page-break-before: always;"></div>
\newpage

# Información del Documento

## Versión del Documento

> 

<br>

---
title: Certificación Operativa Plataforma de Software trii
subtitle: Informe Ejecutivo
subject: Implementación Proyecto
author: SoftProductiva.com
date: 2025-01-20
keywords: [Rendimiento, Métodos pruebas, Pruebas software, QA]
geometry:
  - top=1.3in
  - bottom=1in
  - left=0.7in
  - right=0.7in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
titlepage-background: include/background.pdf
titlepage-logo: include/logo.png
logo-width: 60mm
listings-no-page-break: true
...

## Control de Cambios
Historia de cambios del informe.


Versión actual: 
1.e929055 - Compilación para entrega: version (5017140) - Sat, 25 Jan 2025 06:47:42 +0000


Versiones Anteriores

1.e929055 - Compilación para entrega: version (5017140) - Sat, 25 Jan 2025 06:47:42 +0000

1.4e6a395 - versionmsj - Sat, 25 Jan 2025 01:46:40 -0500

1.84ced00 - version - Sat, 25 Jan 2025 01:41:52 -0500

1.6a52d9c - Compilación para entrega: version (5017140).c764ca0 - Sat, 25 Jan 2025 06:40:17 +0000


### Realizado Por
H. Wong, ing.

### Revisado Por
(revisor), trii





---
lang: en
titlepage: true
titlepage-rule-color: 360049
...


<div style="page-break-before: always;"></div>
\newpage

# Informe Ejecutivo

##  

> 

<br>



### Resumen del Informe de Rendimiento trii
El Informe Técnico SoftProductiva.com certifica el rendimiento operativo de la plataforma de software trii. Se evaluaron los servicios relevantes de la plataforma, inicio de sesión "Login,", requisición de información de trabajo, "Get User Info," y el de registro de órden "Órdenes", mediante técnicas de pruebas de rendimiento con la herramienta K6 de Grafala Labs. Los resultados muestran una alta estabilidad y capacidad de procesamiento que supera los criterios de aceptación preestablecidos, con un margen de crecimiento significativo antes de alcanzar limitaciones operativas y sin requerir inversión en el plan de capacidad. El informe concluye que trii tiene una holgura considerable en su capacidad actual.






---
lang: en
titlepage: true
titlepage-rule-color: 360049
...


<div style="page-break-before: always;"></div>
\newpage

# Informe de Rendimiento y Capacidad

## Componentes del Informe de Rendimiento y Capacidad de la Plataforma trii

> 

<br>



### Información General del Reporte de Rendimiento de Aplicación trii
* Nombre de la Aplicación/Sistema Probado: Servicios de Órdenes, Auth, y User Info de la Aplicación trii
* Versión de la Aplicación/Sistema: Versión 2025
* Entorno de Pruebas: infraestructura en la nube, Google Cloud, 2nd generation machine series, General-purpose workloads E2 serie, CPU Intel. Tipo de equipo: highmem, 7-14 GB.
* Fecha/Periodo de Pruebas: 15 de enero del 2025.
* Objetivos de las Pruebas: 
    * Encontrar la capacidad de los servicios Servicios Órdenes, Auth, y User Info de la Aplicación por separado en número máximo de operaciones o transacciones de los servicios por unidad de tiempo.
    * Encontrar el nivel de estabilidad de los servicios Servicios Órdenes, Auth, y User Info (tensión) de la Aplicación.
    * Dar pautas alrededor del estrés o tensión de los servicios Servicios Órdenes, Auth, y User Info de la Aplicación por separado para determinar la holgura respecto a la demanda esperada.
* Métricas Clave: 
    * Capacidad (throughput) de los servicios Servicios Órdenes, Auth, y User Info 
    * Estrés (tensión) de los servicios Servicios Órdenes, Auth, y User Info
    * Estabilidad (Uso de CPU) de los servicios Servicios Órdenes, Auth, y User Info
Herramienta de Pruebas: K6, de Grafana Labs.






---
lang: en
titlepage: true
titlepage-rule-color: 360049
...


<div style="page-break-before: always;"></div>
\newpage

# Resultados y Conclusiones del Informe de Rendimiento

## Análisis de Resultados del Rendimiento y Capacidad

> 

<br>



### Resumen y Puntos Sobresalientes de los Resultados

1. Todos los servicios probados (auth, user_info, fee y órdenes) pasaron los criterios de aceptación de estabilidad, tiempo de respuesta, y capacidad de cómputo (throughput). Pag. 14, _Informe Técnico_
1. El análisis de latencia del servicio de Órdenes indica una alta posibilidad de que exista un cuello botella, pero no afecta la estabilidad del servicio: cero (0) fallas en registro de actividad del sistema. Pág. 11, _Informe Técnico_
1. Los tiempos de respuesta máximo obtenidos durante las pruebas de rendimiento se enmarcan dentro de lo generalmente aceptado para aplicaciones empresariales y del sector de la industria fintech (no superan los 5 segundos en máxima carga). Esto incluye a transacciones complejas de trii como las del servicio de Órdenes. Pag. 14, _Informe Técnico_
1. La conclusión general del rendimiento de trii actual,  'como está’, sin inversión de capacidad, presenta holgura del 4x. Es decir, sin cambios en el plan de capacidad trii puede crecer un 400% del rendimiento actual. Pág. 15, _Informe Técnico_

### Compilación de Resultado de las Pruebas de Rendimiento
| Prueba             | Criterio de Aceptación                                                       | Resultado                                                                                  |
|--------------------|------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Login              | Percentil de peticiones exitosas 99.9                                        | Estabilidad  o Tasa de éxito de transacción: 100.00%; 113677 de 113677 procesados           |
| Login              | Tiempo de respuesta max 4 seg.                                               | Tiempo máximo de la transacción (iteración): max=3.67s                                     |
| Login              | Tasa procesamiento (throughput), 2500 transacciones por hora y 40 por minuto | Cantidad de transacciones/segundo (capacidad o throughput): 113677 total; 189.19272/s      |
| Get user info      | Percentil de peticiones exitosas 99.9                                        | Estabilidad o Tasa de éxito de transacción: 100.00%; 28816 de 28816 procesados             |
| Get user info      | Tiempo de respuesta max 4 seg.                                               | Tiempo máximo de la transacción (iteración): max=2.52s                                     |
| Get user info      | Tasa procesamiento (throughput): 2500 transacciones por hora y 40 por minuto | Cantidad de transacciones/segundo (capacidad o throughput): 57632 total; 95.929047/s       |
| Fee                | Percentil de peticiones exitosas 99.9                                        | Estabilidad o Tasa de éxito de transacción: 100.00%; 28816 de 28816 procesados             |
| Fee                | Tiempo de respuesta max 4 seg.                                               | Tiempo máximo de la transacción (iteración): max=2.52s                                     |
| Fee                | Tasa procesamiento (throughput): 2500 transacciones por hora y 40 por minuto | Cantidad de transacciones/segundo (capacidad o throughput): 57632 total; 95.929047/s       |
| Ingreso de órdenes | Percentil de peticiones exitosas 99.9                                        | Estabilidad o Tasa de éxito de transacción (iteración): 100.00%; 11387 de 11387 procesados |
| Ingreso de órdenes | Tiempo de respuesta max 4.5 seg.                                             | Tiempo máximo de la transacción (iteración): max=16.74s; avg p(95/90)=4.49s                |
| Ingreso de órdenes | Tasa procesamiento (throughput): 2500 transacciones por hora y 40 por minuto | Cantidad de transacciones/segundo (capacidad o throughput): 22774 total; 16.36504/s        |

El resultado de las pruebas de rendimiento ejecutadas para los servicios de la Aplicación trii, Login, Get User Info, Fee, Órdenes, comprueba que la capacidad operativa, en términos de rendimientos, estabilidad y respuesta, está por encima de lo generalmente aceptado por los estándares en tiempo de respuesta de aplicaciones de software empresarial, en este caso particular, de tipo web para la industria de tecnología en inversión financiera, fintech.

> 10 seconds is about the limit for keeping the user's attention focused on the dialogue. For longer delays, users will want to perform other tasks while waiting for the computer to finish, so they should be given feedback indicating when the computer expects to be done. Feedback during the delay is especially important if the response time is likely to be highly variable, since users will then not know what to expect. -- Nielsen, J. (1993). Usability Engineering. Response Times: The 3 Important Limits (web).

### Conclusión General
Contexto: de acuerdo con la información proporcionada por el área de negocio, para el mes de diciembre de 2024, fueron enrutadas desde trii app a los sistemas de la comisionista aliada 7676 órdenes, lo que representa un promedio de 255.86 órdenes diarias. 

Contexto: con base en el resultado de las pruebas aquí consignadas en este informe técnico es factible indicar que el umbral de crecimiento de trii app, sin que alcance a comprometer la estabilidad de la Aplicación, en términos de nivel de ocupación de recursos y tasa de éxito, puede ser de entre 4x y 5x de la carga de procesamiento real actual[^1]. Esto es correspondiente a un incremento de ~5000 transacciones diarias a 22774[^2], como mínimo. Lo anterior resulta en que el crecimiento operativo de trii, en términos de los servicios probados, **es de entre el 400% y 500%**.

Por lo anterior, y teniendo en cuenta el contexto informado por trii (de 256 órdenes diarias), y que el crecimiento operativo esperado para Chile en los siguientes tres (3) años de operación es del 300%, concluimos en este informe técnico que con la capacidad operativa actual, y sin requerir aumentos de inversión de su plan de capacidad, la plataforma de la Aplicación trii cuenta con la suficiencia de soportar el cumplimiento de estas proyecciones, sin comprometer la estabilidad del sistema completo.

[^1]: Al momento de la realización de este informe es de aproximadamente 5000 operaciones diarias Colombia y 256 órdenes diarias Chile.

[^2]: Cantidad de transacciones/segundo (capacidad o throughput): 22774 total; 16.36504/s.







---
lang: en
titlepage: true
titlepage-rule-color: 360049
...



