
for dir in ./T1Raw/*/
do

sbid=${dir#"./T1Raw/"}
sbid="${sbid%%/}"

echo  ${sbid}
mkdir ./T1Img/${sbid}
echo "/TJ_data/zhangwei/dev/dcm2niix_linux  -b y -x y -z n -o ./T1Img/${sbid}  ${dir}"


/TJ_data/zhangwei/dev/dcm2niix_linux  -b y -x y -z n -o ./T1Img/${sbid}  ${dir}

#/TJ_data/mri_data/kits/dcm2niix_linux  -b y -x y -z n -o ./T1Img/${sbid}  ${dir}
#/opt/DPABI/DPARSF/dcm2nii/dcm2niix_linux -b y -x y -z n -o ./T1Img/${sbid}  ${dir}

done
