import psycopg2
import pandas as pd

DB_CONFIG = {
    "dbname": "escola",
    "user": "admin",
    "password": "senha",
    "host": "db",
    "port": "5432"
}

def executar_consulta(arquivo_sql):
    with open(arquivo_sql, "r") as f:
        consulta = f.read()

    conn = psycopg2.connect(**DB_CONFIG)
    df = pd.read_sql(consulta, conn)
    conn.close()

    return df

arquivos_consulta = [
    "queries/consulta_horas_x_professores.sql",
    "queries/consulta_salas_livres_x_salas_ocupadas_x_horarios.sql"
]

for arquivo in arquivos_consulta:
    print(f"\n Executando consulta: {arquivo}\n")
    resultado = executar_consulta(arquivo)
    
    print(resultado)
    
    nome_arquivo_saida = arquivo.replace("queries/", "").replace(".sql", ".txt")
    resultado.to_csv(nome_arquivo_saida, sep="\t", index=False)
    
    print(f"Resultado salvo em: {nome_arquivo_saida}")