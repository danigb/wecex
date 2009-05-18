class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :provincia
  belongs_to :municipio

  SINO = ['s', 'n']
  TAN = ['todas', 'alguna', 'ninguna']
  
  EDIFICIO_PERIODO = ['antes1950', 'de1951a1960', 'de1961a1970', 'de1971a1980', 'de1981a1990', 'de1991a2000', 'post2000']

  VIVIENDA_TIPO_EDIFICIO = ['bloque', 'aislado', 'adosado', 'pareado']
  VIVIENDA_PLANTA = ['planta_baja', 'planta_intermedia', 'planta_ultima']
  VIVIENDA_TEJADO = ['tejado_plano', 'tejado_inclinado']
  VIVIENDA_REFORMAS = %w(aistejado aisparedes toldos doblevidrio asisuelo)
  VIVIENDA_REFORMA_ULTIMA = ['menos5', 'entre5y10', 'mas10']

  EQUIP_SERVICIOS = %w(calef aire agua)
  EQUIP_FUENTES = %w(electr gasnat gasoleo gasbutprop solar madera otros)

  EQUIP_CALE_TIPO = ['caldera', 'radiador', 'bomba', 'acumulad']
  EQUIP_AGUA_TIPO = ['caldera', 'termo', 'bomba'] 
  EQUIP_TIPO_IC =['individual', 'centralizada']
  EQUIP_DISPOSITIVOS = ['lavadora', 'secadora', 'lavavajillas', 'frigo', 'congelador', 'hornoel', 'hornonoel', 'microondas',
    'tele', 'ordenador', 'portatil' ]
  EQUIP_ILUMINACION = ['incan', 'bajocon', 'fluor']
  EQUIP_DONDE = ['salas', 'dormitorios']
  EQUIP_AC_TIPO = ['caldera', 'bomba', 'radiador', 'acumulad']
  EQUIP_BOMBA_TIPO = ['uneq', 'varioseq']
end
