# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
Ensayo.create([{
name: Faker::Name.name,
  }])
end


Ensayo.populate 100 do | e |
    e.name = Faker::Name.name
end


MedicalCenterType.create([{
name: 'Hospital',
description: 'Establecimiento destinado para la atención y asistencia a enfermos por medio de personal médico, enfermería, personal auxiliar y de servicios técnicos durante 24 horas, 365 días del año y disponiendo de tecnología, aparatología, instrumental y farmacología adecuadas.'
  }])

MedicalCenterType.create([{
  name: 'Clinica',
  description: 'Establecimiento destinado a proporcionar asistencia o tratamiento médico a determinadas enfermedades.'
    }])

MedicalCenterType.create([{
    name: 'Sanatoriom',
    description: 'Un sanatorio es un centro de salud que, de acuerdo al país, puede especializarse en diferentes cuestiones. Se trata de un lugar donde los pacientes que sufren diversos trastornos y enfermedades son atendidos y pueden someterse a distintos tratamientos.'
      }])

MedicalCenterType.create([{
  name: 'Dispensario',
  description: 'Establecimiento destinado a proporcionar asistencia o tratamiento médico, generalmente gratuitos, a pacientes cuya enfermedad no les impide salir de casa.'
        }])

MedicalCenterType.create([{
    name: 'Salita',
    description: 'Es la Asistencia Sanitaria basada en métodos y tecnologías sencillas, científicamente fundamentadas y socialmente aceptables, que estén al alcance de los individuos, familias y comunidad; a un costo aceptable por la comunidad y el país para que pueda cubrir cada una de las etapas del desarrollo'
          }])


WorkerType.create([{
    name: 'Medico',
    description: 'Los Médicos previenen, diagnostican y tratan diversas enfermedades para mejorar la salud general de sus pacientes.'
    }])

WorkerType.create([{
    name: 'Enfermero',
    description: 'Enfermera es aquella persona que se dedica al cuidado personal e intensivo de un paciente, ya sea en el centro hospitalario o de salud como en su domicilio particular.'
         }])

WorkerType.create([{
          name: 'Chofer',
          description: 'Es una persona capacitada para conducir el mecanismo de dirección o va al mando de un vehículo de motor contratada para transportar a personas.'
          }])


          Worker.create([{
                      first_name: Faker::Name.name,
                      last_name:  Faker::Name.name,
                      phone_number: Faker::PhoneNumber,
                      email: Faker::Internet.email,
                      worker_type_id: 1
                        }])

                        Worker.create([{
                                    first_name: Faker::Name.name,
                                    last_name:  Faker::Name.name,
                                    phone_number: Faker::PhoneNumber,
                                    email: Faker::Internet.email,
                                    worker_type_id: 1
                                      }])


          Worker.create([{
                        first_name: Faker::Name.name,
                last_name:  Faker::Name.name,
              phone_number: Faker::PhoneNumber,
              email: Faker::Internet.email,
            worker_type_id: 2
                }])

          Worker.create([{
          first_name: Faker::Name.name,
          last_name:  Faker::Name.name,
          phone_number: Faker::PhoneNumber,
                email: Faker::Internet.email,
                    worker_type_id: 2
                                        }])


        Worker.create([{
                        first_name: Faker::Name.name,
                                  last_name:  Faker::Name.name,
                                phone_number: Faker::PhoneNumber,
                            email: Faker::Internet.email,
                                            worker_type_id: 4
                                        }])


    Worker.create([{
                  first_name: Faker::Name.name,
                  last_name:  Faker::Name.name,
                  phone_number: Faker::PhoneNumber,
                  email: Faker::Internet.email,
                  worker_type_id: 4
            }])



            MedicalCenter.create([{
                          name: Faker::Name.name,
                          description:  Faker::String,
                          address: Faker::Address,
                          phone_number: Faker::PhoneNumber,
                          medical_center_type_id: 1
                    }])
                    MedicalCenter.create([{
                                  name: Faker::Name.name,
                                  description:  Faker::String,
                                  address: Faker::Address,
                                  phone_number: Faker::PhoneNumber,
                                  medical_center_type_id: 1
                            }])
                            MedicalCenter.create([{
                                          name: Faker::Name.name,
                                          description:  Faker::String,
                                          address: Faker::Address,
                                          phone_number: Faker::PhoneNumber,
                                          medical_center_type_id: 2
                                    }])
                                    MedicalCenter.create([{
                                                  name: Faker::Name.name,
                                                  description:  Faker::String,
                                                  address: Faker::Address,
                                                  phone_number: Faker::PhoneNumber,
                                                  medical_center_type_id: 3
                                            }])
