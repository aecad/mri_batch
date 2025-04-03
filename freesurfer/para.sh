#mkdir freesurfer
cd T1Img

ls */*Crop* |rust-parallel --jobs 20   -r '(.*)\/(.*)'  --shell  "echo 'recon-all -all -openmp 4 -subjid {1}  -sd ../freesurfer -i `pwd`/{0}' "
ls */*Crop* |rust-parallel --jobs 15   -r '(.*)\/(.*)'  --shell  "recon-all -all -openmp 4 -subjid {1}  -sd ../freesurfer -i `pwd`/{0}"

#ls */*Crop* |parallel --jobs 20  "echo 'recon-all -all -openmp 4 -subjid {//}  -sd ../freesurfer -i `pwd`/{}'"
#ls */*Crop* |parallel --jobs 15  "recon-all -all -openmp 4 -subjid {//}  -sd ../freesurfer -i `pwd`/{}"
pwd
ls ../freesurfer -l
date
