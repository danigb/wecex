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
  EQUIP_TIPO_IC =['individual', 'centralizada']
  EQUIP_DISPOSITIVOS = ['lavadora', 'lavavajillas', 'frigo', 'hornoel', 'hornonoel', 'microondas',
    'tele', 'ordenador', 'portatil', 'secadora', 'congelador']
  EQUIP_ILUMINACION = ['incan', 'bajocon', 'fluor']
  EQUIP_DONDE = ['salas', 'dormitorios']
  EQUIP_AC_TIPO = ['caldera', 'bomba', 'radiador', 'acumulad']
  EQUIP_BOMBA_TIPO = ['uneq', 'varioseq']
end
