$cwd=Split-Path -Parent -Path $MyInvocation.MyCommand.Definition # Directory of script
Expand-Archive -Path "$cwd\McafeeRemover.zip" -Destination "$cwd\McafeeRemover" -Force

Write-Host "Starting Uninstall"
Start-Process "$cwd\McafeeRemover\McafeeRemover\mccleanup.exe" -ArgumentList "-p StopServices,MFSY,PEF,MXD,CSP,Sustainability,MOCP,MFP,APPSTATS,Auth,EMproxy,FWdiver,HW,MAS,MAT,MBK,MCPR,McProxy,McSvcHost,VUL,MHN,MNA,MOBK,MPFP,MPFPCU,MPS,SHRED,MPSCU,MQC,MQCCU,MSAD,MSHR,MSK,MSKCU,MWL,NMC,RedirSvc,VS,REMEDIATION,MSC,YAP,TRUEKEY,LAM,PCB,Symlink,SafeConnect,MGS,WMIRemover,RESIDUE -v -s" -Wait
Write-Host "Done!"
