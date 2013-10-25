# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
if DeviceType.all.empty?
  device_types = DeviceType.create([
    {:name => "Actuator"},
    {:name => "Analysis"},
    {:name => "CommDTM"},
    {:name => "Controler"},
    {:name => "Converter"},
    {:name => "Display"},
    {:name => "Drive"},
    {:name => "Flow"},
    {:name => "Gateway"},
    {:name => "Generic"},
    {:name => "Level"},
    {:name => "Motor Control"},
    {:name => "PC Interface"},
    {:name => "Positioner"},
    {:name => "Pressure"},
    {:name => "Profile"},
    {:name => "Remote I/O"},
    {:name => "Temperature"},
    {:name => "Valve"}])
end
if Protocol.all.empty?
  protocols = Protocol.create([
    {:name => "CANopen"},
    {:name => "Foundation Fieldbus"},
    {:name => "HART"},
    {:name => "Interbus"},
    {:name => "Modbus"},
    {:name => "PROFIBUS"},
    {:name => "Others"}])
end
if Manufacturer.all.empty?
  manufacturers = Manufacturer.create([
    {:name => "ABB Automation Products GmbH"},
    {:name => "Aplisens S.A."},
    {:name => "AUMA"},
    {:name => "Azbil Corporation"},
    {:name => "BIFFI Italia"},
    {:name => "CodeWrights GmbH"},
    {:name => "Detector Electronics Corporation"},
    {:name => "Dräger"},
    {:name => "Dresser Inc."},
    {:name => "Emerson Process Management"},
    {:name => "Endress+Hauser"},
    {:name => "Festo AG & Co. KG"},
    {:name => "Flexim GmbH"},
    {:name => "Flowserve"},
    {:name => "Fluid Components"},
    {:name => "Foxboro"},
    {:name => "Foxboro Eckardt GmbH"},
    {:name => "GE"},
    {:name => "Hach Lange GmbH"},
    {:name => "Hans Turck GmbH"},
    {:name => "HIMA"},
    {:name => "Hiprom Technologies"},
    {:name => "Hirschmann Automation and Control GmbH"},
    {:name => "HMS Industrial Networks AB"},
    {:name => "Honeywell"},
    {:name => "ICS GmbH"},
    {:name => "Ifm electronic GmbH"},
    {:name => "Ifak system GmbH"},
    {:name => "Klay Instruments b.v."},
    {:name => "KROHNE"},
    {:name => "MACTek Corp"},
    {:name => "Magnetrol"},
    {:name => "Metso"},
    {:name => "M&M Software GmbH"},
    {:name => "Moeller GmbH"},
    {:name => "MOLEX (Woodhead Software & Electronics)"},
    {:name => "Nihon Koso Co., Ltd."},
    {:name => "Omron Europe BV"},
    {:name => "Optek-Danulat"},
    {:name => "Pepperl+Fuchs"},
    {:name => "Phoenix Contact GmbH & Co. KG"},
    {:name => "ProSoft Technology Inc."},
    {:name => "Rockwell Automation"},
    {:name => "Rotork"},
    {:name => "SAMSON AG"},
    {:name => "Schneider Electric"},
    {:name => "Siemens AG"},
    {:name => "Smar Equipamentos Ind. Ltda."},
    {:name => "Softing AG"},
    {:name => "Stahl Schaltger"},
    {:name => "Trebing & Himstedt Prozeßautomation GmbH & Co. KG"},
    {:name => "Tyco Valves & Controls"},
    {:name => "VEGA Grieshaber KG"},
    {:name => "Weidmuller"},
    {:name => "Westlock Controls"},
    {:name => "Yokogawa Electric Corporation"}])
end
if OS.all.empty?
  oses = OS.create([
    { :name => "XP" },
    { :name => "Vista" },
    { :name => "Windows 7" },
    { :name => "Windows Server 2003" },
    { :name => "Windows Server 2008" },
  ])
end
