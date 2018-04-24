#ifndef rrt_h
#define rrt_h

#include "qTree.h"



class rrt
{

private:
    vector<qTree*> rrtTree;
    
public:
    rrt();
    rrt(Q * qInit);
    // rrt(Q * qNode, qTree * qParent);

    void addQ(Q * q_, qTree * qParent_);
    vector<qTree*> getTree();

};



#endif // !rrt_h