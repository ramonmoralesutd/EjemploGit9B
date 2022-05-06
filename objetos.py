auto = {
    'color': 'Azul',
    'transmision': 'Estandar',
    'marca': 'BMW'
}

autoVW = {
    'color': 'Rojo',
    'transmision' : 'std',
    'marca': 'VW'
}

def autos(auto):
  todos = {
      'n_puertas':'2-5',
      'n_llantas': '4-5',
      'motor':True,
      'n_asientos':'2-8',
      'transmision': ''
  }
  todos.update(auto)

  return print(todos)
  

autos(auto)
print('')
autos(autoVW)