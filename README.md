# Additional data for Presence-absence of plant habitat specialists in 15 patches of calcareous, dry grasslands

### paper doi: 
### data doi:  https://doi.org/10.15468/v8kq9n
### <https://www.gbif.org/dataset/a99cf6c0-4eb2-476b-8414-a513f0925d86>

Contact: [Eva Lieungh](https://evalieungh.github.io/)

This repository contains additional data and resources for the data published on [GBIF](https://www.gbif.org/dataset/a99cf6c0-4eb2-476b-8414-a513f0925d86).
Submit an [issue](https://github.com/evalieungh/gressholmen_data/issues/new) if you have questions or comments! 

### Contents:

| File | Description |
|--- |---|
| Gressholmen_polygoner.png | Aerial photo from 2018-05-06, Oslo municipality, Ortofoto 10, resolution 0.08 (m), Dekningsnummer	TT-14340. Polygons 35_1, ..., 35_15 correspond to polygons 1-15 in the data. The number '35' denotes the grid number ("storrute") in ARKO data. Polygons 0_16,..., 0_40 are identified or modelled habitat locations that do not contain species observation, but were described using NiN variables in 2019. |
| iNaturalist_observations-214637.csv | Comma separated download of observations in/around Gressholmen. Some observations have bad coordinates. See [observations in iNaturalist](https://www.inaturalist.org/observations?place_id=any&user_id=evalieungh&verifiable=any).|
| polygondata.csv | Additional information per polygon; p1-p15 correspond to polygons 1-15, or 35_1-35_15 in the image. Polygons 0_16-0_40 are also shown in the image. [Vegetation type](https://onlinelibrary.wiley.com/doi/10.1111/geb.13164 "Nature in Norway types, see supplement") is given as rounded percentages of one of three major types (columns 2-9): T1 Bare rock, T2 Open shallow-soil ground, T32 Semi-natural grassland, or T4 Forest. |
| infer_absences.R | An R script for expanding the occurrence.txt data file to include absences. |


![Polygons on Gressholmen](Gressholmen_polygoner.png)

-----------------------------------------------------

Related publications: 

- Bakkestuen, V., O. Stabbetorp, A. Molia, and Evju M. “Hotspot Åpen Grunnlendt Kalkmark i Oslofjordområdet. Beskrivelse Av Habitatet Og Forslag Til Overvåkingsopplegg Fra ARKO-Prosjektet [Hotspot Open Clacareos Vegetation on Shallow Soils in the Oslo Fjord. Habitat Description and Suggested Monitoring Scheme from the ARKO Project].” Vol. 1102. NINA Rapport. Oslo, 2014.
- Evju, M., S. Blumentrath, O. Skarpaas, O. E. Stabbetorp, and A. Sverdrup-Thygeson. “Plant Species Occurrence in a Fragmented Grassland Landscape: The Importance of Species Traits.” Biodiversity and Conservation 24 (2015): 547–61.
- Evju, Marianne, and Anne Sverdrup-Thygeson. “Spatial Configuration Matters: A Test of the Habitat Amount Hypothesis for Plants in Calcareous Grasslands.” Landscape Ecology 31, no. 9 (November 2016): 1891–1902. https://doi.org/10.1007/s10980-016-0405-7.
- Olsen, Siri Lie, Marianne Evju, and Anders Endrestøl. “Fragmentation in Calcareous Grasslands: Species Specialization Matters.” Biodiversity and Conservation 27, no. 9 (July 2018): 2329–61. https://doi.org/10.1007/s10531-018-1540-z.
- Sverdrup-Thygeson, Anne, Olav Skarpaas, Stefan Blumentrath, Tone Birkemoe, and Marianne Evju. “Habitat Connectivity Affects Specialist Species Richness More than Generalists in Veteran Trees.” Forest Ecology and Management 403 (November 2017): 96–102. https://doi.org/10.1016/j.foreco.2017.08.003.
- Wollan, A. K., V. Bakkestuen, K. Bjureke, H. Bratli, A. Endrestøl, O. E. Stabbetorp, A. Sverdrup-Thygeson, and R. Halvorsen. “Åpen  Grunnlendt  Kalkmark  i  Oslofjordområdet  –  et  Hotspot-Habitat. Sluttrapport  under  ARKO-Prosjektets  Periode  II. NINA-Rapport 713.” Oslo: NINA, 2011.
