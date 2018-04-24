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
        qTree *parent;
        int id;
    public:
        Q *data;
        qTree();
        qTree(Q * data);
        qTree(Q * data, qTree * parent);
        // void initTree(Q& qInit);
        void setParent(qTree * parent);
        qTree *getParent();
        void setNodeData(Q * data);
};

qTree :: qTree()
{
    this->parent = nullptr;
    this->data = nullptr;
}

qTree :: qTree(Q * data) 
{
    this->parent = nullptr;
    this->data = data;
}

qTree :: qTree(Q * data, qTree * parent)
{
    this->parent = parent;
    this->data = data;
}

// void qTree :: initTree(Q qInit)
// {
//     qTree()
// }

void qTree :: setNodeData(Q * data)
{
    this->data = data;
}

void qTree::setParent(qTree * parent)
{
    this->parent = parent;
}

qTree * qTree::getParent()
{
    return this->parent;
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
