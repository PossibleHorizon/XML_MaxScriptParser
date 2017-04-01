
-- ///////////////////////////////////////////////////////////////////////////////////
-- ###############################  Parsing Xml Document  ############################
-- ///////////////////////////////////////////////////////////////////////////////////

struct XmlHelper (

	scriptLoaderFile = (getSourceFileName()),
	currentScriptPath = getFilenamePath(this.ScriptLoaderFile),
	xmlFile = CurrentScriptPath + @"Library.xml",
		
	fn LoadXmlDoc xmlFile =
	(
		local xmlDoc = dotNetObject "System.Xml.XmlDocument"
		xmlDoc.Load xmlFile
		xmlDoc
	),

	fn GetXmlRoot xmlDoc =
	(
		local root = xmlDoc.documentElement
		return root
	),
	
	fn SaveXml xmlDoc xmlFile =
	(
		xmlDoc.Save xmlFile
	),
	
	fn ReadXml  xmlFile xmlDefinition  xmlItem =
	(
		local library =#()	
		local doc = LoadXmlDoc xmlFile
		if doc !=undefined do
		(
			local root = GetXmlRoot doc
			if root != undefined do
			(							
				local definitions = root.GetElementsByTagName xmlDefinition
				for i = 0 to definitions.count - 1 do (			
					local definition = definitions.item i			 			
					local category = definition.GetAttribute "Category" 
								
					local itemInfos =#()
					local libraryItems = #()			
					local xmlItems = definition.GetElementsByTagName xmlItem
					
					for j = 0 to xmlItems.count - 1 do (
						
						local eachItemInfo = #()
						local eachItem = xmlItems.item j
						
						append eachItemInfo (eachItem.GetAttribute "Title")
						append eachItemInfo (eachItem.GetAttribute "Release")
						append eachItemInfo (eachItem.GetAttribute "Price")
						append itemInfos eachItemInfo
					)			
					append libraryItems category
					append libraryItems itemInfos
					append library libraryItems 
				)
			)
		)
		return library
	),
	
	fn AddItemToXml xmlDefinition targetCategory newItem =
	(
		local doc = LoadXmlDoc xmlFile
		if doc !=undefined do
		(
			local root = GetXmlRoot doc
			if root != undefined do
			(
				local newCategory = true
				local definitions = root.GetElementsByTagName xmlDefinition
				
				local element = doc.CreateElement "Item"
				element.SetAttribute "Title" newItem[1]
				element.SetAttribute "Release" newItem[2] 
				element.SetAttribute "Price" newItem[3] 
				
				for i = 0 to definitions.count - 1 do (			
					local definition = definitions.item i			 			
					local currentCategory = definition.GetAttribute "Category" 
					
					if (currentCategory == targetCategory) then 
					(
						definition.AppendChild element
						newCategory = false
					)
				)
				
				if (newCategory) then (
						
					format "Category: %\n" targetCategory 
					
					local newDefination = doc.CreateElement xmlDefinition
					newDefination.SetAttribute "Category" targetCategory
					newDefination.AppendChild element
					
					root.AppendChild newDefination
				)
			)
			SaveXml doc xmlFile
		)
	),
	
	fn ToString xmlData = 
	(
		format "\n"
		for i = 1 to xmlData.count do (
			
			format "Category: = %\n" (xmlData[i][1] as string)
			for j = 1 to xmlData[i][2].count do (
				format "\t Title: % \tRelease:% \tPrice:%\n" xmlData[i][2][j][1] xmlData[i][2][j][2] xmlData[i][2][j][3]
			)
			format "\n"
		)
	)
)

xmlHelperObject = XmlHelper()
if doesfileexist xmlHelperObject.xmlFile do 
(	
	local xmlData = xmlHelperObject.ReadXml  xmlHelperObject.xmlFile "LibraryDefinition" "Item"	
	xmlHelperObject.AddItemToXml "LibraryDefinition" "Movies"  #("Vanila's Sky", "2008", "35")
	xmlHelperObject.ToString xmlData
)
