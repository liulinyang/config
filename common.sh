# Upload file to ftp server via curl 
curl -T Screenshots.zip -u test:testtest ftp://10.204.16.2/home/ics/kevin/


# Using wget to download the directory from ftp server and only keep the last part of URL as the local folder name
wget --no-verbose --no-parent --recursive --user=test --password=testtest --no-host-directories --cut-dirs=6 ftp://10.204.16.2/Build/ICSS/1.2/centos6_64/en/Rel/1143/
