print("\n--- 3.4. Diagnóstico de calidad ---")

# Valores faltantes
print("\nValores faltantes:")
print(df.isnull().sum())

# Revisar fechas fuera de rango
if "fecha" in df.columns:
    print("\nRango de fechas:")
    print(df["fecha"].min(), "->", df["fecha"].max())

# Revisar ventas negativas o cero
if "cantidad" in df.columns:
    print("\nVentas con cantidad <= 0:", (df["cantidad"] <= 0).sum())



