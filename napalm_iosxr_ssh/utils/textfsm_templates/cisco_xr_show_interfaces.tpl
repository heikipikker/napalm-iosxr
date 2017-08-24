Value Required INTERFACE (\S+)
Value LINK_STATUS (\w+)
Value ADMIN_STATE (\S+)
Value HARDWARE_TYPE (\w+)
Value ADDRESS ([a-zA-Z0-9]+.[a-zA-Z0-9]+.[a-zA-Z0-9]+)
Value BIA ([a-zA-Z0-9]+.[a-zA-Z0-9]+.[a-zA-Z0-9]+)
Value DESCRIPTION (.*)
Value IP_ADDRESS (\d+\.\d+\.\d+\.\d+\/\d+)
Value MTU (\d+)
Value DUPLEX (.+?)
Value SPEED (.+?)
Value BANDWIDTH (\d+\s+\w+)
Value ENCAPSULATION (\w+)

Start
  ^${INTERFACE}\sis\s+${LINK_STATUS},\s+line\sprotocol\sis\s+${ADMIN_STATE}
  ^\s+Hardware\s+is\s+${HARDWARE_TYPE}(\s+)?(Ethernet)?(,)?(\s+address\s+is\s+${ADDRESS}\s+\(bia\s+${BIA})?
  ^\s+Description:\s+${DESCRIPTION}
  ^\s+Internet\s+Address\s+is\s+${IP_ADDRESS}
  ^\s+MTU\s+${MTU}.*BW\s+${BANDWIDTH}
  ^\s+${DUPLEX}, ${SPEED},.+link 
  ^\s+Encapsulation\s+${ENCAPSULATION}
  ^\s+Last -> Record