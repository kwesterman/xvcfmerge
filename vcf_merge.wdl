workflow xVCFMergeWorkflow {
	call xVCFMerge
}

task xVCFMerge {
	String input_files
	String output_file
	runtime {
	    docker: "xbrianh/xsamtools:v0.5.0"
		memory: "64G"
		cpu: "8"
	}
	command {
		xsamtools vcf merge --inputs ${input_files} --output ${output_file}
	}
}
