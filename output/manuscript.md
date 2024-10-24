# 05.REQR.1n. Requerimientos

* [Introducción](#Introducción)
* [Problema 2 (Grouping)](#problema-2-grouping)
  * [Aceptación (Value)](#aceptación-value)
  * [Complejidad (Constraint)](#complejidad-constraint)
  * [No Funcional (Goal)](#no-funcional-goal)
* [Solución 2 (Grouping)](#solución-2-grouping)
  * [Technology Service (Technology Service)](#technology-service-technology-service)
* [Solución 1 (Grouping)](#solución-1-grouping)
  * [SINT1. Integración. Ingreso a Conti (Application Service)](#sint1.-integración.-ingreso-a-conti-application-service)
  * [SINT2. Integración. Consulta ítem de Conti (Application Service)](#sint2.-integración.-consulta-ítem-de-conti-application-service)
  * [SINT3. Integración. Radicar ítem (Application Service)](#sint3.-integración.-radicar-ítem-application-service)
  * [SINT4. Integración. Generación de documentos (Application Service)](#sint4.-integración.-generación-de-documentos-application-service)
* [Problema 1 (Grouping)](#problema-1-grouping)
  * [Levantamiento (Constraint)](#levantamiento-constraint)
  * [Contractual (Goal)](#contractual-goal)
  * [Entrega (Value)](#entrega-value)
* [REQR3. Integración con Sistema Conti (Requirement)](#reqr3.-integración-con-sistema-conti-requirement)
* [REQR2. Condiciones tecnológicas JEP (Requirement)](#reqr2.-condiciones-tecnológicas-jep-requirement)

## Introducción

![05.REQR.1n. Requerimientos][03.contd.vista]

Para la implementación de los ítems relacionados en el Anexo Nro. 1.1 – Anexo técnico evolución plataforma de interoperabilidad – Ficha Técnica la hoja “Categorías de Cotización” contiene las necesidades a contratar en el ámbito de la evolución tecnológica del modelo de interoperabilidad y los desarrollos de interoperabilidad tanto con sistemas internos, como con entidades externas. En la hoja “Estándares Desarrollo y Producto” del archivo mencionado se indican los estándares recomendados por el fabricante, para tener en cuenta en la entrega de los servicios que se cotizan.

El Anexo Nro. 1.2 – Acuerdos de Niveles de Servicio, explica el procedimiento con el que se dará atención a consultas o solución de incidencias, tanto en los sistemas operativos, como en los servicios de interoperabilidad existentes en la actualidad y aquellos que se contratarán en este proceso, en el sistema Bus de Interoperabilidad implementado en la Jurisdicción Especial para la Paz.

-- Documento: JUSTIFICATIVO DE LA CONTRATACIÓN INVITACIÓN PÚBLICA



## Problema 2

### Aceptación

### Complejidad

### No Funcional

1. La solución debe implementar el habilitar la traducción de múltiples protocolos del consumidor a un protocolo específico del microservicio ofrecido a través de un API Gateway
1. La solución debe implementar la publicación de microservicios que generen múltiples API para plataformas y clientes específicos con las funciones específicas y protocolos requeridos por cada plataforma
1. La solución debe implementar un mecanismo de hacer la trazabilidad, uso y registro de actividades de los microservicios. 
1. Debe permitir la integración con un servicio de directorio corporativo que puede servir como administrador de identidad corporativa. Por lo tanto, la solución debe poder actuar como Administrador de acceso (Identity Access Manager - IaM) mientras que el Servicio de directorio sirve como Administrador e Identidades (Identity Manager - IdM).
1. Debe admitir la transformación y el enrutamiento hacia / desde SOAP / HTTP a los servicios REST.
1. Debe poder convertir mensajes a / desde: XML, objetos Java, JSON, REST, CSV.
1. Debe proporcionar componentes para la transformación utilizando modelos predefinidos (plantillas).
1. La infraestructura debe distribuirse de modo que las integraciones, construidas a partir de EIP (patrones de integración empresarial) y conectores predefinidos, se implementen en la infraestructura nativa del contenedor para adaptarse y escalar rápidamente
1. La solución debería exponer métricas con integración nativa al software Prometheus
1. Debe ser posible gestionar la creación de  un token de acceso, eligiendo su alcance, permiso y otras cualidades a nivel de autenticación
1. La solución de administración de API debe admitir la instalación de API Gateways  en contenedores tanto dentro de una plataforma Kubernetes o utilizando en motor de contenedor aprobado por la especificación OCI
1. Debe permitir ver las llamadas a la API y separar los códigos de retorno HTTP;
1. La herramienta API Gateway debe controlar la ejecución de llamadas, recopilar métricas, aplicar políticas y límites de ejecución;
1. Para permitir interoperabilidad debe habilitar transporte de mensajes y conectarse entre ellos. Los mecanismos de transporte deben incluir Java Messaging Service (JMS), Active MQ y asi mismo protocolos de comunicación tal como HTTP/HTTPS,SMTP, entre otros
1. Se debe contar con la característica de Single Sign On (SSO)
1. Los servicios se deberán implementar bajo la plataforma Openshift de RedHat
1. Se debe contemplar dentro de estos desarrollos la Transferencia de archivos utilizando el esquema de almacenamiento de Openshift ODF asociado a un esquema NFS, Administración de Personas, Consulta y transferencia de expedientes o partes de expedientes y anexos, etc 

## Solución 2

### Technology Service

## Solución 1

### SINT1. Integración. Ingreso a Conti

Interoperabilidad IOP1. Transporte / Entrega Consulta Negocio 	
Modelo de datos (XML, RBDMS, …)
Esquema de datos (XSD, DTD, JSON-E…)
Contratos de interoperabilidad (WSDL, API…)
Mensajes petición IN (API, XML…)
Mensajes respuesta OUT (API, XML…)
Mensajes excepción (API, XML…)
Transporte (REST, SOAP)
Función lógica (JEE, …)
Registro y envío de actividad
	


### SINT2. Integración. Consulta ítem de Conti

Interoperabilidad IOP1. Transporte / Entrega Consulta Negocio 	
Modelo de datos (XML, RBDMS, …)
Esquema de datos (XSD, DTD, JSON-E…)
Contratos de interoperabilidad (WSDL, API…)
Mensajes petición IN (API, XML…)
Mensajes respuesta OUT (API, XML…)
Mensajes excepción (API, XML…)
Transporte (REST, SOAP)
Función lógica (JEE, …)
Registro y envío de actividad
	


### SINT3. Integración. Radicar ítem

Interoperabilidad IOP1. Transporte / Entrega Consulta Negocio 	
Modelo de datos (XML, RBDMS, …)
Esquema de datos (XSD, DTD, JSON-E…)
Contratos de interoperabilidad (WSDL, API…)
Mensajes petición IN (API, XML…)
Mensajes respuesta OUT (API, XML…)
Mensajes excepción (API, XML…)
Transporte (REST, SOAP)
Función lógica (JEE, …)
Registro y envío de actividad
	


### SINT4. Integración. Generación de documentos

Interoperabilidad IOP1. Transporte / Entrega Consulta Negocio 	
Modelo de datos (XML, RBDMS, …)
Esquema de datos (XSD, DTD, JSON-E…)
Contratos de interoperabilidad (WSDL, API…)
Mensajes petición IN (API, XML…)
Mensajes respuesta OUT (API, XML…)
Mensajes excepción (API, XML…)
Transporte (REST, SOAP)
Función lógica (JEE, …)
Registro y envío de actividad
	


## Problema 1

### Levantamiento

### Contractual

1. Implementación de al menos 20 servicios de Interoperabilidad bajo un esquema de Bolsa de Horas con una cantidad de 1.960. Las horas remanentes serán utilizadas en el desarrollo de servicios adicionales
1. Los al menos 20 servicios desarrollados serán entregados documentados y contarán con una garantía de seis meses.
1. Para la implementación de los servicios de interoperabilidad con entidades externas se utilizará el modelo XROAD definido por el Ministerio de Tecnologías de la Información y Comunicaciones para intercambio de información entre entidades del estado.


### Entrega

## REQR3. Integración con Sistema Conti

...


## REQR2. Condiciones tecnológicas JEP

...


[03.contd.vista]: 03.contd.vista.png
[^1]: Generated: Tue Oct 22 2024 16:31:14 GMT-0500 (COT)
