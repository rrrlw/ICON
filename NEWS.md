## ICON v0.3.0

Added following datasets:
* fullerene_c60
* fullerene_c180
* fullerene_c240
* fullerene_c260
* fullerene_c320
* fullerene_c500
* fullerene_c540
* fullerene_c720
* fullerene_c960
* fullerene_c1500
* fullerene_c2160
* fullerene_c2940
* fullerene_c3840
* fullerene_c4860
* fullerene_c6000
* r_dep
* wordadj_english
* wordadj_french
* wordadj_spanish
* wordadj_japanese

## ICON v0.2.0

Major change: none of the datasets are stored locally and loaded with the data function.
Instead, all datasets are now stored on a GitHub repo and downloaded/loaded with the `get_data` function provided in the ICON package.
Additionally, the ICON_data dataset can be used to find information on the datasets themselves.
This change allows the package to provide datasets larger than the 5 MB limit posed by CRAN.

Added following datasets:
* aishihik_intensity
* aishihik_prevalence
* amazon_copurchase
* AS_relation
* coldlake_intensity
* coldlake_prevalence
* diseasome
* diseasome_shared
* huron_prevalence
* internet_routers
* karate_club
* lakewoods_prevalence
* les_miserables
* mcgregor_intensity
* mcgregor_prevalence
* network_coauthors
* neural_elegans
* parsnip_intensity
* parsnip_prevalence
* plant_pollinator_arroyo
* plant_pollinator_bh
* plants_ants
* power_grid
* ppi_cerevisiae
* ppi_coli
* ppi_elegans
* ppi_human
* ppi_melanogaster
* ppi_musculus
* ppi_norvegicus
* ppi_pombe
* ppi_sativa
* ppi_subtilis
* ppi_taurus
* ppi_thaliana
* seed_disperse_beehler
* smallwood_intensity
* smallwood_prevalence
* terrorist_pairs
* word_adj

Renamed the following datasets:
* yeast_ppi -> ppi_yeast

## ICON v0.1.0

Added initial set of networks from ICON:
* chess
* seed_disperse
* yeast_ppi
