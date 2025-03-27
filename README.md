# cmc-ontologies
CMC Ontologies contains exemplary (anonymized) ontologies as we have focused on within the area of CMC. It has separate folders for different scopes like Solubility scope, Stability Scope, Polymorphism. You will find the auxilliary and basis ontologies under Stability folder:

cmc_coredev.ttl

cmc_pharmdev.ttl 

Within the test-data folder we have provided some exemplary data for processing it into a data graph and connecting via ontologies:

cdr-data is retrieved from the public United States Environmental Protection agency: https://www.epa.gov/chemical-data-reporting/access-chemical-data-reporting-data . This folder contains two pruned .xls files with quantitative and qualitative data. It is a typical format you can integrate via ontologies and represent on the KG / DG.

stability-reports are completely fake generated but aligned with some real exemplary reports data. These are the typical full of expert content .docs or .pdf files we would process with text2ttl and integrate via ontologies into the KG / DG .

You are free to extend the ontologies and use them on your own data which can be provided in various formats!


