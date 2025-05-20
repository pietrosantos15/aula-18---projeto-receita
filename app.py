import json
from flask import Flask, jsonify, request
from flask_cors import CORS
import google.generativeai as genai  
import os
from dotenv import load_dotenv


load_dotenv()


app = Flask(__name__)
CORS(app)


genai.configure(api_key=os.getenv("apikey"))  


model = genai.GenerativeModel("gemini-1.5-flash")  

def criar_curriculo(nome, email, telefone, objetivo_profissional, area_de_atuacao, formacoes, experiencias, habilidades_tecnicas, habilidades_interpessoais, idiomas, certificacoes):
    prompt = f"""
    Você é um assistente de recursos humanos altamente qualificado, especializado em criar currículos profissionais e bem estruturados em HTML.

    Sua tarefa é organizar, refinar e estruturar as informações fornecidas pelo usuário, retornando um currículo profissional formatado com tags HTML (sem CSS ou JS), pronto para ser exibido em uma página web.

    Não invente informações. Use apenas o conteúdo fornecido pelo usuário.

    Retorne o currículo apenas em HTML, sem quebras de linha, minificado, pronto para ser exibido em uma página web.

    ### Informações do Usuário:
    - Nome completo: {nome}
    - Email: {email}
    - Telefone: {telefone}
    - Objetivo Profissional: {objetivo_profissional}
    - Área de Atuação Desejada: {area_de_atuacao}
    - Formação Acadêmica: {formacoes} 
    - Experiência Profissional: {experiencias}
    - Habilidades Técnicas: {habilidades_tecnicas}
    - Habilidades interpessoais: {habilidades_interpessoais}
    - Idiomas: {idiomas}
    - Certificações: {certificacoes}

    Retorne somente as informações, sem colchetes no início e no final (sem explicações). De forma alguma permita palavrões, homofobia, xenofobia, qualquer tipo de preconceito, racismo, palavras de cunhos sexuais e outros. JAMAIS PERMITA. faça um css para o curriculo. 

    """

    response = model.generate_content(prompt)
    return {"curriculo": response.text}

@app.route('/', methods=['GET'])
def index():
    return 'api on fire 🔥'

@app.route('/listacurriculo', methods=['POST'])
def fazer_curriculo():
    try:
        dados = request.get_json()
        if not dados or not isinstance(dados, dict):
            return jsonify({'error': 'Requisição JSON inválida. Esperava um dicionário.'}), 400

        informacoes = dados.get('informacoes', [])
        if not isinstance(informacoes, list) or len(informacoes) < 11:
            return jsonify({'error': 'É necessário preencher todos os campos do formulário.'}), 400

        resultado = criar_curriculo(*informacoes)
        return jsonify(resultado), 200

    except Exception as e:
        print(f"Erro interno: {e}")
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
