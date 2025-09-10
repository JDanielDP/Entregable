import matplotlib.pyplot as plt

print("\n--- 3.2. Análisis descriptivo gráfico ---")

# Histograma y boxplot de cantidad
if "cantidad" in df.columns:
    plt.hist(df["cantidad"], bins=10, edgecolor="black")
    plt.title("Histograma de cantidad")
    plt.xlabel("Cantidad")
    plt.ylabel("Frecuencia")
    plt.savefig("histograma_cantidad.png")
    plt.show()

    df["cantidad"].plot(kind="box", title="Boxplot de cantidad")
    plt.savefig("boxplot_cantidad.png")
    plt.show()

# Gráfico de barras productos más vendidos
if "producto_id" in df.columns:
    top_prod = df.groupby("producto_id")["cantidad"].sum().sort_values(ascending=False)
    top_prod.plot(kind="bar", title="Productos más vendidos")
    plt.xlabel("Producto ID")
    plt.ylabel("Cantidad total")
    plt.tight_layout()
    plt.savefig("productos_mas_vendidos.png")
    plt.show()

# Gráfico de barras clientes con más transacciones
if "cliente_id" in df.columns:
    top_cli = df["cliente_id"].value_counts()
    top_cli.plot(kind="bar", title="Clientes con más transacciones")
    plt.xlabel("Cliente ID")
    plt.ylabel("Número de transacciones")
    plt.tight_layout()
    plt.savefig("clientes_mas_transacciones.png")
    plt.show()

# Gráfico de ventas mensuales
if "fecha" in df.columns:
    df["fecha"] = pd.to_datetime(df["fecha"])
    ventas_mes = df.groupby(df["fecha"].dt.to_period("M"))["cantidad"].sum()
    ventas_mes.plot(kind="line", marker="o", title="Ventas mensuales")
    plt.xlabel("Mes")
    plt.ylabel("Cantidad")
    plt.tight_layout()
    plt.savefig("ventas_mensuales.png")
    plt.show()


