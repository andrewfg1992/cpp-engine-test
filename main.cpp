#include "MatlabEngine.hpp"
#include <iostream>

int main() {

    // Start MATLAB engine
    std::unique_ptr<MATLABEngine> matlabPtr = matlab::engine::startMATLAB();

    double result = matlabPtr->feval<double>(u"sqrt", 4.0);
    if(result==2) {
        std::cout << "success! result is expected value" << std::endl;
    }
}
