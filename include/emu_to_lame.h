#ifndef EMU_TO_LAME
#define EMU_TO_LAME

#include <Eigen/Dense>
#include <EigenTypes.h>

namespace sim {

    template<typename ParameterType>
    void emu_to_lame(ParameterType &lambda, ParameterType & mu, const ParameterType& E, const ParameterType& p);
    
}

#ifndef SIM_STATIC_LIBRARY
# include<../src/emu_to_lame.cpp>
#endif

#endif