TITLE Mod file for component: Component(id=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5 type=ionChannelHH)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.3
         org.neuroml.model   v1.5.3
         jLEMS               v0.9.9.0

ENDCOMMENT

NEURON {
    SUFFIX naf2__a0__b0__c0__d0__fastNa_shiftmin2_5
    USEION na WRITE ina VALENCE 1 ? Assuming valence = 1; TODO check this!!
    
    RANGE gion                           
    RANGE gmax                              : Will be changed when ion channel mechanism placed on cell!
    RANGE conductance                       : parameter
    
    RANGE g                                 : exposure
    
    RANGE fopen                             : exposure
    RANGE m_instances                       : parameter
    
    RANGE m_tau                             : exposure
    
    RANGE m_inf                             : exposure
    
    RANGE m_rateScale                       : exposure
    
    RANGE m_fcond                           : exposure
    RANGE m_timeCourse_TIME_SCALE           : parameter
    RANGE m_timeCourse_VOLT_SCALE           : parameter
    RANGE m_timeCourse_fastNa_shift         : parameter
    RANGE m_timeCourse_a                    : parameter
    RANGE m_timeCourse_b                    : parameter
    RANGE m_timeCourse_c                    : parameter
    RANGE m_timeCourse_d                    : parameter
    
    RANGE m_timeCourse_t                    : exposure
    RANGE m_steadyState_TIME_SCALE          : parameter
    RANGE m_steadyState_VOLT_SCALE          : parameter
    RANGE m_steadyState_fastNa_shift        : parameter
    RANGE m_steadyState_a                   : parameter
    RANGE m_steadyState_b                   : parameter
    RANGE m_steadyState_c                   : parameter
    RANGE m_steadyState_d                   : parameter
    
    RANGE m_steadyState_x                   : exposure
    RANGE h_instances                       : parameter
    
    RANGE h_tau                             : exposure
    
    RANGE h_inf                             : exposure
    
    RANGE h_rateScale                       : exposure
    
    RANGE h_fcond                           : exposure
    RANGE h_timeCourse_TIME_SCALE           : parameter
    RANGE h_timeCourse_VOLT_SCALE           : parameter
    RANGE h_timeCourse_fastNa_shift         : parameter
    RANGE h_timeCourse_a                    : parameter
    RANGE h_timeCourse_b                    : parameter
    RANGE h_timeCourse_c                    : parameter
    RANGE h_timeCourse_d                    : parameter
    
    RANGE h_timeCourse_t                    : exposure
    RANGE h_steadyState_TIME_SCALE          : parameter
    RANGE h_steadyState_VOLT_SCALE          : parameter
    RANGE h_steadyState_fastNa_shift        : parameter
    RANGE h_steadyState_a                   : parameter
    RANGE h_steadyState_b                   : parameter
    RANGE h_steadyState_c                   : parameter
    RANGE h_steadyState_d                   : parameter
    
    RANGE h_steadyState_x                   : exposure
    RANGE m_timeCourse_V                    : derived variable
    RANGE m_steadyState_V                   : derived variable
    RANGE m_tauUnscaled                     : derived variable
    RANGE h_timeCourse_V                    : derived variable
    RANGE h_steadyState_V                   : derived variable
    RANGE h_tauUnscaled                     : derived variable
    RANGE conductanceScale                  : derived variable
    RANGE fopen0                            : derived variable
    
}

UNITS {
    
    (nA) = (nanoamp)
    (uA) = (microamp)
    (mA) = (milliamp)
    (A) = (amp)
    (mV) = (millivolt)
    (mS) = (millisiemens)
    (uS) = (microsiemens)
    (molar) = (1/liter)
    (kHz) = (kilohertz)
    (mM) = (millimolar)
    (um) = (micrometer)
    (umol) = (micromole)
    (S) = (siemens)
    
}

