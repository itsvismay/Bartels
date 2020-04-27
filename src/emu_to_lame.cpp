
#ifdef SIM_STATIC_LIBRARY
# include<../include/emu_to_lame.h>
#endif

template<typename ParameterType>
void sim::emu_to_lame(ParameterType &lambda, ParameterType & mu, const ParameterType& E, const ParameterType& p) {
                      
    lambda = (E*p)/((1.0+p)*(1.0-2.0*p));
    mu = E/(2.0*(1.0+p));
    
}
