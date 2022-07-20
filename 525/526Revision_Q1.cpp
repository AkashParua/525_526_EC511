#include <iostream>
using namespace  std;
long int factorial(long int n)
{
    if(n==1)
    return 1;
    else
    return n* factorial(n-1);
}
int main()
{
    int n;
  cout<<"Enter number:";cin>>n;
  cout<<factorial(n)<<endl;

}