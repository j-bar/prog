#include <iostream>

#include <string>

template <class T>
class templateTest
{
	public:
		templateTest( T init );
		void TestMethod();
		void setMethod( T data );
	private:
		T data1;
};

template <class T>
templateTest<T>::templateTest( T init )
{ 
	this->data1 = init;

}

template <class T>
void templateTest<T>::TestMethod()
{
	std::cout << "testMethod() " << this->data1 << std::endl;
}

template <class T>
void templateTest<T>::setMethod( T data )
{
	this->data1 = data;
}

void templateDemo()
{
	templateTest<int> tT( 5 );
	tT.TestMethod();
	tT.setMethod( 25 );
	tT.TestMethod();
}


void constructorTypes() {
	std::string s1; //default constructor
	std::string s2 = s1; //copy initialize
	std::string s3(s2); //direct initialization
}
