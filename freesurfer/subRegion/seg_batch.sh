for subj_path in freesurfer/sub*; do 
	subj=`basename $subj_path`
	echo "todo".$subj >> run-seg.log
	echo `date` >> run-seg.log
	segment_subregions hippo-amygdala --cross $subj --out-dir ./output/$subj --temp-dir ./temp  --threads 8
done

