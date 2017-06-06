CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["IQ1wTFWidzNAMKxP4V7aZ863tteFcZC_G3vDnZaF"]
  config.qiniu_secret_key    = ENV["9vXBTbL9bMDvR5MYRzRtojU08XCBE0Iulip-nsYd"]
  config.qiniu_bucket        = ENV["jdstore-demo"]
  config.qiniu_bucket_domain = ENV["oqcznx0x7.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up-z1.qiniu.com"  #选择不同的区域时，"up.qiniug.com" 不同

end
