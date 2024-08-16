import pandas as pd
import pymysql

# Conexión a la base de datos MySQL
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='12345678',
    database='esp32'
)

# Leer el archivo CSV
df = pd.read_csv('datos.csv')

# Renombrar columnas para que coincidan con las columnas de la tabla en la base de datos
df.columns = ['N', 'criterio', 'rta_0', 'rta_1', 'rta_2', 'rta_3']

# Reemplazar NaN con una cadena vacía o un valor predeterminado
df = df.fillna('')

# Insertar los datos en la tabla preguntas
try:
    with connection.cursor() as cursor:
        for _, row in df.iterrows():
            sql = """
                INSERT INTO preguntas (tema, criterio, rta_0, rta_1, rta_2, rta_3)
                VALUES (%s, %s, %s, %s, %s, %s)
            """
            cursor.execute(sql, ('Tema general', row['criterio'], row['rta_0'], row['rta_1'], row['rta_2'], row['rta_3']))
    connection.commit()
finally:
    connection.close()

print("Datos insertados correctamente.")
