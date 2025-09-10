print("\n--- 3.3. Análisis exploratorio ---")

# Correlaciones numéricas
print("\nMatriz de correlación:")
print(df.corr(numeric_only=True))

# Promedio de ventas por cliente
if "cliente_id" in df.columns:
    print("\nPromedio de ventas por cliente:")
    print(df.groupby("cliente_id")["cantidad"].mean())

# Promedio de ventas por producto
if "producto_id" in df.columns:
    print("\nPromedio de ventas por producto:")
    print(df.groupby("producto_id")["cantidad"].mean())

# Tendencias por fecha
if "fecha" in df.columns:
    print("\nTendencia de ventas en el tiempo (mensual):")
    print(df.groupby(df["fecha"].dt.to_period("M"))["cantidad"].sum())


