library(shiny)
library(jsme)


ui = shinyUI(fluidPage(
    mainPanel(jsmeOutput('jsmeElement', '650px', '650px'), jsmeOutput('jsmeElement_', '650px', '650px')),
    sidebarPanel(



    actionButton('smilesButton', 'Smiles'),
    #actionButton('smilesButton', 'Smiles', onClick='smiles('jsmeElement', 'inputSmiles')'),
    #textOutput('smiles'),
    actionButton('molFileButton', 'MOL File'),
    #actionButton('molFileButton', 'MOL File', onClick='molFile('jsmeElement', 'inputMolFile')'),
    #textOutput('molFile'),
    actionButton('jmeFileButton', 'JME File'),
    #actionButton('jmeFileButton', 'JME File', onClick='jmeFile('jsmeElement', 'inputJmeFile')'),
    #textOutput('jmeFile'),
    textInput('smilesTextInput', 'Smiles', width='100%'),
    #textInput('molFileTextInput', 'MOL file', width='100%'),
    tags$textarea(id='molFileTextInput', rows=6, '', style='width: 100%'),
    textInput('jmeFileTextInput', 'JME string', width='100%'),
    actionButton('readSampleMoleculeButton', 'Read Molecule'),
    #actionButton('readSampleMoleculeButton', 'Read Molecule', onClick='readMolecule('jsmeElement', '16 17 C 7.37 -8.99 C 7.37 -7.59 C 6.16 -6.89 C 4.95 -7.59 C 4.95 -8.99 C 6.16 -9.69 N 8.58 -6.89 C 8.58 -5.49 C 7.37 -4.79 O 6.16 -5.49 C 9.80 -7.59 O 9.80 -8.99 C 11.01 -6.89 Cl 12.22 -7.59 Cl 11.01 -5.49 C 9.80 -4.79 1 2 1 2 3 2 3 4 1 4 5 2 5 6 1 6 1 2 7 8 1 8 9 1 9 10 1 3 10 1 2 7 1 7 11 1 11 12 2 11 13 1 13 14 1 13 15 1 8 16 1')'),
    actionButton('readSampleMultipartStructureButton', 'Read MultipartStructure'),
    #actionButton('readSampleMultipartStructureButton', 'Read MultipartStructure', onClick='readMolecule('jsmeElement', '9 9 C 6.68 -7.15 C 5.47 -6.45 C 4.26 -7.15 C 4.26 -8.55 C 5.47 -9.25 C 6.68 -8.55 C 5.47 -5.05 O- 6.68 -4.35 O 4.26 -4.35 1 2 1 2 3 2 3 4 1 4 5 2 5 6 1 6 1 2 2 7 1 7 8 1 7 9 2|1 0 Na+ 12.21 -6.61')'),
    actionButton('readSampleReactionButton', 'Read Reaction'),
    #actionButton('readSampleReactionButton', 'Read Reaction', onClick='readMolecule('jsmeElement', '3 2 C:1 1.41 -7.12 O:2 1.41 -5.72 Cl 2.63 -7.82 1 2 2 1 3 1|3 2 N:3 5.72 -6.78 C:4 7.12 -6.78 H:5 5.02 -7.99 1 2 1 1 3 1 >> 5 4 C:1 13.51 -6.40 O:2 13.51 -5.00 N:3 14.72 -7.10 C:4 15.94 -6.40 H:5 14.71 -8.50 1 2 2 1 3 1 3 4 1 3 5 1')'),
    actionButton('useJmeButton', 'Use JME'),
    actionButton('useMolButton', 'Use MOL file'),
    actionButton('clearEditorButton', 'Clear Editor'),
    actionButton('clearFieldsButton', 'Clear Fields')
    )
))
