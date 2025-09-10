import pandas as pd
from sklearn.preprocessing import OneHotEncoder

# Cargar dataset limpio
df = pd.read_csv("ventas_export.csv")

print("\n--- 5. Data Transformation ---")

# Feature engineering
df["ventas_acumuladas"] = df.groupby("cliente_id")["cantidad"].transform("sum")
df["frecuencia_cliente"] = df.groupby("cliente_id")["id"].transform("count")

# Variable objetivo HighBuyer
df["HighBuyer"] = (df["ventas_acumuladas"] > 15).astype(int)

# One-Hot Encoding para cliente_id y producto_id
encoder = OneHotEncoder(sparse=False, handle_unknown="ignore")
encoded = encoder.fit_transform(df[["cliente_id","producto_id"]])

encoded_df = pd.DataFrame(encoded, columns=encoder.get_feature_names_out(["cliente","producto"]))
df = pd.concat([df.reset_index(drop=True), encoded_df.reset_index(drop=True)], axis=1)

print("✅ Nuevas variables creadas y categóricas transformadas")
print("\nMuestra de datos transformados:")
print(df.head())



