default['macapps']['java']['dmg']['source']      = "http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg"
default['macapps']['java']['dmg']['volumes_dir'] = "Java for OS X 2013-005"
default['macapps']['java']['dmg']['checksum']    = "81e1155e44b2c606db78487ca1a02e31dbb3cfbf7e0581a4de3ded9e635a704e"

default['macapps']['java']['additional'] = {
  'JavaEssentials' => { 'source' => 'http://swcdn.apple.com/content/downloads/21/49/091-7363/o9veiecea89qkdmk94met1af4wu2fuwn2j/JavaEssentials.pkg',
                        'checksum' => '5528a03a0f4ce9f293b72fd18abec57c22dc58d7de54bae2af547f0db18d15bd',
                        'package_id' => 'com.apple.pkg.JavaEssentials' },
  'JavaForOSX' => { 'source' => 'http://swcdn.apple.com/content/downloads/21/49/091-7363/o9veiecea89qkdmk94met1af4wu2fuwn2j/JavaForOSX.pkg',
                    'checksum' => '24712b1cae805985cd3396ee6978fd766b25b1871a74c850beb718e662aa33bb',
                    'package_id' => 'com.apple.pkg.JavaForMacOSX107' },
  'JavaMDNS' => { 'source' => 'http://swcdn.apple.com/content/downloads/21/49/091-7363/o9veiecea89qkdmk94met1af4wu2fuwn2j/JavaMDNS.pkg',
                  'checksum' => '1c6c628c71a5ad3a61896102b946bc7806b7efc301531f763bb6f303202038a6',
                  'package_id' => 'com.apple.pkg.JavaMDNS' },
  'JavaSecurity' => { 'source' => 'http://swcdn.apple.com/content/downloads/21/49/091-7363/o9veiecea89qkdmk94met1af4wu2fuwn2j/JavaSecurity.pkg',
                      'checksum' => '3aa6f5bec79ee94223f0baef8c9a83ee2f2daaf51fa49b4d5d8bcc0f4534b6b8',
                      'package_id' => 'com.apple.pkg.JavaSecurity' }
  }
