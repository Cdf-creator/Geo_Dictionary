class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "The upper mantle is mainly composed of what kind of mineral?",
    "options": [
      "Corundum",
      "Amphibolite",
      "Peridotite",
      "Ilite",
    ],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Orogeny is the process of?",
    "options": [
      "Volcanic Eruption",
      "Sea Floor Spreading",
      "Mountain Building",
      "Continental Drift",
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
        "The concept that continental crust moved relatively slowly on the earth's surface over a period of time was proposed by?",
    "options": [
      "J. Tuco Wilson",
      "William Smith",
      "James Hutton",
      "Alfred Wegener",
    ],
    "answer_index": 4,
  },
  {
    "id": 4,
    "question": "Minerals exhibit the following characteristics except?",
    "options": [
      "Habit",
      "Conductivity",
      "Lustre",
      "Hardness",
    ],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "The upper mantle is mainly composed of what kind of mineral?",
    "options": [
      "Corundum",
      "Amphibolite",
      "Peridotite",
      "Ilite",
    ],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "A gentle eruption of volcanic gases is termed?",
    "options": [
      "Diffusive",
      "Effusive",
      "Radiative",
      "All of the above",
    ],
    "answer_index": 2,
  },
  {
    "id": 1,
    "question": "The upper mantle is mainly composed of what kind of mineral?",
    "options": [
      "Corundum",
      "Amphibolite",
      "Peridotite",
      "Ilite",
    ],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question":
        "Pertaining to earth tremor what are the two categories of primary wave?",
    "options": [
      "Tidal waves and Body waves ",
      "Body waves and Love waves",
      "Body waves and surface waves",
      "Rayleigh waves and Love waves",
    ],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "The oldest eon in the geologic time scale is?",
    "options": [
      "Proterozoic",
      "Phanerozoic",
      "Archean",
      "Hadeon",
    ],
    "answer_index": 4,
  },
  {
    "id": 11,
    "question":
        "A body of rock of considerable thickness with mappable characteristics is known to be?",
    "options": [
      "An Outcrop",
      "An Exposure",
      "A Formation",
      "A Strata",
    ],
    "answer_index": 3,
  },
  {
    "id": 12,
    "question":
        "The process by which sediments are compacted and cemented together to form new minerals or rocks is called?",
    "options": [
      "Diagenesis",
      "Lithification",
      "Diagenesis",
      "Weathering",
    ],
    "answer_index": 2,
  },
  {
    "id": 13,
    "question": "Ground water exploration is mostly done using?",
    "options": [
      "Seismic Method",
      "Electrical Method",
      "Magnetic Method",
      "Gravitational Method",
    ],
    "answer_index": 2,
  },
  {
    "id": 14,
    "question":
        "Alfred Wegener proposed the following concept pertaining to his discovery of continental drift except?",
    "options": [
      "Continental Fit",
      "Fossil similarity",
      "Sea Floor Spreading",
      "None of the above",
    ],
    "answer_index": 3,
  },
  {
    "id": 15,
    "question": "Seismic waves can be measured using?",
    "options": [
      "Gravimeter",
      "Hydrometer",
      "Seismometer",
      "Barometer",
    ],
    "answer_index": 3,
  },
  {
    "id": 16,
    "question":
        "The lowest level of the atmosphere characterized by convection and a significant change in temperature is known as?",
    "options": [
      "Ionosphere",
      "Troposhere",
      "Exosphere",
      "Thermosphere",
    ],
    "answer_index": 2,
  },
  {
    "id": 17,
    "question": "The visible part of the sun is ?",
    "options": [
      "Photosphere",
      "Chromosphere",
      "Heliosphere",
      "Corona",
    ],
    "answer_index": 1,
  },
  {
    "id": 18,
    "question": "Which planet is known as the earth's twin?",
    "options": [
      "Uranus",
      "Neptune",
      "Mars",
      "Venus",
    ],
    "answer_index": 4,
  },
  {
    "id": 20,
    "question": "Volcanic hazards are of the following except?",
    "options": [
      "Environmental Pollution",
      "Damaging of crops",
      "Emission of poisonous gases",
      "None of the above",
    ],
    "answer_index": 4,
  },
  {
    "id": 21,
    "question": "What are two major belt in the solar system?",
    "options": [
      "Kuiper belt and Asteroid belt",
      "Asteroid belt and Transition belt",
      "Comet belt and Kuiper belt",
      "Comet belt and Transition belt",
    ],
    "answer_index": 1,
  },
  {
    "id": 22,
    "question": "The study of soil is called?",
    "options": [
      "Paleontology",
      "Pedology",
      "Petrography",
      "Petrology",
    ],
    "answer_index": 2,
  },
  {
    "id": 23,
    "question":
        "A geologist responsible for the cutting, shaping, and beautification of gemstones is called?",
    "options": [
      "Physicist",
      "Stratigrapher",
      "Lapidary",
      "None of the above",
    ],
    "answer_index": 3,
  },
  {
    "id": 24,
    "question":
        "The thickness of sediments of the same composition which are deposited under the same condition is referred to as?",
    "options": [
      "Bed",
      "Bedding Plane",
      "Ripple Mark",
      "Cross Bedding",
    ],
    "answer_index": 1,
  },
  {
    "id": 25,
    "question":
        "The point directly above the region where earth tremor originates is called?",
    "options": [
      "Focus",
      "Epicenter",
      "Fault",
      "Joint",
    ],
    "answer_index": 2,
  },
  {
    "id": 26,
    "question": "All are organisms living in the neritic zone except?",
    "options": [
      "Diatoms",
      "Plankton",
      "Sponges",
      "Eels",
    ],
    "answer_index": 1,
  },
  {
    "id": 27,
    "question": "All are examples of mountain range except?",
    "options": [
      "Himalayas",
      "Appalanchian",
      "Tundra",
      "Andes",
    ],
    "answer_index": 3,
  },
  {
    "id": 28,
    "question": "All are examples of radioactive elements except?",
    "options": [
      "Polonium",
      "Platinum",
      "Uranium",
      "Plutonium",
    ],
    "answer_index": 2,
  },
  {
    "id": 29,
    "question": "The following are the principles of stratigraphy except?",
    "options": [
      "Law of Super Position",
      "Law of Original Horizontality",
      "Law of Cross-Cutting Relationship",
      "Law of Lateral Displacement",
    ],
    "answer_index": 4,
  },
  {
    "id": 30,
    "question": "The lowest level of the ocean is called?",
    "options": [
      "Pelagic zone",
      "Neritic zone",
      "Benthic zone",
      "Lithoral zone",
    ],
    "answer_index": 3,
  },
];
