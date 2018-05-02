#ifndef qTree_h
#define qTree_h

#include <rw/rw.hpp>
#include <rw/math/Q.hpp>

using namespace std;
using namespace rw;
using namespace rw::math;

class qTree
{
    private:
        
    public:
        int parent;
        Q data;
        qTree();
        qTree(Q data);
        qTree(Q data, int parent);
        
};

qTree :: qTree()
{
    parent = -1;
    data = rw::math::Q(6,0,0,0,0,0,0);
}

qTree :: qTree(Q data) 
{
    parent = -1;
    this->data = data;
}

qTree :: qTree(Q data, int parent)
{
    this->parent = parent;
    this->data = data;
}



// int main()
// {
//     qTree test(Q(3, 3., 3., 3.));
//     std::cout << test.getParent() << std::endl;
//     qTree test2(Q(3, 5., 4., 3.), &test);
//     std::cout << test2.getParent() << std::endl;
//     qTree test3(Q(2,4.,2.), &test2);
//     std::cout << test3.getParent() << std::endl;
//     test3.setParent(&test);
//     std::cout << test3.getParent() << std::endl;

//     return 0;
// }


#endif /* qTree_h */
