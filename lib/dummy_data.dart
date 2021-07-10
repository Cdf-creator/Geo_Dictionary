import './models/terminologies.dart';

const Dummy_Items = const [
  Terminology(
      id: 'a1',
      geoTerm: 'Alluvial Fan',
      description:
          'a fan-shaped deposit at the mouth of a mountain canyon, where stream gradient abruptly drops. These are usually coarse grained sediments. ',
      imageUrl:
          'https://media.nationalgeographic.org/assets/photos/000/188/18863.jpg',
      country: 'California, USA',
      location: 'Death Valley'),
  Terminology(
      id: 'a2',
      geoTerm: 'Anaerobic',
      description:
          'Bacteria or processes active only in the absence of molecular oxygen.',
      imageUrl:
          'https://www.researchgate.net/publication/339686984/figure/fig4/AS:865362857959425@1583329991852/SEM-micrographs-of-Carbonate-crystals-formed-by-biotic-controls-aerobically-and_Q320.jpg',
      country: 'London, England',
      location: 'ResearchGate'),
  Terminology(
      id: 'a3',
      geoTerm: 'Aquifer',
      description:
          'A consolidated or unconsolidated geologic unit (material, stratum, or formation) or set of connected units that yields water of suitable quality to wells or springs in economically usable amounts. ',
      imageUrl:
          'https://www.gsi.ie/images/images/Ord%20Metasediments.jpg?RenditionID=23',
      country: 'Ireland',
      location: 'Geological Survey'),
  Terminology(
      id: 'a4',
      geoTerm: 'Biosphere',
      description: 'The total assemblage of living organisms on the Earth.',
      imageUrl:
          'https://image.slidesharecdn.com/biosphere-140924104259-phpapp01/95biosphere-6-638.jpg?cb=1411555410',
      country: 'Ecosystem',
      location: 'Pinterest'),
  Terminology(
      id: 'a5',
      geoTerm: 'Blackwater',
      description:
          'Waste water from toilets, latrines, and privies and from sinks used for food preparation or disposal of chemical or biological substances. ',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/e/e3/LeonSinksBlackWtrMay05.jpg',
      country: 'Wikipedia',
      location: 'Black Water River'),
  Terminology(
      id: 'a6',
      geoTerm: 'Breccia',
      description:
          'a clastic deposit consisting of angular clasts (fragments), commonly embedded in finer material. ',
      imageUrl:
          'https://ars.els-cdn.com/content/image/3-s2.0-B9780128205853000090-f09-13-9780128205853.jpg',
      country: 'Rome, Italy',
      location: 'ALEX STREKEISEN'),
  Terminology(
      id: 'a7',
      geoTerm: 'Fault',
      description:
          'A fracture which has experienced translation or movement of the fracture walls parallel to the plane of the fracture. ',
      imageUrl:
          'http://www.geologypage.com/wp-content/uploads/2017/10/What-Is-a-Geologic-Fault-GeologyPage.jpg',
      country: 'Paris, France',
      location: 'Geology Page'),
  Terminology(
      id: 'a8',
      geoTerm: 'Catagenesis',
      description:
          'the process by which organic material in sediments is thermally altered by increasing temperature. A temperature range of 50 to 200 °C is implied. ',
      imageUrl:
          'https://ars.els-cdn.com/content/image/3-s2.0-B9780123969729000045-f04-14-9780123969729.jpg',
      country: 'Colorado, USA',
      location: 'ScienceDirect'),
  Terminology(
      id: 'a9',
      geoTerm: 'Geology',
      description:
          '(1) Broadly, the study of Earth and other planetary bodies; (2) legal definition (State of Wisconsin) - a science that involves the study of the Earth and the Earth’s origin, composition, structure and physical history, including the study of natural agents, forces and processes that cause changes in the Earth and the investigation and collection of data concerning the crust and interior of the Earth and the surface and underground gases, solids and fluids that make up the Earth. ',
      imageUrl:
          'https://www.gsi.ie/images/images/geology_word_cloud_source_geologyindotcom_800px.jpg?RenditionID=17',
      country: 'Ireland',
      location: 'Geological Survey'),
  Terminology(
      id: 'a10',
      geoTerm: 'Geothermal system',
      description:
          'A hydrothermal system capable of generating electricity or heat for commercial purposes',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a11',
      geoTerm: 'Groundwater',
      description:
          '1) Generally all water beneath the land surface; 2) sometimes, it is more narrowly defined as phreatic water or water beneath the water table (p ≥ patmospheric). Note: the U. S. Geological survey uses ground water as the noun and ground-water as the adjective.',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a12',
      geoTerm: 'Hydrogeology',
      description:
          '(1) the study of subsurface water, including its physical and chemical properties, geologic environment, its role in geologic processes, natural movement, recovery, contamination, and utilization; (2) the study of groundwater with particular emphasis given to its chemistry, flow systems and relation to the geologic environment (Davis and DeWeist, 1966, p.1). (3) the study of water below the Earth\'s surface (Pinneker, 1983, p.1). Not Commonly geohydrology and hydrogeology are used interchangeably.',
      imageUrl:
          'https://media.springernature.com/original/springer-static/image/prt%3A978-3-319-73568-9%2F8/MediaObjects/978-3-319-73568-9_8_Part_Fig1-161_HTML.png',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a13',
      geoTerm: 'Hydrometer',
      description: 'An instrument that measures the density of water. ',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a14',
      geoTerm: 'Hygroscopic water',
      description:
          'water in the unsaturated zone that so tightly bound to the solid particles that it cannot be removed by gravity or by plant root suction. hypolimnion – the cool, denser bottom layer of water in lake. Compare with epilimnion and thermocline.',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a15',
      geoTerm: 'Marine water',
      description:
          'Water in the ocean (or sea) or groundwater which has recently been part of an ocean (or sea) and which retains the essential chemistry of the ocean water. ',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a16',
      geoTerm: 'Magmatic water',
      description:
          'Water which is part of a magma or which is released from the magma during crystallization. ',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a17',
      geoTerm: 'Mineral water',
      description:
          'Drinking water that contains more than 500 mg/l dissolved inorganic solids.Mineral water is believed by some to be a health benefit. ',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a18',
      geoTerm: 'Meteoric water',
      description:
          'Water that is or has recently been a part of the atmospheric portion of the hydrologic cycle.',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a19',
      geoTerm: 'Mining',
      description:
          'In hydrogeology, this implies extraction of water from a groundwater system which is not currently receiving recharge. ',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
  Terminology(
      id: 'a20',
      geoTerm: 'Matrix',
      description:
          'Rock (or consolidated media) between fractures or dissolution features with no fractures visible to the naked eye',
      imageUrl:
          'https://cdn.britannica.com/s:300x150/76/100076-050-696FA9C8/magnet-Compact-Muon-Solenoid-Large-Hadron-Collider-2007.jpg',
      country: 'Colorado, USA',
      location: 'The Sokoto Basin'),
];
