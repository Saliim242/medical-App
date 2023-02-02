class Doctor {
  String? doctorName;
  String? doctorSpecialty;
  String? doctorRating;
  String? doctorHospital;
  String? doctorNumberOfPatient;
  String? doctorYearOfExperience;
  String? doctorDescription;
  String? doctorPicture;
  String? imageTag;
  String? textTag;

  Doctor({
    this.doctorName,
    this.doctorSpecialty,
    this.doctorRating,
    this.doctorHospital,
    this.doctorNumberOfPatient,
    this.doctorYearOfExperience,
    this.doctorDescription,
    this.doctorPicture,
    this.imageTag,
    this.textTag,
  });
}

// All Doctor List
var topDoctors = [
  // Doctor 1
  Doctor(
    doctorName: 'Dr. Gilang Segara Bening',
    doctorSpecialty: 'Surgeon',
    doctorRating: '4.8',
    doctorHospital: 'Persahabatan Hospital',
    doctorNumberOfPatient: '1221',
    doctorYearOfExperience: ' 3',
    doctorDescription:
        'is one of the best doctors in the Persahabat Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
    doctorPicture: 'images/img-men-01.png',
    imageTag: 'Galang',
    textTag: 'segar',
  ),
  // Doctor 2
  Doctor(
    doctorName: 'dr. Shabil Chan',
    doctorSpecialty: 'Dental',
    doctorRating: '4.7',
    doctorHospital: 'Columbia Asia Hospital',
    doctorNumberOfPatient: '964',
    doctorYearOfExperience: ' 4',
    doctorDescription:
        'is one of the best doctors in the Columbia Asia Hospital. He has saved more than 900 patients in the past 4 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
    doctorPicture: 'images/img-women-01.png',
    imageTag: 'chan',
    textTag: 'shabil',
  ),
  // Doctor 3
  Doctor(
    doctorName: 'dr. Mustakim',
    doctorSpecialty: 'Eye',
    doctorRating: '4.9',
    doctorHospital: 'Salemba Carolus Hospital',
    doctorNumberOfPatient: '762',
    doctorYearOfExperience: ' 5',
    doctorDescription:
        'is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 700 patients in the past 5 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
    doctorPicture: 'images/img-men-02.png',
    imageTag: 'Eye',
    textTag: 'mustakim',
  ),
  // Doctor 4
  Doctor(
    doctorName: 'dr. Suprihatini',
    doctorSpecialty: 'Lungs',
    doctorRating: '4.8',
    doctorHospital: 'Salemba Carolus Hospital',
    doctorNumberOfPatient: '1451',
    doctorYearOfExperience: ' 6',
    doctorDescription:
        'is one of the best doctors in the Salemba Carolus Hospital. He has saved more than 1400 patients in the past 6 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
    doctorPicture: 'images/img-women-02.png',
    imageTag: 'lungs',
    textTag: 'supri',
  ),
  // Doctor 5
  Doctor(
    doctorName: 'dr. Robert Posy',
    doctorSpecialty: 'Children',
    doctorRating: '4.6',
    doctorHospital: 'Kariadi Hospital',
    doctorNumberOfPatient: '551',
    doctorYearOfExperience: ' 3',
    doctorDescription:
        'is one of the best doctors in the Kariadi Carolus Hospital. He has saved more than 500 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
    doctorPicture: 'images/img-men-03.png',
    imageTag: 'posy',
    textTag: 'roperto',
  ),
  // Doctor 6
  Doctor(
    doctorName: 'dr. Matilde Hani',
    doctorSpecialty: 'Heart',
    doctorRating: '4.7',
    doctorHospital: 'Wiloso Hospital',
    doctorNumberOfPatient: '888',
    doctorYearOfExperience: ' 4',
    doctorDescription:
        'is one of the best doctors in the Wiloso Hospital. He has saved more than 800 patients in the past 4 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
    doctorPicture: 'images/img-women-03.png',
    imageTag: 'hani',
    textTag: 'heart',
  ),
];
