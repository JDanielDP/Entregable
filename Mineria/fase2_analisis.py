import pandas as pd

# Cargar dataset
df = pd.read_csv("ventas_export.csv")

print("\n--- 3.5. Perfil comparativo (clientes/productos) ---")

# Comparar clientes más frecuentes vs menos frecuentes
if "cliente_id" in df.columns and "cantidad" in df.columns:
    ventas_por_cliente = df.groupby("cliente_id")["cantidad"].sum().sort_values(ascending=False)
    print("\nTop clientes por volumen de ventas:")
    print(ventas_por_cliente.head())

    print("\nClientes con menor volumen de ventas:")
    print(ventas_por_cliente.tail())

# Comparar productos más vendidos vs menos vendidos
if "producto_id" in df.columns and "cantidad" in df.columns:
    ventas_por_producto = df.groupby("producto_id")["cantidad"].sum().sort_values(ascending=False)
    print("\nTop productos más vendidos:")
    print(ventas_por_producto.head())

    print("\nProductos con menor rotación:")
    print(ventas_por_producto.tail())

# Dependencia de clientes
if "cliente_id" in df.columns and "cantidad" in df.columns:
    porcentaje_top1 = ventas_por_cliente.iloc[0] / ventas_por_cliente.sum() * 100
    print(f"\nEl cliente con más compras representa el {porcentaje_top1:.2f}% del total de ventas.")
