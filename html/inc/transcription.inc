<?php
//@author: ngoni munyaradzi
//@date: 15-November-2011

//transcribe.inc defines the logic for the transcription application "transcribe bushman"
//from this file we excute the transcription interface from kyle "xoaxoa"
//logic to show jobs is defined here.

require_once("../inc/bossa.inc");

//transcribe bushman
//show the user an "image" of segmented bushman text. user then types in equivalent Latex 
//representation of text.

//Display the given job instance to the given user. 
//Return true on success. 
function job_show($job, $inst, $user){
        //include the file: transcription.php
        require_once("../xoaxoa/transcription.php");
	
	//$info = $job->get_opaque_data($job);
	//$path = $info->path;
	
	//user/transcribe_images/A1_4_1_00022-line5-word1.jpg

    
}

function job_issued($job, $inst, $user){
    //to be completed
}

//Called when the given instance has finished. 
function job_finished($job, $inst){
    //record the user's response
}


//Called when the given instance has timed out. 
function job_timed_out($job, $inst, $user){
    $job->set_priority(1); //to complete
}

//Return a short string describing the job, for use in administrative pages. For example,
// this might return an image name hyperlinked to the image. 
function job_summary(){
  //  $info = $job-get_opaque_data();
  //  return "<a href=".URL_BASE."$info->path>View image</a >";
}


//return a string summarizing the opaque data for an instance
function instance_summary($info){
    
}


//return a string summaring the opaque data for a user
function user_summary($user){
    return ""; 
}
?>
