cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  mixed-non-hodgkin-lymphoma---primary:
    run: mixed-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  mlymphocytic-non-hodgkin-lymphoma---primary:
    run: mlymphocytic-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: mixed-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-maltoma---primary:
    run: non-hodgkin-lymphoma-maltoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: mlymphocytic-non-hodgkin-lymphoma---primary/output
  nonhodgkin---primary:
    run: nonhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-maltoma---primary/output
  non-hodgkin-lymphoma-resulting---primary:
    run: non-hodgkin-lymphoma-resulting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: nonhodgkin---primary/output
  lymphoma-nonhodgkin---primary:
    run: lymphoma-nonhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-resulting---primary/output
  non-hodgkin-lymphoma-nkcell---primary:
    run: non-hodgkin-lymphoma-nkcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lymphoma-nonhodgkin---primary/output
  mlymphoblastic-non-hodgkin-lymphoma---primary:
    run: mlymphoblastic-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-nkcell---primary/output
  cutaneous-non-hodgkin-lymphoma---primary:
    run: cutaneous-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: mlymphoblastic-non-hodgkin-lymphoma---primary/output
  different-non-hodgkin-lymphoma---primary:
    run: different-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cutaneous-non-hodgkin-lymphoma---primary/output
  angioimmunoblastic-non-hodgkin-lymphoma---primary:
    run: angioimmunoblastic-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: different-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-mmalig---primary:
    run: non-hodgkin-lymphoma-mmalig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: angioimmunoblastic-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-spleen---primary:
    run: non-hodgkin-lymphoma-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-mmalig---primary/output
  non-hodgkin-lymphoma-tcell---primary:
    run: non-hodgkin-lymphoma-tcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-spleen---primary/output
  non-hodgkin-lymphoma-sezary---primary:
    run: non-hodgkin-lymphoma-sezary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-tcell---primary/output
  mature-non-hodgkin-lymphoma---primary:
    run: mature-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-sezary---primary/output
  non-hodgkin-lymphoma-reticulosis---primary:
    run: non-hodgkin-lymphoma-reticulosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: mature-non-hodgkin-lymphoma---primary/output
  nonfollicular-non-hodgkin-lymphoma---primary:
    run: nonfollicular-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-reticulosis---primary/output
  non-hodgkin-lymphoma-mmycosis---primary:
    run: non-hodgkin-lymphoma-mmycosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: nonfollicular-non-hodgkin-lymphoma---primary/output
  centroblasticcentrocytic-non-hodgkin-lymphoma---primary:
    run: centroblasticcentrocytic-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-mmycosis---primary/output
  non-hodgkin-lymphoma-burkitt---primary:
    run: non-hodgkin-lymphoma-burkitt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: centroblasticcentrocytic-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-unspecif---primary:
    run: non-hodgkin-lymphoma-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-burkitt---primary/output
  non-hodgkin-lymphoma-noncleaved---primary:
    run: non-hodgkin-lymphoma-noncleaved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-unspecif---primary/output
  anaplastic-non-hodgkin-lymphoma---primary:
    run: anaplastic-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-noncleaved---primary/output
  non-hodgkin-lymphoma-mreticulosarcoma---primary:
    run: non-hodgkin-lymphoma-mreticulosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: anaplastic-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-bcell---primary:
    run: non-hodgkin-lymphoma-bcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-mreticulosarcoma---primary/output
  non-hodgkin-lymphoma-lymphosarcoma---primary:
    run: non-hodgkin-lymphoma-lymphosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-bcell---primary/output
  nodular-non-hodgkin-lymphoma---primary:
    run: nodular-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-lymphosarcoma---primary/output
  non-hodgkin-lymphoma-diffuse---primary:
    run: non-hodgkin-lymphoma-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: nodular-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-[m]lymphoma---primary:
    run: non-hodgkin-lymphoma-[m]lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-diffuse---primary/output
  non-hodgkin-lymphoma-follicle---primary:
    run: non-hodgkin-lymphoma-follicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-[m]lymphoma---primary/output
  non-hodgkin-lymphoma-specified---primary:
    run: non-hodgkin-lymphoma-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-follicle---primary/output
  non-hodgkin-lymphoma-[m]microglioma---primary:
    run: non-hodgkin-lymphoma-[m]microglioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-specified---primary/output
  non-hodgkin-lymphoma-malignant---primary:
    run: non-hodgkin-lymphoma-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-[m]microglioma---primary/output
  lymphocytic-non-hodgkin-lymphoma---primary:
    run: lymphocytic-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-malignant---primary/output
  immunoproliferative-non-hodgkin-lymphoma---primary:
    run: immunoproliferative-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lymphocytic-non-hodgkin-lymphoma---primary/output
  non-hodgkin-lymphoma-axilla---primary:
    run: non-hodgkin-lymphoma-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: immunoproliferative-non-hodgkin-lymphoma---primary/output
  other-non-hodgkin-lymphoma---primary:
    run: other-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: non-hodgkin-lymphoma-axilla---primary/output
  peripheral-non-hodgkin-lymphoma---primary:
    run: peripheral-non-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: other-non-hodgkin-lymphoma---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: peripheral-non-hodgkin-lymphoma---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
