TITLE Mod file for component: Component(id=KvCaB type=ionChannelHH)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.3
         org.neuroml.model   v1.5.3
         jLEMS               v0.9.9.0

ENDCOMMENT

NEURON {
    SUFFIX KvCaB
    USEION ca READ cai,cao VALENCE 2
    USEION k WRITE ik VALENCE 1 ? Assuming valence = 1; TODO check this!!
    
    RANGE gion                           
    RANGE gmax                              : Will be changed when ion channel mechanism placed on cell!
    RANGE conductance                       : parameter
    
    RANGE g                                 : exposure
    
    RANGE fopen                             : exposure
    RANGE o_instances                       : parameter
    
    RANGE o_alpha                           : exposure
    
    RANGE o_beta                            : exposure
    
    RANGE o_tau                             : exposure
    
    RANGE o_inf                             : exposure
    
    RANGE o_rateScale                       : exposure
    
    RANGE o_fcond                           : exposure
    RANGE o_forwardRate_R                   : parameter
    RANGE o_forwardRate_zCa                 : parameter
    RANGE o_forwardRate_F                   : parameter
    RANGE o_forwardRate_TIME_SCALE          : parameter
    RANGE o_forwardRate_CONC_SCALE          : parameter
    
    RANGE o_forwardRate_r                   : exposure
    RANGE o_reverseRate_R                   : parameter
    RANGE o_reverseRate_zCa                 : parameter
    RANGE o_reverseRate_F                   : parameter
    RANGE o_reverseRate_TIME_SCALE          : parameter
    RANGE o_reverseRate_CONC_SCALE          : parameter
    
    RANGE o_reverseRate_r                   : exposure
    RANGE o_forwardRate_ca_conc_i           : derived variable
    RANGE o_forwardRate_K                   : derived variable
    RANGE o_forwardRate_volt_dep            : derived variable
    RANGE o_reverseRate_ca_conc_i           : derived variable
    RANGE o_reverseRate_K                   : derived variable
    RANGE o_reverseRate_volt_dep            : derived variable
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
    
    conductance = 1.0E-6 (uS)
    o_instances = 1 
    o_forwardRate_R = 0.008313424 (millijoule / K / umol)
    o_forwardRate_zCa = 2 
    o_forwardRate_F = 0.0964853 (C / umol)
    o_forwardRate_TIME_SCALE = 1 (ms)
    o_forwardRate_CONC_SCALE = 1 (mM)
    o_reverseRate_R = 0.008313424 (millijoule / K / umol)
    o_reverseRate_zCa = 2 
    o_reverseRate_F = 0.0964853 (C / umol)
    o_reverseRate_TIME_SCALE = 1 (ms)
    o_reverseRate_CONC_SCALE = 1 (mM)
}

ASSIGNED {
    
    gion   (S/cm2)                          : Transient conductance density of the channel? Standard Assigned variables with ionChannel
    v (mV)
    celsius (degC)
    temperature (K)
    ek (mV)
    ik (mA/cm2)
    
    cai (mM)
    
    cao (mM)
    
    
    o_forwardRate_ca_conc_i                : derived variable
    
    o_forwardRate_K (/mV)                  : derived variable
    
    o_forwardRate_volt_dep                 : derived variable
    
    o_forwardRate_r (kHz)                  : derived variable
    
    o_reverseRate_ca_conc_i                : derived variable
    
    o_reverseRate_K (/mV)                  : derived variable
    
    o_reverseRate_volt_dep                 : derived variable
    
    o_reverseRate_r (kHz)                  : derived variable
    
    o_rateScale                            : derived variable
    
    o_alpha (kHz)                          : derived variable
    
    o_beta (kHz)                           : derived variable
    
    o_fcond                                : derived variable
    
    o_inf                                  : derived variable
    
    o_tau (ms)                             : derived variable
    
    conductanceScale                       : derived variable
    
    fopen0                                 : derived variable
    
    fopen                                  : derived variable
    
    g (uS)                                 : derived variable
    rate_o_q (/ms)
    
}

STATE {
    o_q  
    
}

INITIAL {
    ek = -90.0
    
    temperature = celsius + 273.15
    
    rates()
    rates() ? To ensure correct initialisation.
    
    o_q = o_inf
    
}

BREAKPOINT {
    
    SOLVE states METHOD cnexp
    
    ? DerivedVariable is based on path: conductanceScaling[*]/factor, on: Component(id=KvCaB type=ionChannelHH), from conductanceScaling; null
    ? Path not present in component, using factor: 1
    
    conductanceScale = 1 
    
    ? DerivedVariable is based on path: gates[*]/fcond, on: Component(id=KvCaB type=ionChannelHH), from gates; Component(id=o type=gateHHrates)
    ? multiply applied to all instances of fcond in: <gates> ([Component(id=o type=gateHHrates)]))
    fopen0 = o_fcond ? path based, prefix = 
    
    fopen = conductanceScale  *  fopen0 ? evaluable
    g = conductance  *  fopen ? evaluable
    gion = gmax * fopen 
    
    ik = gion * (v - ek)
    
}

DERIVATIVE states {
    rates()
    o_q' = rate_o_q 
    
}

PROCEDURE rates() {
    LOCAL caConc
    
    caConc = cai
    
    o_forwardRate_ca_conc_i = caConc /  o_forwardRate_CONC_SCALE ? evaluable
    o_forwardRate_K = ( o_forwardRate_zCa  * 0.84 *  o_forwardRate_F ) / ( o_forwardRate_R  * temperature) ? evaluable
    o_forwardRate_volt_dep = 4.8e-04 * exp(- o_forwardRate_K  * v) ? evaluable
    o_forwardRate_r = ((0.28* o_forwardRate_ca_conc_i ) / ( o_forwardRate_ca_conc_i  +  o_forwardRate_volt_dep )) /  o_forwardRate_TIME_SCALE ? evaluable
    o_reverseRate_ca_conc_i = caConc /  o_reverseRate_CONC_SCALE ? evaluable
    o_reverseRate_K = ( o_reverseRate_zCa  *  o_reverseRate_F ) / ( o_reverseRate_R  * temperature) ? evaluable
    o_reverseRate_volt_dep = 1.3e-07 * exp(- o_reverseRate_K  * v) ? evaluable
    o_reverseRate_r = (0.48 / (1.0 + ( o_reverseRate_ca_conc_i / o_reverseRate_volt_dep ))) /  o_reverseRate_TIME_SCALE ? evaluable
    ? DerivedVariable is based on path: q10Settings[*]/q10, on: Component(id=o type=gateHHrates), from q10Settings; null
    ? Path not present in component, using factor: 1
    
    o_rateScale = 1 
    
    ? DerivedVariable is based on path: forwardRate/r, on: Component(id=o type=gateHHrates), from forwardRate; Component(id=null type=Bezaire_KvCaB_alpha)
    o_alpha = o_forwardRate_r ? path based, prefix = o_
    
    ? DerivedVariable is based on path: reverseRate/r, on: Component(id=o type=gateHHrates), from reverseRate; Component(id=null type=Bezaire_KvCaB_beta)
    o_beta = o_reverseRate_r ? path based, prefix = o_
    
    o_fcond = o_q ^ o_instances ? evaluable
    o_inf = o_alpha /( o_alpha + o_beta ) ? evaluable
    o_tau = 1/(( o_alpha + o_beta ) *  o_rateScale ) ? evaluable
    
     
    rate_o_q = ( o_inf  -  o_q ) /  o_tau ? Note units of all quantities used here need to be consistent!
    
     
    
     
    
     
    
}

