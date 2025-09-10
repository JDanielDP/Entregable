
Informe de Avance – Unidad 1
Link Github : https://github.com/JDanielDP/Entregable/tree/main/Mineria 
Proyecto: DataVision S.A.C. – Gestión Inteligente de Ventas 
Metodología: CRISP-DM 
Integrantes: [Axl Camaco Fernandez , Juan del Carpio ]
Fecha del informe: [09/09/2025]
Fase 1 – Business Understanding
🎯1. Objective
Objetivo: Analizar los datos de ventas de la empresa para identificar clientes frecuentes, productos más vendidos y evolución mensual de ventas, con el fin de apoyar la toma de decisiones estratégicas.
Success criteria (SC)
docker-compose.yml
version: '3.9'
services:
  db:
    image: postgres:15
    container_name: empresa_db
    restart: always
    environment:
      POSTGRES_USER: admin
      POSTGRES_PASSWORD: admin123
      POSTGRES_DB: empresa
    ports:
      - "5432:5432"
    volumes:
      - ./init.sql:/docker-entrypoint-initdb.d/init.sql

init.sql (fragmento)
CREATE TABLE IF NOT EXISTS clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    fecha_registro DATE
);

CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS ventas (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(id),
    producto_id INT REFERENCES productos(id),
    cantidad INT,
    fecha DATE
);

Fase 2 – Data Understanding
📥 2. Data collection
El dataset proviene de un sistema ficticio de gestión de ventas de la empresa. Se construyó en una base de datos PostgreSQL mediante un script init.sql y luego se exportó a un archivo CSV (ventas_export.csv) para el análisis.
●	Datos del cliente: cliente_id (identificador único del cliente).
●	Datos del producto: producto_id (identificador único del producto).
●	Datos de la transacción: fecha (día de la compra).
●	Resultados de la venta: cantidad (unidades vendidas en cada transacción).
Ventas_export.csv:
 
📊 3. Descriptive analysis

3.1. Análisis descriptivo básico
-  Resumen estadístico de las variables numéricas (ej. cantidad).
- Tipos de variables: categóricas (cliente_id, producto_id, fecha) y numéricas (cantidad).
- Conteo de valores únicos en categóricas (ej. número de clientes diferentes, número de productos distintos).
- Distribución de la variable cantidad (media, mediana, desviación estándar).

3.2. Análisis descriptivo gráfico
- Histogramas y boxplots para cantidad.
- Gráficos de barras para producto_id (productos más vendidos).
- Gráficos de barras para cliente_id (clientes con más transacciones).
- Gráfico de línea para la variable temporal fecha (ventas mensuales).

3.3. Análisis exploratorio con estadísticas
- Correlaciones entre variables numéricas (aunque en este caso solo contamos con cantidad).
- Cruces entre variables categóricas y cantidad (ej. promedio de ventas por cliente o por producto).
- Análisis de tendencias según la variable fecha (ventas a lo largo del tiempo).

3.4. Diagnóstico de calidad inicial
- Valores faltantes: identificar y cuantificar (df.isnull().sum()).
- Posibles inconsistencias:
•	Fechas fuera de rango.
•	Ventas con cantidad negativa o igual a cero.
-	Distribución de la variable cantidad: revisar si está balanceada o concentrada en pocos clientes/productos.

3.5. Perfil comparativo (clientes/productos)
- Comparar el volumen de ventas entre los clientes más frecuentes y los menos frecuentes.
- Comparar ventas entre productos más vendidos y productos con baja rotación.
- Detectar si existen clientes concentrando gran parte de las compras (lo que puede significar riesgo de dependencia).

3.6 Conclusión preliminar 
El dataset es adecuado para análisis de ventas, ya que permite estudiar patrones de consumo de clientes, productos más vendidos y evolución temporal de las ventas. Sin embargo, requiere un proceso de limpieza para corregir posibles valores anómalos (fechas erróneas, cantidades negativas o transacciones duplicadas).
Fase 3 – Data Preparation
🧹 4. Data cleaning
-	Faltantes: en el dataset ventas_export.csv no se encontraron valores nulos en las variables principales. Si aparecieran, las numéricas (ej. cantidad) se imputarían con la mediana, y las categóricas (cliente_id, producto_id) con la categoría "Unknown".
-	Duplicados: se eliminaron registros repetidos usando drop_duplicates().
-	Outliers: en la variable cantidad se detectaron ventas anómalas (valores extremos). Estos fueron tratados aplicando winsorización (recorte de valores fuera del percentil 95).
-	Inconsistencias: se revisaron formatos de fechas para que todas las transacciones tengan formato estándar (YYYY-MM-DD).

🔧 5. Data transformation
•	Codificación de categóricas:
o	cliente_id y producto_id fueron convertidas en variables dummy mediante One-Hot Encoding para su uso en modelos de clasificación.
•	Feature engineering:
o	Creación de la variable ventas_acumuladas: suma de cantidad por cliente.
o	Creación de la variable frecuencia_cliente: número de transacciones por cliente.
•	Integración: se deja abierta la posibilidad de unir el dataset con información de facturación o promociones de la empresa.
•	Reducción: se probó una reducción exploratoria con PCA, para detectar patrones entre clientes y productos.

✅ 6. Data validation
•	Se realizó un EDA post-limpieza, con histogramas de cantidad y matriz de correlación entre variables generadas.
•	Se confirmaron variables redundantes y se descartaron.
•	Se creó la variable objetivo binaria HighBuyer:
o	HighBuyer = 1 si el cliente tiene más de 15 compras acumuladas.
o	HighBuyer = 0 en caso contrario.

Conclusión
La Unidad 1 permitió:
1.	Asegurar un dataset libre de duplicados e inconsistencias.
2.	Transformar variables categóricas y numéricas para análisis y modelado.
3.	Generar nuevas variables (ventas acumuladas, frecuencia de cliente) que aportan información predictiva.
4.	Obtener un dataset pre-modelado ventas_empresa_v3.csv, listo para la fase de modelado.



