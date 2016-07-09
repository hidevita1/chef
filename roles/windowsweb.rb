 {
        "name" : "Role_base_windowsweb",
        "description": "Role_base_windowsweb",
        "json_class": "Chef::Role",
        "chef_type": "role",
        "default_attributes" : {
            "Role_base_windowsweb" : {
                "apache": {
                    # file
                    "vc_filename" : "vcredist_x64.exe",
                    "apache_filename" : "httpd-2.4.18-x86-vc11.zip",
                    # pkg
                    "vc_pkg" : "Microsoft Visual C++ 2008 Redistribute - x64 9.0.30729",
                    "apache_pkg" : "Apache24",
                    # Directory
                    "vc_path" : "C:\\Program Files\\Common Files\\microsoft shared\\VC\\",
                    "apache_path" : "C:\\Program Files\\Apach24\\",
                    # Log Directory
                    "apache_log" : "C:\\log\\apache",
                    #conf Directory
                    "apache_confpath" : "#{node["apache"]["apache_path"]}conf\\httpd.conf"
                }
            }
        },
        "run_list": [
            "recipe[base::windowsweb]"
        ]
    }