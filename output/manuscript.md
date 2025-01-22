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
title: Certificación Operativa Plataforma de Software Trii.co
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
1.6c117db - Compilación para entrega - Wed, 22 Jan 2025 22:35:15 +0000


Versiones Anteriores

1.0e5b81c - docx - Wed, 22 Jan 2025 15:26:38 -0500

1.d8b1b11 - docx - Wed, 22 Jan 2025 14:48:05 -0500

1.67b54b6 - Compilación para entrega - Tue, 21 Jan 2025 23:42:45 +0000

1.c672547 - Compilación para entrega - Tue, 21 Jan 2025 23:32:27 +0000


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

# Línea Base del Sistema/Aplicación

## Componentes del Informe de Rendimiento y Capacidad de la Plataforma Trii.co

> 

<br>



### Información General de la Línea Base
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

### Línea Base Servicio Get User Info de Trii.co
El servicio Get User Info (user info) obtiene datos de trabajo del cliente previo a la orden. Requiere como mínimo actividades de autenticación, y es responsable de alimentar al servicio Ordenes.

#### Valores Numéricos

Promedio por transacción, tiempo máximo, mínimo, y percentiles de las métricas. Tomado del mayor entre http_req_duration e iteration_duration.
 
> Tiempo máximo de la transacción (iteración): max=2.52s
> 
> Tiempo promedio: avg=708.46ms
> 
> Tiempo mínimo: min=293.83ms 
> 
> Percentiles 90 y 95 duración iteración: p(90)=987.68ms; p(95)=1.15s
> 
> Cantidad de transacciones/segundo (capacidad o throughput): 57632 total; 95.929047/s
> 
> Estabilidad o Tasa de éxito de transacción (promedio entre dos servicios, login y user_info): 100.00%; 28816 de 28816 procesados
> 
> Latencia promedio: avg=349.74ms 
> 
> Latencia máxima: max=2.39s
> 

### Línea Base Servicio Servicio Login Auth de Trii.co
El servicio Login (auth) es responsable de dar inicio a una sesión de trabajo de un cliente Trii. Realiza como mínimo la provisión de datos necesarios a otros servicios respecto de la verificación y creación de una sesión de trabajo válida.

#### Valores Numéricos

Promedio por transacción, tiempo máximo, mínimo, y percentiles de las métricas. Tomado del mayor entre http_req_duration e iteration_duration.
 
> Tiempo máximo de la transacción (iteración): max=3.67s
>
> Tiempo promedio: avg=177.38ms
>
> Tiempo mínimo: min=105.71ms
>
> Percentiles 90 y 95 duración iteración: p(90)=261.84ms; p(95)=315.52ms
>
> Cantidad de transacciones/segundo (capacidad o throughput): 113677 total; 189.19272/s
>
> Estabilidad o Tasa de éxito de transacción: 100.00%; 113677 de 113677 procesados
>
> Latencia promedio: avg=176.98ms
>
> Latencia máxima: max=3.67s; p(95)=315.52ms
>

### Línea Base Servicio Ordenes de Trii.co
El servicio Ordenes es el más relevante para el negocio de Trii. Realiza como mínimo actividades de creación de una orden de negocio, que es la entidad de información superlativa de la plataforma.

#### Valores Numéricos

Promedio por transacción, tiempo máximo, mínimo, y percentiles de las métricas. Tomado del mayor entre http_req_duration e iteration_duration.
 
> Tiempo máximo de la transacción (iteración): max=16.74s; avg p(95/90)=4.49s
>
> Tiempo promedio: avg=1.77s; p(95)=3.31s
>
> Tiempo mínimo: min=419.76ms
>
> Percentiles 90 y 95 duración iteración: p(90)=2.83s; p(95)=3.31s
>
> Cantidad de transacciones/segundo (capacidad o throughput): 22774 total; 16.36504/s
>
> Estabilidad o Tasa de éxito de transacción (iteración): 100.00%; 11387 de 11387. De las cuales 86.00% Ordenes de Negocio (9881 de 11387) exitosas
> 
> Latencia promedio: avg=888.32ms; p(95)=2.7s
>
> Latencia máxima: max=16.6s; avg p(95/90)=3.8s
>






---
lang: en
titlepage: true
titlepage-rule-color: 360049
...



