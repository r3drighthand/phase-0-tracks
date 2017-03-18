
bio_hash = {
  circulatory: {
    heart: {
      chambers: [
        "r_ventricle", 
        "l_ventricle", 
        "r_atrium", 
        "l_atrium"
        ]
      },
    blood_cells: [
      "red", 
      "white"
      ],
    arteries: [
      "carotid", 
      "brachial", 
      "subclavian"
      ]
    },
  digestive: {
    stomach: [
      "body", 
      "duodenum", 
      "cardia", 
      "fundus"
      ],
    intestines: [
      "ascending", 
      "transverse", 
      "descending"]
    },
  nervous: {
    brain: [
      "parietal", 
      "frontal", 
      "temporal", 
      "occipital", 
      "cerebellum"
      ],
    nerve: [
      "axon_terminal", 
      "myelin_sheath", 
      "synapse", 
      "dendrite", 
      "axon"
      ]
    },
  respiratory: {
    lungs: [
      "pleura", 
      "alveoli", 
      "r_bronchi", 
      "l_bronchi"
      ],
    larynx: [
      "hyoid", 
      "trachea", 
      "epiglottis", 
      "thyroid", 
      "parathyroid"
      ]
  },
  skeletal: {
    bone_terms: [
      "epiphysis", 
      "diaphysis"
      ],
    bone_list: [
      "skull", 
      "femur", 
      "carpals", 
      "clavicle", 
      "sternum", 
      "ribs", 
      "radius"
      ],
    cartilage: [
      "elastic", 
      "hyaline", 
      "fibrous"
      ]
  }
}
 
bio_hash[:nervous]
bio_hash[:circulatory][:heart][:chambers][1]  
bio_hash[:skeletal][:bone_list][3]
bio_hash[:respiratory][:larynx]
bio_hash[:digestive][:intestines][-2] 