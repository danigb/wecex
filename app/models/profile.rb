class Profile < ActiveRecord::Base
  belongs_to :user

  SINO = ['s', 'n']
  TAN = ['todas', 'alguna', 'ninguna']
  
  EDIFICIO_PERIODO = ['antes1950', 'de1951a1960', 'de1961a1970', 'de1971a1980', 'despues1981']

  VIVIENDA_TIPO_EDIFICIO = ['bloque', 'aislado', 'adosado', 'pareado']
  VIVIENDA_PLANTA = ['planta_baja', 'planta_intermedia', 'planta_ultima']
  VIVIENDA_TEJADO = ['tejado_plano', 'tejado_inclinado']
  VIVIENDA_REFORMAS = %w(aistejado aisparedes toldos doblevidrio asisuelo)
  VIVIENDA_REFORMA_ULTIMA = ['menos5', 'entre5y10', 'mas10']

  EQUIP_SERVICIOS = %w(calef aire agua)
  EQUIP_FUENTES = %w(electr gasnat gasoleo gasbutprop solar madera otros)

  EQUIP_AGUA_TIPO = ['termo', 'caldera', 'bomba']
  EQUIP_AGUA_CALDERA_TIPO =['individual', 'centralizada']
  EQUIP_DISPOSITIVOS = ['lavadora', 'lavavajillas', 'frigorífico', 'hornoel' 'hornonoel', 'microondas',
    'television', 'ordenador', 'portatil', 'secadora', 'congelador']
  EQUIP_ILUMINACION = ['incan', 'bajocon', 'fluor']
  EQUIP_AC_DONDE = ['salas', 'dormitorios']
end
