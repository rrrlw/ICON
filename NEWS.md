## ICON v0.2.0

Major change: none of the datasets are stored locally and loaded with the data function.
Instead, all datasets are now stored on a GitHub repo and downloaded/loaded with the `get_data` function provided in the ICON package.
Additionally, the ICON_data dataset can be used to find information on the datasets themselves.
This change allows the package to provide datasets larger than the 5 MB limit posed by CRAN.

Added following datasets:
* aishihik_intensity, aishihik_prevalence
* amazon_copurchase
* AS_relation
* coldlake_intensity, coldlake_prevalence
* huron_prevalence
* internet_routers
* karate_club
* lakewoods_prevalence
* les_miserables
* mcgregor_intensity, mcgregor_prevalence
* network_coauthors
* parsnip_intensity, parsnip_prevalence
* power_grid
* ppi_cerevisiae
* ppi_coli
* ppi_sativa
* smallwood_intensity, smallwood_prevalence
* terrorist_pairs
* word_adj

Renamed the following datasets:
* yeast_ppi -> ppi_yeast

## ICON v0.1.0

Added initial set of networks from ICON:
* chess
* seed_disperse
* yeast_ppi
