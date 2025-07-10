import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.PipelineParameter

ElectricFlow ef = new ElectricFlow()

def relName = "$[releaseVersion]"
def projName = "$[projectName]"
def pipeName = "Unified Release Template"
def k8sBranch = "$[k8s_branch]"
def jiraFixVersion = "$[jira_fix_version]"
def ltsReleaseVersion = "$[lts_release_version]"
def params = [
        new PipelineParameter('be_branch', ltsReleaseVersion),
        new PipelineParameter('jira_fix_version', jiraFixVersion),
        new PipelineParameter('ui_branch', "release-" + ltsReleaseVersion),
        new PipelineParameter('be_gitBranch_nimbus', "release-" + ltsReleaseVersion),
        new PipelineParameter('k8s_branch', k8sBranch),
        new PipelineParameter('run_on_mssql', "true"),
        new PipelineParameter('run_on_mysql', "true"),
        new PipelineParameter('run_on_oracle', "true"),
        new PipelineParameter('run_on_postgresql', "true"),
        new PipelineParameter('run_qe_regression', "true"),
        new PipelineParameter('art_ui_branch', ltsReleaseVersion),
        new PipelineParameter('art_branch', ltsReleaseVersion),
        new PipelineParameter('run_qe_upgrade', "true"),
        new PipelineParameter('run_qe_import', "true"),
        new PipelineParameter('run_qe_performance', "true"),
        new PipelineParameter('run_qe_k8s', "true"),
        new PipelineParameter('run_qe_security', "true"),
        new PipelineParameter('build_docs', "true"),
        new PipelineParameter('docs_branch', "main"),
        new PipelineParameter('release_docker_image', "true"),
        new PipelineParameter('release_cd_charts', "true"),
        new PipelineParameter('release_sda_charts', "true"),        
  
        ]                          


def result =  ef.startRelease(projectName: projName, releaseName: relName, pipelineParameters: params)

println('Release started: ' + result?.flowRuntime?.flowRuntimeId)

ef.setProperty(propertyName: '/myJob/report-urls/' + relName + ' release runtime', value: "https://artemis.nimbus.beescloud.com/flow/#pipeline-run/" + result?.flowRuntime?.pipelineId + "/" + result?.flowRuntime?.flowRuntimeId + "/" + result?.flowRuntime?.releaseId)

