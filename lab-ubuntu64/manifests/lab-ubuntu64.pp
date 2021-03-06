stage { 'first': before => Stage['main'], } # 'main' is the default single stage
class { 'ubuntu::fixes': stage => 'first', } # Ensure basic fixes are installed first

include editor::janus
include editor::sublime3
include editor::vimx
include editor::webstorm
include fonts::microsoft
include iptables::disable
include java::oraclejdk7
include network::htracr
include network::wireshark
include nodejs::base
include timezone::sydney
include vcs::git
include webbrowser::chrome
#include webbrowser::chrome-extension-speedtracer
include webbrowser::firefox
include xwindows::hideerrors

openssl::certificate { 'localhost': }

