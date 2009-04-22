class Profile < ActiveRecord::Base
  belongs_to :user

  EQUIP_SERVICIOS = %w(calef aire agua)
  EQUIP_FUENTES = %w(electr gasnat gasoleo gasbutprop solar madera otros)

  EDIFICIO_PERIODO = ['antes1950', 'de1951a1960', 'de1961a1970', 'de1971a1980', 'despues1981']
  VIVIENDA_TIPO_EDIFICIO = ['bloque', 'aislado', 'adosado', 'pareado']
  VIVIENDA_PLANTA = ['planta_baja', 'planta_intermedia', 'planta_ultima']

  VIVIENDA_REFORMAS = %w(aistejado aisparedes toldos doblevidrio asisuelo)
  VIVIENDA_REFORMA_ULTIMA = ['menos5', 'entre5y10', 'mas10']
end
