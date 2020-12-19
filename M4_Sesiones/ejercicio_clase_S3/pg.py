import psycopg2

conector = psycopg2.connect(
                            host = "localhost",
                            user = "usuario_mi_base",
                            password = "1234",
                            dbname = "mi_base",
                            port = "5432"
                            )

print("la base ya fué abierta")
cursor = conector.cursor()
cursor.execute('SELECT * FROM profesores;')

profesores = cursor.fetchall()
for registro in profesores:
    print(registro)
