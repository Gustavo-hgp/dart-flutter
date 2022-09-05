//EXERCICIO 1
void main()
{
    print("-----------CalculaTriangulo-----------");
    print("Entre com a base: ");
    double? n1 = double.parse(stdin.readLineSync()!);
 
    print("Entre com a altura: ");
    double? n2 =  double.parse(stdin.readLineSync()!);
 
    // Adding them and printing them
    double? sum = (n1 * n2)/2;
    print("Sum is $sum");
}
