
<B>The properties and methods of XML DotNet Object</B>

<B>xmlDoc = dotNetObject "system.xml.xmlDocument"</B>


<br><B>showproperties xmldoc</B></br>
<br>-------------------------------------------------------------------------------<br>
  <br><B>.Attributes</B> : <System.Xml.XmlAttributeCollection>, read-only</br>
  <br><B>.BaseURI</B> : <System.String>, read-only</br> 
  <br><B>.ChildNodes</B> : <System.Xml.XmlNodeList>, read-only</br>
  <br><B>.DocumentElement</B> : <System.Xml.XmlElement>, read-only</br>
  <br><B>.DocumentType</B> : <System.Xml.XmlDocumentType>, read-only</br>
  <br><B>.FirstChild</B> : <System.Xml.XmlNode>, read-only</br>
  <br><B>.HasChildNodes</B> : <System.Boolean>, read-only</br>
  <br><B>.Implementation</B> : <System.Xml.XmlImplementation>, read-only</br>
  <br><B>.InnerText</B> : <System.String>, write-only</br>
  <br><B>.InnerXml</B> : <System.String>,</br>
  <br><B>.IsReadOnly</B> : <System.Boolean>, read-only</br>
  <br><B>.Item</B>[<System.String>name] : <System.Xml.XmlElement>, read-only</br>
  <br><B>.Item</B>[<System.String>localname, <System.String>ns] : <System.Xml.XmlElement>, read-only</br>
  <br><B>.LastChild</B> : <System.Xml.XmlNode>, read-only</br>
  <br><B>.LocalName</B> : <System.String>, read-only</br>
  <br><B>.Name</B> : <System.String>, read-only</br>
  <br><B>.NamespaceURI</B> : <System.String>, read-only</br>
  <br><B>.NameTable</B> : <System.Xml.XmlNameTable>, read-only</br>
  <br><B>.NextSibling</B> : <System.Xml.XmlNode>, read-only</br>
  <br><B>.NodeType</B> : <System.Xml.XmlNodeType>, read-only</br>
  <br><B>.OuterXml</B> : <System.String>, read-only</br>
  <br><B>.OwnerDocument</B> : <System.Xml.XmlDocument>, read-only</br>
  <br><B>.ParentNode</B> : <System.Xml.XmlNode>, read-only</br>
  <br><B>.Prefix</B> : <System.String>,</br>
  <br><B>.PreserveWhitespace</B> : <System.Boolean></br>
  <br><B>.PreviousSibling</B> : <System.Xml.XmlNode>, read-only</br>
  <br><B>.PreviousText</B> : <System.Xml.XmlNode>, read-only</br>
  <br><B>.SchemaInfo</B> : <System.Xml.Schema.IXmlSchemaInfo>, read-only</br>
  <br><B>.Schemas</B> : <System.Xml.Schema.XmlSchemaSet>,</br>
  <br><B>.Value</B> : <System.String>,</br>
  <br><B>.XmlResolver</B> : <System.Xml.XmlResolver>, write-only</br>
  <br>-------------------------------------------------------------------------------<br>

  <br><B>showmethods xmldoc</B></br>
  <br>-------------------------------------------------------------------------------<br>
  <br>.<System.Xml.XmlNode><B>AppendChild</B> <System.Xml.XmlNode>newChild</br>
  <br>.<System.Xml.XmlNode><B>Clone()</B></br>
  <br>.<System.Xml.XmlNode><B>CloneNode</B> <System.Boolean>deep</br>
  <br>.<System.Xml.XmlAttribute><B>CreateAttribute</B> <System.String>name</br>
  <br>.<System.Xml.XmlAttribute><B>CreateAttribute</B> <System.String>qualifiedName <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlAttribute><B>CreateAttribute</B> <System.String>prefix <System.String>localName <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlCDataSection><B>CreateCDataSection</B> <System.String>data</br>
  <br>.<System.Xml.XmlComment><B>CreateComment</B> <System.String>data</br>
  <br>.<System.Xml.XmlDocumentFragment><B>CreateDocumentFragment()</B></br>
  <br>.<System.Xml.XmlDocumentType><B>CreateDocumentType</B> <System.String>name <System.String>publicId <System.String>systemId <System.String>internalSubset</br>
  <br>.<System.Xml.XmlElement><B>CreateElement</B> <System.String>name</br>
  <br>.<System.Xml.XmlElement><B>CreateElement</B> <System.String>qualifiedName <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlElement><B>CreateElement</B> <System.String>prefix <System.String>localName <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlEntityReference><B>CreateEntityReference</B> <System.String>name</br>
  <br>.<System.Xml.XPath.XPathNavigator><B>CreateNavigator()</B></br>
  <br>.<System.Xml.XmlNode><B>CreateNode</B> <System.String>nodeTypeString <System.String>name <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlNode><B>CreateNode</B> <System.Xml.XmlNodeType>type <System.String>name <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlNode><B>CreateNode</B> <System.Xml.XmlNodeType>type <System.String>prefix <System.String>name <System.String>namespaceURI</br>
  <br>.<System.Xml.XmlProcessingInstruction><B>CreateProcessingInstruction</B> <System.String>target <System.String>data</br>
  <br>.<System.Xml.XmlSignificantWhitespace><B>CreateSignificantWhitespace</B> <System.String>text</br>
  <br>.<System.Xml.XmlText><B>CreateTextNode</B> <System.String>text</br>
  <br>.<System.Xml.XmlWhitespace><B>CreateWhitespace</B> <System.String>text</br>
  <br>.<System.Xml.XmlDeclaration><B>CreateXmlDeclaration</B> <System.String>version <System.String>encoding <System.String>standalone</br>
  <br>.<System.Boolean><B>Equals</B> <System.Object>obj</br>
  <br>.[static]<System.Boolean><B>Equals</B> <System.Object>objA <System.Object>objB</br>
  <br>.<System.Xml.XmlElement><B>GetElementById</B> <System.String>elementId</br>
  <br>.<System.Xml.XmlNodeList><B>GetElementsByTagName</B> <System.String>name</br>
  <br>.<System.Xml.XmlNodeList><B>GetElementsByTagName</B> <System.String>localName <System.String>namespaceURI</br>
  <br>.<System.Collections.IEnumerator><B>GetEnumerator()</B></br>
  <br>.<System.Int32><B>GetHashCode()</B></br>
  <br>.<System.String><B>GetNamespaceOfPrefix</B> <System.String>prefix</br>
  <br>.<System.String><B>GetPrefixOfNamespace</B> <System.String>namespaceURI</br>
  <br>.<System.Type><B>GetType()</B></br>
  <br>.<System.Xml.XmlNode><B>ImportNode</B> <System.Xml.XmlNode>node <System.Boolean>deep</br>
  <br>.<System.Xml.XmlNode><B>InsertAfter</B> <System.Xml.XmlNode>newChild <System.Xml.XmlNode>refChild</br>
  <br>.<System.Xml.XmlNode><B>InsertBefore</B> <System.Xml.XmlNode>newChild <System.Xml.XmlNode>refChild</br>
  <br><B>.Load</B> <System.IO.Stream>inStream</br>
  <br><B>.Load</B> <System.IO.TextReader>txtReader</br>
  <br><B>.Load</B> <System.String>filename</br>
  <br><B>.Load</B> <System.Xml.XmlReader>reader</br>
  <br><B>.LoadXml</B> <System.String>xml</br>
  <br><B>.Normalize()</B></br>
  <br>.<System.Xml.XmlNode><B>PrependChild</B> <System.Xml.XmlNode>newChild</br>
  <br>.<System.Xml.XmlNode><B>ReadNode</B> <System.Xml.XmlReader>reader</br>
  <br>.[static]<System.Boolean><B>ReferenceEquals</B> <System.Object>objA <System.Object>objB</br>
  <br>.<B>RemoveAll()</B></br>
  <br>.<System.Xml.XmlNode><B>RemoveChild</B> <System.Xml.XmlNode>oldChild</br>
  <br>.<System.Xml.XmlNode><B>ReplaceChild</B> <System.Xml.XmlNode>newChild <System.Xml.XmlNode>oldChild</br>
  <br><B>.Save</B> <System.String>filename</br>
  <br><B>.Save</B> <System.IO.Stream>outStream</br>
  <br><B>.Save</B> <System.Xml.XmlWriter>w</br>
  <br><B>.Save</B> <System.IO.TextWriter>writer</br>
  <br>.<System.Xml.XmlNodeList><B>SelectNodes</B> <System.String>xpath</br>
  <br>.<System.Xml.XmlNodeList><B>SelectNodes</B> <System.String>xpath <System.Xml.XmlNamespaceManager>nsmgr</br>
  <br>.<System.Xml.XmlNode><B>SelectSingleNode</B> <System.String>xpath</br>
  <br>.<System.Xml.XmlNode><B>SelectSingleNode</B> <System.String>xpath <System.Xml.XmlNamespaceManager>nsmgr</br>
  <br>.<System.Boolean><B>Supports</B> <System.String>feature <System.String>version</br>
  <br>.<System.String><B>ToString()</B></br>
  <br><B>.Validate</B> <System.Xml.Schema.ValidationEventHandler>validationEventHandler</br>
  <br><B>.Validate</B> <System.Xml.Schema.ValidationEventHandler>validationEventHandler <System.Xml.XmlNode>nodeToValidate</br>
  <br><B>.WriteContentTo</B> <System.Xml.XmlWriter>xw</br>
  <br><B>.WriteTo</B> <System.Xml.XmlWriter>w</br>
<br>-------------------------------------------------------------------------------<br>
