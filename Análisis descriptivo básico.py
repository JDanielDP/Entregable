import pandas as pd

# Cargar dataset
df = pd.read_csv("ventas_export.csv")

print("\n--- 3.1. Análisis descriptivo básico ---")

# Resumen estadístico
print("\nResumen estadístico:")
print(df.describe(include="all"))

# Tipos de variables
print("\nTipos de variables:")
print(df.dtypes)

# Conteo de valores únicos en categóricas
print("\nValores únicos por columna:")
print(df.nunique())

# Distribución de la variable cantidad
if "cantidad" in df.columns:
    print("\nDistribución de 'cantidad':")
    print(f"Media: {df['cantidad'].mean():.2f}")
    print(f"Mediana: {df['cantidad'].median():.2f}")
    print(f"Desviación estándar: {df['cantidad'].std():.2f}")

