TITLE Mod file for component: Component(id=cad__beta0_01__phi13000 type=fixedFactorConcentrationModelTraub)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.3
         org.neuroml.model   v1.5.3
         jLEMS               v0.9.9.0

ENDCOMMENT

NEURON {
    SUFFIX cad__beta0_01__phi13000
    USEION ca READ cai, cao, ica WRITE cai VALENCE 2
    RANGE cai
    RANGE cao
    GLOBAL initialConcentration
    GLOBAL initialExtConcentration
    RANGE restingConc                       : parameter
    RANGE beta                              : parameter
    RANGE phi                               : parameter
    
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
    surfaceArea (um2)
    iCa (nA)
    initialConcentration (mM)
    initialExtConcentration (mM)
    
    restingConc = 0 (mM)
    beta = 0.010000001 (kHz)
    phi = 1.30000003E15 (mM m2 /A /s)
}

ASSIGNED {
    cai (mM)
    cao (mM)
    ica (mA/cm2)
    diam (um)
    area (um2)
    rate_concentration (mM/ms)
    
}

STATE {
    concentration (mM) 
    extConcentration (mM) 
    
}

INITIAL {
    initialConcentration = cai
    initialExtConcentration = cao
    rates()
    rates() ? To ensure correct initialisation.
    
    concentration = initialConcentration
    
    extConcentration = initialExtConcentration
    
}

BREAKPOINT {
    
    SOLVE states METHOD cnexp
    
    if (concentration  < 0) {
        concentration = 0 ? standard OnCondition
    }
    
    
}

DERIVATIVE states {
    rates()
    concentration' = rate_concentration
    cai = concentration 
    
}

PROCEDURE rates() {
    
    surfaceArea = area   : surfaceArea has units (um2), area (built in to NEURON) is in um^2...
    
    iCa = -1 * (0.01) * ica * surfaceArea :   iCa has units (nA) ; ica (built in to NEURON) has units (mA/cm2)...
    
    rate_concentration = (iCa/surfaceArea) * 1e-9 *  phi  - ((  concentration   -   restingConc  ) *   beta  ) ? Note units of all quantities used here need to be consistent!
    
     
    
}