PARAMETER {
    
    gmax = 0  (S/cm2)                       : Will be changed when ion channel mechanism placed on cell!
    
    conductance = 1.0E-5 (uS)
    m_instances = 3 
    m_timeCourse_TIME_SCALE = 1 (ms)
    m_timeCourse_VOLT_SCALE = 1 (mV)
    m_timeCourse_fastNa_shift = -2.5 
    m_timeCourse_a = 0 
    m_timeCourse_b = 0 
    m_timeCourse_c = 0 
    m_timeCourse_d = 0 
    m_steadyState_TIME_SCALE = 1 (ms)
    m_steadyState_VOLT_SCALE = 1 (mV)
    m_steadyState_fastNa_shift = -2.5 
    m_steadyState_a = 0 
    m_steadyState_b = 0 
    m_steadyState_c = 0 
    m_steadyState_d = 0 
    h_instances = 1 
    h_timeCourse_TIME_SCALE = 1 (ms)
    h_timeCourse_VOLT_SCALE = 1 (mV)
    h_timeCourse_fastNa_shift = -2.5 
    h_timeCourse_a = 0 
    h_timeCourse_b = 0 
    h_timeCourse_c = 0 
    h_timeCourse_d = 0 
    h_steadyState_TIME_SCALE = 1 (ms)
    h_steadyState_VOLT_SCALE = 1 (mV)
    h_steadyState_fastNa_shift = -2.5 
    h_steadyState_a = 0 
    h_steadyState_b = 0 
    h_steadyState_c = 0 
    h_steadyState_d = 0 
}

ASSIGNED {
    
    gion   (S/cm2)                          : Transient conductance density of the channel? Standard Assigned variables with ionChannel
    v (mV)
    celsius (degC)
    temperature (K)
    ena (mV)
    ina (mA/cm2)
    
    
    m_timeCourse_V                         : derived variable
    
    m_timeCourse_t (ms)                    : conditional derived var...
    
    m_steadyState_V                        : derived variable
    
    m_steadyState_x                        : derived variable
    
    m_rateScale                            : derived variable
    
    m_fcond                                : derived variable
    
    m_inf                                  : derived variable
    
    m_tauUnscaled (ms)                     : derived variable
    
    m_tau (ms)                             : derived variable
    
    h_timeCourse_V                         : derived variable
    
    h_timeCourse_t (ms)                    : derived variable
    
    h_steadyState_V                        : derived variable
    
    h_steadyState_x                        : derived variable
    
    h_rateScale                            : derived variable
    
    h_fcond                                : derived variable
    
    h_inf                                  : derived variable
    
    h_tauUnscaled (ms)                     : derived variable
    
    h_tau (ms)                             : derived variable
    
    conductanceScale                       : derived variable
    
    fopen0                                 : derived variable
    
    fopen                                  : derived variable
    
    g (uS)                                 : derived variable
    rate_m_q (/ms)
    rate_h_q (/ms)
    
}

STATE {
    m_q  
    h_q  
    
}

INITIAL {
    ena = 50.0
    
    temperature = celsius + 273.15
    
    rates()
    rates() ? To ensure correct initialisation.
    
    m_q = m_inf
    
    h_q = h_inf
    
}

BREAKPOINT {
    
    SOLVE states METHOD cnexp
    
    ? DerivedVariable is based on path: conductanceScaling[*]/factor, on: Component(id=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5 type=ionChannelHH), from conductanceScaling; null
    ? Path not present in component, using factor: 1
    
    conductanceScale = 1 
    
    ? DerivedVariable is based on path: gates[*]/fcond, on: Component(id=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5 type=ionChannelHH), from gates; Component(id=m type=gateHHtauInf)
    ? multiply applied to all instances of fcond in: <gates> ([Component(id=m type=gateHHtauInf), Component(id=h type=gateHHtauInf)]))
    fopen0 = m_fcond * h_fcond ? path based, prefix = 
    
    fopen = conductanceScale  *  fopen0 ? evaluable
    g = conductance  *  fopen ? evaluable
    gion = gmax * fopen 
    
    ina = gion * (v - ena)
    
}

