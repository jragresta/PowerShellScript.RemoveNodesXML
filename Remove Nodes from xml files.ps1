#file of exported TMS components

$FILENAME="Zoller_TU_SO5672S321905L.xml"

$XMLFile = "D:\Downloads\REDO\"+$FILENAME

$SAVE= "D:\Downloads\UPLOAD_OMIC\"+$FILENAME

#content into usable format
$xml = [xml](Get-Content $XMLFile)
#tell it which nodes to identify, then for each node identified, remove the node and child nodes

$xml.SelectNodes('//Component/ComponentGroupTree') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/ComponentGroup/GroupId') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/ComponentGroup') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}

$xml.SelectNodes('//Component/Comment') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}

$xml.SelectNodes('//Component/LongComment') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}

$xml.SelectNodes('//Component/GraphicGroup') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GraphicGroup1') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GraphicGroup2') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GraphicGroup3') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GraphicGroup4') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GraphicGroup5') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GraphicGroup6') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Supplier') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/OrderNo') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/SubjectNo') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/UnitPrice') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/OrderAmount') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Norm') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/ConnectionPoint1') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/ConnectionPoint2') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Weight') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Grade') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Comment') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/InterfaceCodingMachineSide') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/GeneratedInterfaceCodingMachineSide') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/CouplingUseCharacteristic') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/RotationSpeedMax') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Article') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/ExternalDocument') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/Characteristic') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/CuttingMaterial') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/InvMode') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/InvPhysical') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/InvFullCopy') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/StorageBookingList') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/ScalableVectorGraphic') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//Component/LongComment') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//DatasetState') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//InvMode') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//InvPhysical') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//InvFullCopy') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}
$xml.SelectNodes('//StorageBookingList') | ForEach-Object {
    $_.ParentNode.RemoveChild($_)
}

#save the xml with these files removed to this specified location with the following name
$xml.Save("D:\Downloads\UPLOAD_OMIC\"+$FILENAME)