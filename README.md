# PowerShellScript.RemoveNodesXML
Remove Nodes from an XML file
This powershell script was used to delete nodes from large XML files for a customer who wanted to remove significant portions of information from a large tooling repository. 

The file name is set to a variable to allow this to be used when specifying the location of the file to be used and where it should be saved. 

The script requests the XML file then specifies for each occurance of a node, the node should be removed from the XML. 

The an XML file is then saved to a location with a specified name. In this case, the same name as the origial file, but this does not overwrite the original file in the event the customer changes their mind or requests data be kept. 