DERIVATIVE states {
    rates()
    m_q' = rate_m_q 
    h_q' = rate_h_q 
    
}

PROCEDURE rates() {
    
    m_timeCourse_V = v /  m_timeCourse_VOLT_SCALE ? evaluable
    if ((  m_timeCourse_V  +  m_timeCourse_fastNa_shift  )  < ( -30 ))  { 
        m_timeCourse_t = ( 0.0125 + 0.1525 * ( exp ( (( m_timeCourse_V  +  m_timeCourse_fastNa_shift ) + 30) / 10) ) ) *  m_timeCourse_TIME_SCALE ? evaluable cdv
    } else  { 
        m_timeCourse_t = ( 0.02 +  m_timeCourse_a  + (0.145 +  m_timeCourse_b ) * ( exp ( -1 * (( m_timeCourse_V  +  m_timeCourse_fastNa_shift  +  m_timeCourse_d ) + 30) / (10 +  m_timeCourse_c )) )) *  m_timeCourse_TIME_SCALE ? evaluable cdv
    }
    
    m_steadyState_V = v /  m_steadyState_VOLT_SCALE ? evaluable
    m_steadyState_x = 1 / ( 1 + (exp ( ( -1 * ( m_steadyState_V  +  m_steadyState_fastNa_shift ) - 38) / 10)) ) ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=m type=gateHHtauInf), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    m_rateScale = 1 
    
    m_fcond = m_q ^ m_instances ? evaluable
    ? DerivedVariable is based on path: steadyState/x, on: Component(id=m type=gateHHtauInf), from steadyState; Component(id=null type=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5_m_inf_inf)
    m_inf = m_steadyState_x ? path based, prefix = m_
    
    ? DerivedVariable is based on path: timeCourse/t, on: Component(id=m type=gateHHtauInf), from timeCourse; Component(id=null type=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5_m_tau_tau)
    m_tauUnscaled = m_timeCourse_t ? path based, prefix = m_
    
    m_tau = m_tauUnscaled  /  m_rateScale ? evaluable
    h_timeCourse_V = v /  h_timeCourse_VOLT_SCALE ? evaluable
    h_timeCourse_t = (0.225 + 1.125 / ( 1 + ( exp (( (  h_timeCourse_V  +  h_timeCourse_fastNa_shift  * 0 ) + 37 ) / 15) ) )) *  h_timeCourse_TIME_SCALE ? evaluable
    h_steadyState_V = v /  h_steadyState_VOLT_SCALE ? evaluable
    h_steadyState_x = 1 / ( 1 + (exp (( (  h_steadyState_V  +  h_steadyState_fastNa_shift  * 0 ) + 58.3 ) / 6.7)) ) ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=h type=gateHHtauInf), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    h_rateScale = 1 
    
    h_fcond = h_q ^ h_instances ? evaluable
    ? DerivedVariable is based on path: steadyState/x, on: Component(id=h type=gateHHtauInf), from steadyState; Component(id=null type=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5_h_inf_inf)
    h_inf = h_steadyState_x ? path based, prefix = h_
    
    ? DerivedVariable is based on path: timeCourse/t, on: Component(id=h type=gateHHtauInf), from timeCourse; Component(id=null type=naf2__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5__a0__b0__c0__d0__fastNa_shiftmin2_5_h_tau_tau)
    h_tauUnscaled = h_timeCourse_t ? path based, prefix = h_
    
    h_tau = h_tauUnscaled  /  h_rateScale ? evaluable
    
     
    
     
    
     
    
     
    
     
    
     
    
     
    
     
    
     
    
     
    
     
    
     
    rate_m_q = ( m_inf  -  m_q ) /  m_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    rate_h_q = ( h_inf  -  h_q ) /  h_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    
}

