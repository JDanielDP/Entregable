print("\n--- 3.5. Perfil comparativo ---")

# Clientes frecuentes vs no frecuentes
if "cliente_id" in df.columns:
    compras_cliente = df.groupby("cliente_id")["cantidad"].sum()
    print("\nClientes con más compras:")
    print(compras_cliente.sort_values(ascending=False).head(5))
    print("\nClientes con menos compras:")
    print(compras_cliente.sort_values(ascending=True).head(5))

# Productos más vendidos vs baja rotación
if "producto_id" in df.columns:
    ventas_producto = df.groupby("producto_id")["cantidad"].sum()
    print("\nProductos más vendidos:")
    print(ventas_producto.sort_values(ascending=False).head(5))
    print("\nProductos con baja rotación:")
    print(ventas_producto.sort_values(ascending=True).head(5))



