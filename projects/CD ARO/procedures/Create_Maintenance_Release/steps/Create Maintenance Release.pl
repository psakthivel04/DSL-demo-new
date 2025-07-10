use strict;
use warnings;
use XML::Simple;
use XML::XPath;
use Data::Dumper;
use ElectricCommander;

my $ec = new ElectricCommander({timeout => '600', debug => 1});

my $startDate="$[start_date]";
my $endDate="$[end_date]";
my $relName = "$[releaseVersion]";
my $projName = "$[projectName]";
my $pipeName = "Unified Release Template";


my $out = $ec->createRelease({releaseName => $relName, 
                          projectName => $projName, 
                          pipelineName => $pipeName, 
                          pipelineProjectName => $projName, 
                          plannedEndDate => $endDate, 
                          plannedStartDate =>$startDate});

my $releaseName = $out->findvalue('//releaseName')->value();
my $releaseId =  $out->findvalue('//releaseId')->value();


my $link = 'https://artemis.nimbus.beescloud.com/flow/#releases/' . $releaseId;
$ec->setProperty('/myJob/report-urls/Created release ' . $relName, $link);


#if ('$[/myJob/flowRuntimeStateId]' != ''){
#  $ec->setProperty("/myStageRuntime/ec_summary/" . $releaseName, '<html><a href="https://artemis.nimbus.beescloud.com/flow/#releases/' . $releaseId . '" title="" #target="_blank">link to created ' . $releaseName . ' release</a></html>');
#
#}


my ($year, $month) = split /\./, $relName;
$ec->tagObject({releaseName => $relName, 
                projectName => $projName,
                tag => "release_" . $year . "_" . $month});
