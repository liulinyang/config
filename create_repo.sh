# download RPM build 
#
# usage: create_repo.sh <buildNO>
#
cd /var/ftp/pub/kevin/

wget --no-verbose --no-parent --recursive --user=test --password=testtest --no-host-directories --cut-dirs=6 ftp://10.204.16.2/Build/ICSS/1.2/centos6_64/en/Rel/1143/

# create yum group
yum-groups-manager -n "Kevin's group" --id=kevingroup --save=mygroups.xml --mandatory yum glibc rpm

# create yum repo
createrepo -g /var/ftp/pub/kevin/mygroups.xml /var/ftp/pub/kevin/1143/Release/Output/Base/ -v
createrepo -g /var/ftp/pub/kevin/mygroups.xml /var/ftp/pub/kevin/1143/Release/Output/RPM/ -v

cd -
