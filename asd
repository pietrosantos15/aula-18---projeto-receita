#client = genai.Client(api_key=os.getenv("apikey"))
from google import genai # Biblioteca para interagir com o modelo Gemini

<!-- <!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerador de Currículos com IA</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex items-center justify-center min-h-screen bg-gray-100 font-sans py-8">
    <div class="container max-w-4xl mx-auto text-center p-4">
        <h1 class="text-3xl font-bold mb-6 text-gray-800">Gerador de Currículos 📝</h1>

        <form id="formulario" class="bg-white p-6 rounded-xl shadow-md mb-6 border border-gray-200 max-w-xl mx-auto space-y-4">
            <h3 class="text-xl font-semibold mb-4 text-gray-700">Informe suas informações</h3>

            <input type="text" name="nome" class="w-full p-2 border border-gray-300 rounded" placeholder="Nome completo">
            <input type="email" name="email" class="w-full p-2 border border-gray-300 rounded" placeholder="Email">
            <input type="tel" name="telefone" class="w-full p-2 border border-gray-300 rounded" placeholder="Telefone">

            <textarea name="objetivo" class="w-full p-2 border border-gray-300 rounded" placeholder="Objetivo profissional"></textarea>
            <input type="text" name="area_de_atuacao" class="w-full p-2 border border-gray-300 rounded" placeholder="Área de atuação desejada">

            <textarea name="formacoes" class="w-full p-2 border border-gray-300 rounded" placeholder="Formacão Acadêmica (Ex: Curso, Instituição, Início-Fim)"></textarea>
            <textarea name="experiencia" class="w-full p-2 border border-gray-300 rounded" placeholder="Experiência Profissional (Ex: Empresa, Cargo, Período, Descrição)"></textarea>

            <textarea name="habilidades_tecnicas" class="w-full p-2 border border-gray-300 rounded" placeholder="Habilidades Técnicas (Ex: Python, JavaScript, Git...)"></textarea>
            <textarea name="habilidades_interpessoais" class="w-full p-2 border border-gray-300 rounded" placeholder="Habilidades Interpessoais (Ex: Trabalho em equipe, Comunicação...)"></textarea>

            <textarea name="idiomas" class="w-full p-2 border border-gray-300 rounded" placeholder="Idiomas (Ex: Inglês - Intermediário)"></textarea>
            <textarea name="certificacoes" class="w-full p-2 border border-gray-300 rounded" placeholder="Cursos e Certificações (Ex: Curso, Instituição, Ano)"></textarea>

            <div class="flex justify-center gap-4 pt-4">
                <button type="submit" id="gerar-curriculo" class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Gerar Currículo</button>
                <button type="reset" class="bg-gray-500 hover:bg-gray-600 text-white font-bold py-2 px-4 rounded">Limpar Campos</button>
            </div>
        </form>

        <div id="response" class="bg-white p-6 rounded-xl shadow-md border border-gray-200 mt-6 text-left hidden max-w-xl mx-auto">
            Carregando...
        </div>
    </div>

    <script src="script.js" defer></script>
</body>
</html> 
-->