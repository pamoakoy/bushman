<?php
//Given a directory of images, make a batch of jobs
//Usage:
//bossa_transcribe_make_jobs.php options
//--dir dir

$app_name = "segment";
$cli_only = true;

require_once("../inc/bossa.inc");
require_once("../inc/util_ops.inc");

function make_job($path, $batchid, $appid) {
	$info = null;
	$info->path = $path;

	if (!bossa_job_create($appid, $batchid, $info, false)) {
	    exit("bossa_create_job() failed\n");
	}
	echo "created job for $path\n";
}

function make_jobs($dir, $appid) {
	$batchid = bossa_batch_create($appid, date(DATE_RFC822), false);
	if (!$batchid) {
	    exit("bossa_create_batch() failed\n");
	}
	$d = opendir("../user/$dir");
	while($file = readdir($d)) {
	    if (!strstr($file, ".JPG")) continue;
	    make_job("$dir/$file", $batchid, $appid);
	}
	closedir($d);
}

function usage() {
	exit("Usage: bossa_segment_make_jobs.php --dir d\n");
}

for($i=1; $i<$argc; $i++) {
	if ($argv[$i] == '--dir') $dir = $argv[++$i];
	else usage();
}

if (!$dir) usage();

if (!is_dir("../xoaxoa/$dir")) {
	exit("../xoaxoa/$dir is not a directory\n");
}

$appid = bossa_app_lookup($app_name);
if (!$appid) exit("No application $app_name\n");

make_jobs($dir, $appid);

?>
