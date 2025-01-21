# Contenido
* [Información del Documento](#información-del-documento)
* [Resumen Ejecutivo](#resumen-ejecutivo)
* [Informe de Rendimiento y Capacidad](#informe-de-rendimiento-y-capacidad)
* [Resultados y Conclusiones del Informe de Rendimiento](#resultados-y-conclusiones-del-informe-de-rendimiento)


<div style="page-break-before: always;"></div>
\newpage

# Información del Documento

## Versión del Documento

> 

<br>

---
title: Certificación Operativa Plataforma de Software Trii.co
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
...

## Control de Cambios
Historia de cambios del informe.


Versión actual: 
1.42a666d - Compilación para entrega - Tue, 21 Jan 2025 23:00:48 +0000


Versiones Anteriores

1.8087c3f - Compilación para entrega - Tue, 21 Jan 2025 19:54:22 +0000

1.938399b - Compilación para entrega - Tue, 21 Jan 2025 18:24:45 +0000

1.8a9bfb2 - Compilación para entrega - Mon, 20 Jan 2025 22:26:14 +0000

1.d3a0900 - Compilación para entrega - Mon, 20 Jan 2025 22:07:25 +0000


### Realizado Por
H. Wong, ing.

### Revisado Por
(revisor), Trii.co





---
lang: en
titlepage: true
titlepage-rule-color: 360049
...


<div style="page-break-before: always;"></div>
\newpage

# Resumen Ejecutivo

##  

> 

<br>



### Resumen del Informe de Rendimiento Trii.co
El Informe Técnico SoftProductiva.com certifica el rendimiento operativo de la plataforma de software Trii.co. Se evaluaron los servicios relevantes de la plataforma, inicio de sesión "Login,", requisición de información de trabajo, "Get User Info," y el de registro de órden "Órdenes", mediante técnicas de pruebas de rendimiento con la herramienta K6 de Grafala Labs. Los resultados muestran una alta estabilidad y capacidad de procesamiento que supera los criterios de aceptación preestablecidos, con un margen de crecimiento significativo antes de alcanzar limitaciones operativas y sin requerir inversión en el plan de capacidad. El informe concluye que Trii.co tiene una holgura considerable en su capacidad actual.






---
lang: en
titlepage: true
titlepage-rule-color: 360049
...


<div style="page-break-before: always;"></div>
\newpage

# Informe de Rendimiento y Capacidad

## Componentes del Informe de Rendimiento y Capacidad de la Plataforma Trii.co

> 

<br>



### Información General del Reporte de Rendimiento de Aplicación Trii.co
* Nombre de la Aplicación/Sistema Probado: Servicios de Ordenes, Auth, y User Info de la Aplicación Trii.co
* Versión de la Aplicación/Sistema: Versión 2025
* Entorno de Pruebas: infraestructura en la nube, Google Cloud, 2nd generation machine series, General-purpose workloads E2 serie, CPU Intel. Tipo de equipo: highmem, 7-14 GB.
* Fecha/Periodo de Pruebas: 15 de enero del 2025.
* Objetivos de las Pruebas: 
    * Encontrar la capacidad de los servicios Servicios Ordenes, Auth, y User Info de la Aplicación por separado en número máximo de operaciones o transacciones de los servicios por unidad de tiempo.
    * Encontrar el nivel de estabilidad de los servicios Servicios Ordenes, Auth, y User Info (tensión) de la Aplicación.
    * Dar pautas alrededor del estrés o tensión de los servicios Servicios Ordenes, Auth, y User Info de la Aplicación por separado para determinar la holgura respecto a la demanda esperada.
* Métricas Clave: 
    * Capacidad (throughput) de los servicios Servicios Ordenes, Auth, y User Info 
    * Estrés (tensión) de los servicios Servicios Ordenes, Auth, y User Info
    * Estabilidad (Uso de CPU) de los servicios Servicios Ordenes, Auth, y User Info
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

1. Todos los servicios probados (auth, user_info, fee y  ordenes) pasaron los criterios de aceptación de estabilidad, tiempo de respuesta, y capacidad de cómputo (throughput). Pag. 14, Informe Técnico
1. El análisis de latencia del servicio de Ordenes indica una alta posibilidad de que exista un cuello botella, pero no afecta la estabilidad del servicio: cero (0) fallas en registro de actividad del sistema. Pág. 11, Informe Técnico; razón por la cual
1. El servicio de órdenes requirió del ajuste en el  criterio de aceptación _tiempo de respuesta_: quedó en 4.5s. Pág. 10, Informe Técnico
1. La conclusión general del rendimiento de Trii.co actual,  'como está’, sin inversión de capacidad, presenta holgura del 4x. Es decir, sin cambios en el plan de capacidad Trii puede crecer un 400% del rendimiento actual. Pág. 15, Informe Técnico

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

El resultado de las pruebas de rendimiento ejecutadas para los servicios de la Aplicación Trii.co, Login, Get User Info, Fee, Ordenes, comprueba que la capacidad operativa, en términos de rendimientos, estabilidad y respuesta, está por encima de lo generalmente aceptado por los estándares en tiempo de respuesta de aplicaciones de software empresarial, en este caso particular, de tipo web para la industria de tecnología en inversión financiera, fintech.

> 10 seconds is about the limit for keeping the user's attention focused on the dialogue. For longer delays, users will want to perform other tasks while waiting for the computer to finish, so they should be given feedback indicating when the computer expects to be done. Feedback during the delay is especially important if the response time is likely to be highly variable, since users will then not know what to expect. -- Nielsen, J. (1993). Usability Engineering. Response Times: The 3 Important Limits (web).

### Conclusión General
Teniendo de base los resultados de la actual prueba de rendimiento consignados en el Informe Técnico de Certificación Operativa Plataforma de Software Trii.co, es factible indicar que el umbral de crecimiento de la Plataforma Trii, sin que alcance a comprometer la estabilidad de la Aplicación, en términos de nivel de ocupación de recursos y tasa de éxito, podría llegar a ser de entre 4x y 5x de la carga de procesamiento real actual. Es decir, con la capacidad operativa actual, sin requerir inversión en su plan de capacidad, podría aumentar sus niveles de procesamiento en un 400% (esto es, de ~5000 transacciones diarias a 22774), como mínimo, sin comprometer la estabilidad del sistema completo.






---
lang: en
titlepage: true
titlepage-rule-color: 360049
...



