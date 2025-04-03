for dir in ./T1Img/*/

do
   subid=${dir#"./T1Img/"}
   echo "${subid}--->"
   mri_id=${subid%%/}
   ls -l ./freesurfer/${mri_id}/stats/aseg.stats
   ls -l ./freesurfer/${mri_id}/surf|wc -l
   ls -l ./freesurfer/${mri_id}/mri|wc -l
   ls -l ./freesurfer/${mri_id}/scripts/recon-all.done
   ls -l ./freesurfer/${mri_id}/scripts/IsRunning*
   # do whatever on $i
done
