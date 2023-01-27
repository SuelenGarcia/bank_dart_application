Criar a aplicação com nome sugestivo bancário;

Criar uma classe Usuario com os seguintes atributos: 
String nome, 
String email, 
int senha numérica de 8 dígitos, 
int telefone, 
int cpf, 
String rua, 
String bairro, 
String cidade, 
String estado, 
String numero,
int cep,
String? complemento,
double? renda mensal.


Criar uma classe Conta com o seguintes atributos: 
Usuario usuario,
function transferências, 
function sacar, 
function depositar um valor na conta,
String agência, 
String banco, 
String número da conta, 
double saldo,


Criar uma classe de conta Corrente implementando da classe Conta com os seguintes atributos:
cartão (podendo ser somente débito ou débito e crédito, mas é 1 cartão com 2 funcionalidades, não 2 cartões),
function emprestimo

Criar uma classe de conta Poupança implementando da classe Conta com os seguintes atributos:
cartão (mas sem opção de crédito)
function rendimento

Criar uma classe do Cartão com os seguintes atributos: 
int número, 
String bandeira, 
int cvv, 
String nome,
int data de validade (porém, o cartão de crédito terá o limite e o valor gasto).

Criar uma classe Cartao de credito implementando da classe Cartao com os seguintes atributos:
double limite,
double valor gasto