#include <iostream>
using namespace std;
int main()
{
    int n;
    cout<<"No of array elements :";cin>>n;
    int arr[n];
    for(int i =0;i<n;i++)
    {
        int temp;
        cin>>temp;
        arr[i] = temp;
    }
   long int MAX,MIN;
    MIN = INT64_MAX;
    MAX = INT64_MIN;
    for(int i =0;i<n;i++)
    {
        if(arr[i]>MAX)
        MAX = arr[i];
        if(arr[i]<MIN)
        MIN = arr[i];
    }
    cout<<"min:"<<MIN<<endl;
    cout<<"max:"<<MAX;
}