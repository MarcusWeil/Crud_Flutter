# Flutter Crud App
 
Repositório com o propósito de deixar registrado o desenvolvimento de uma tela CRUD para um sistema de produtos com scroll e contagem do número de produtos, onde foram aplicados fundamentos de DialogueBox para confirmação da ação solicitada, conceitos de statelessWidget e statefulWidget para as páginas que precisem de valores mutáveis e a exibição de uma lista trazida de um banco de dados externa.
### DashBoard
Tela de exibição com os itens, a contagem dos mesmos, os botões de criar, editar e excluir<br>
<img width="300" alt="dashboard" src="https://user-images.githubusercontent.com/93293231/163660555-269921d2-3e10-4f64-ba4d-1da2641112b3.png">
### Adicionar Produto
Ao clicar no ícone de adição na NavBar, a seguinte tela é exibida:<br>
<img width="300" alt="create" src="https://user-images.githubusercontent.com/93293231/163660614-17b1a757-e1e0-4b48-9b34-93f4d65eec66.png">
### Editar Produto
Ao clicar no ícone de editar, a mesma tela é exibida com os dados já preenchidos para edição:<br>
<img width="300" alt="update" src="https://user-images.githubusercontent.com/93293231/163660700-e7aeabb1-6e66-4072-8301-afc1d282ee0f.png">
### Excluir Produto
Caixa de dialógo é exibida ao clicar no ícone de deletar. [DialogueBox](https://github.com/MarcusWeil/crud_and_dialoguebox/blob/main/lib/main.dart#L217)<br>
<img width="300" alt="image" src="https://user-images.githubusercontent.com/93293231/162858085-ab508fa8-dc6a-4564-836a-bfad10507a54.png">
<br>
Ao confirmar exclusão, é exibido um [SnackBar](https://github.com/MarcusWeil/crud_and_dialoguebox/blob/main/lib/components/show_snackbar.dart) com a mensagem de sucesso.<br>
<img width="400" alt="image" src="https://user-images.githubusercontent.com/93293231/162859054-55033aa6-107e-48af-9a68-76d58148b6d3.png">

To do:
- [ ] Banco de dados
- [ ] Dashboard
- [x] Create Items frontend
- [x] Read Items frontend
- [x] Update Items frontend
- [x] Delete Items frontend


- [ ] Create Items backend
- [ ] Read Items backend
- [ ] Update Items backend
- [ ] Delete Items backend
