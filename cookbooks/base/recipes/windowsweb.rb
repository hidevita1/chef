############
## Apache“±“ü
############
##install
#vc
windows_package node["apache"]["vc_pkg"]
  source "C:\\download\\vcredist_x64.exe"
  installer_type : custom
  option '/q'
  not_if {::Fille.exists?(::File.join(node["apache"]["vc_path"]),'msdia90.dll')}
end

