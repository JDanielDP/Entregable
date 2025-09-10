import pandas as pd

# Cargar dataset preparado
df = pd.read_csv("ventas_export.csv")

print("\n--- 6. Data Validation ---")

# Revisar valores faltantes
print("\nValores faltantes:")
print(df.isnull().sum())

# Resumen estadístico
print("\nResumen estadístico de cantidad:")
print(df["cantidad"].describe())

# Distribución de la variable objetivo
if "ventas_acumuladas" in df.columns:
    df["HighBuyer"] = (df["ventas_acumuladas"] > 15).astype(int)
    print("\nDistribución de HighBuyer:")
    print(df["HighBuyer"].value_counts())

print("\n✅ Validación completa, dataset listo para modelado")




