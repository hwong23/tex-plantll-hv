# Contenido
* [Información del Documento](#información-del-documento)
* [Línea Base del Sistema/Aplicación](#línea-base-del-sistemaaplicación)


<div style="page-break-before: always;"></div>
\newpage

# Información del Documento

## Versión del Documento

> 

<br>

---
title: Certificación Operativa Plataforma de Software trii
subtitle: Línea Base
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
1.2525581 - Compilación para entrega: 1.b606138.667ea6e: revision - Fri, 24 Jan 2025 23:10:10 +0000


Versiones Anteriores

1.2525581 - Compilación para entrega: 1.b606138.667ea6e: revision - Fri, 24 Jan 2025 23:10:10 +0000

1.b606138 - Compilación para entrega: 1.5b6d694.3674428: revision - Fri, 24 Jan 2025 23:07:07 +0000

1.5b6d694 - Compilación para entrega: 1.294ee2b.d30c61d: notasalpie - Fri, 24 Jan 2025 23:02:57 +0000

1.294ee2b - Compilación para entrega: 1.6b2bb58.f6a8199: formato - Fri, 24 Jan 2025 23:01:49 +0000


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

# Línea Base del Sistema/Aplicación

## Componentes del Informe de Rendimiento y Capacidad de la Plataforma trii

> 

<br>



### Información General de la Línea Base
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

### Línea Base Servicio Get User Info de trii
El servicio Get User Info (user info) obtiene datos de trabajo del cliente previo a la orden. Requiere como mínimo actividades de autenticación, y es responsable de alimentar al servicio Órdenes.

#### Valores Numéricos

En condiciones operativas usuales, promedio por transacción, tiempo máximo, mínimo, y percentiles de las métricas. Tomado del mayor entre http_req_duration e iteration_duration.
 
> Tiempo máximo de la transacción (iteración): max=1.638s
> 
> Tiempo promedio: avg=460.499ms
> 
> Tiempo mínimo: min=190.9895ms 
> 
> Percentil 90 duración iteración: p(90)=641.992ms
> 
> Cantidad de transacciones/segundo (capacidad o throughput): 641.992/s
> 
> Estabilidad o Tasa de éxito de transacción (promedio entre dos servicios, login y user_info): 100.00%
> 
> Latencia promedio: avg=227.331ms 
> 
> Latencia máxima: max=1.5535s
> 

### Línea Base Servicio Servicio Login Auth de trii
El servicio Login (auth) es responsable de dar inicio a una sesión de trabajo de un cliente trii. Realiza como mínimo la provisión de datos necesarios a otros servicios respecto de la verificación y creación de una sesión de trabajo válida.

#### Valores Numéricos

En condiciones operativas usuales, promedio por transacción, tiempo máximo, mínimo, y percentiles de las métricas. Tomado del mayor entre http_req_duration e iteration_duration.
 
> Tiempo máximo de la transacción (iteración): max=2.3855s
>
> Tiempo promedio: avg=115.297ms
>
> Tiempo mínimo: min=68.7115ms
>
> Percentil 90 duración iteración: p(90)=170.196ms
>
> Cantidad de transacciones/segundo (capacidad o throughput): 122.975268/s
>
> Estabilidad o Tasa de éxito de transacción: 100.00%
>
> Latencia promedio: avg=115.037ms
>
> Latencia máxima: max=205.088ms
>

### Línea Base Servicio Órdenes de trii
El servicio Órdenes es el más relevante para el negocio de trii. Realiza como mínimo actividades de creación de una orden de negocio, que es la entidad de información superlativa de la plataforma.

#### Valores Numéricos

En condiciones operativas usuales, promedio por transacción, tiempo máximo, mínimo, y percentiles de las métricas. Tomado del mayor entre http_req_duration e iteration_duration.
 
> Tiempo máximo de la transacción (iteración): max=2.9185s
>
> Tiempo promedio: avg=2.1515s
>
> Tiempo mínimo: min=272.844ms
>
> Percentil 90 duración iteración: p(90)=1.8395s
>
> Cantidad de transacciones/segundo (capacidad o throughput): 10.637276/s
>
> Estabilidad o Tasa de éxito de transacción (iteración): 100.00%
> 
> Latencia promedio: avg=577.408ms
>
> Latencia máxima: max=2.47s
>






---
lang: en
titlepage: true
titlepage-rule-color: 360049
...



