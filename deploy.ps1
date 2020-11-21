#! /usr/bin/pwsh

$folderName = $pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$templateFilePath = ($pwd).Path + "/fargate.yml"

aws cloudformation deploy --template-file $templateFilePath --stack-name $folderName --capabilities CAPABILITY_NAMED_IAM
