import pandas as pd
import numpy as np

# Cargar dataset
df = pd.read_csv("ventas_export.csv")

print("\n--- 4. Data Cleaning ---")

# 1. Eliminar duplicados
df = df.drop_duplicates()
print("✅ Duplicados eliminados")

# 2. Imputación de faltantes
for col in df.columns:
    if df[col].dtype == "object":
        df[col] = df[col].fillna("Unknown")
    else:
        df[col] = df[col].fillna(df[col].median())
print("✅ Valores faltantes imputados")

# 3. Winsorización de outliers en cantidad
q_low = df["cantidad"].quantile(0.01)
q_high = df["cantidad"].quantile(0.95)
df["cantidad"] = np.where(df["cantidad"] > q_high, q_high, 
                          np.where(df["cantidad"] < q_low, q_low, df["cantidad"]))
print("✅ Outliers tratados con winsorización")

# 4. Revisar fechas inconsistentes
if "fecha" in df.columns:
    df["fecha"] = pd.to_datetime(df["fecha"], errors="coerce")
    print("✅ Fechas estandarizadas")

print("\nMuestra de datos después de limpieza:")
print(df.head())


