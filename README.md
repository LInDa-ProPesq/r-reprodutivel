# r-reprodutivel
Pesquisa reprodutível com a linguagem R.

A proposta de um trabalho reprodutível é oferecer a qualquer outro pesquisador, os dados originais do estudo, 
processados com os mesmos scripts e obter resultados idênticos ou muito próximos do original.
Alguns projetos são mais complexos do que outros e consequentemente podem tornar o processo de reprodutibilidade 
mais desafiador. Muitas ferramentas e técnicas estão disponíveis para ajudar a superar esses desafios.
Fonte: https://medium.com/@suzana.svm/por-que-devo-tornar-minha-pesquisa-computacional-reprodut%C3%ADvel-a7b7457e8496
O que torna uma análise reproduzível?
Uma citação no CRAN-R Project que define o propósito da pesquisa reproduzível desta forma:
O objetivo da pesquisa reproduzível é vincular instruções específicas à análise de dados e dados experimentais 
para que os estudos possam ser recriados, melhor compreendidos e verificados.
Buscando uma nova forma para o desenvolvimento de projetos compartilhados e consistentes, e para que isso seja possível, 
é preciso responder a 5 perguntas sobre seu projeto:
1.O que fiz?
2.Por que fiz?
3.Como configurei o ambiente no momento da análise? 
4. Quando fiz alterações no projeto e quais foram elas? 
5. Quem precisa acessá-lo e como pode faze-lo?
Nos dois últimos itens, utilizamos o Git e o GitHub, com os seguintes passos:
1. Verificar se o Git está instalado no computador;
2. Criar uma conta no Github, caso ainda não tiver uma;
3. Configurar a autenticação do Github na máquina ((Mais detalhes em: https://help.github.com/articles/set-up-git/).
4. Após a instalação/configuração do Git/GitHub, certificar usuário "local" no computador, utilizando os comandos:
(a) git --global user.name "nome-do-usuario-Github""
(b) git --global user.email "email-do-usuario-GitHub"
5. Criar um repositório "remoto" no GitHub;
5. "Clonar" o repositório na máquina "local":
git clone https://github.com/nome-repositorio/r-nomereprodutivel.git
6. Navegar até o diretório clonado na máquina "local"
7. Verificar o status: git status
8. Criar um projeto em RStudio no diretório clonado
9. "Adicionar" alterações realizadas (script, diretórios criados, "packrat", etc.): git add *
10. Verificar os arquivos preparados para upload no remoto: git status
11. Executar o "commit" preparando-os todos para enviar ao remoto: git commit -m "Finalizando"
12. Efetivar o upload no remoto: git push
