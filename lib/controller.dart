import 'package:flutter_riverpod/flutter_riverpod.dart';

final usersProvider = StateProvider<List>(
  (ref) => [
    {
      "first_name": "Abhishek",
      "last_name": "Singh",
      "id": 1234,
      "medical_history": [
        {
          "hospital": "Sharda Hospital",
          "date": "20.09.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
        {
          "hospital": "Sharda Hospital",
          "date": "10.09.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
      ]
    },
    {
      "first_name": "Ankit",
      "last_name": "Singh",
      "id": 1234,
      "medical_history": [
        {
          "hospital": "Sharda Hospital",
          "date": "18.09.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
        {
          "hospital": "Sharda Hospital",
          "date": "2.09.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
      ]
    },
    {
      "first_name": "Neil",
      "last_name": "Jack",
      "id": 1234,
      "medical_history": [
        {
          "hospital": "Sharda Hospital",
          "date": "20.07.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
        {
          "hospital": "Sharda Hospital",
          "date": "10.06.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
      ]
    },
    {
      "first_name": "J. S",
      "last_name": "Singh",
      "id": 1234,
      "medical_history": [
        {
          "hospital": "Sharda Hospital",
          "date": "25.09.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
        {
          "hospital": "Sharda Hospital",
          "date": "12.09.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
      ]
    },
    {
      "first_name": "K. M",
      "last_name": "John",
      "id": 1234,
      "medical_history": [
        {
          "hospital": "Sharda Hospital",
          "date": "15.08.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
        {
          "hospital": "Sharda Hospital",
          "date": "20.05.2023",
          "problem": "Fever, Cough and Cold",
          "symptoms": ["Sneezing", "Running nose", "Sore throat"],
          "treatment": [
            "Sip warm liquids",
            "Salt water gargle",
            "Saline nasal drops or sprays"
          ],
          "observation": ""
        },
      ]
    }
  ],
);
