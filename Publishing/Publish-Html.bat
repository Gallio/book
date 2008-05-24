rd /S /Q  Output
mkdir Output\HTML
cd Output\HTML
copy ..\..\gallio.css .
java -cp "..\..\Saxon\saxon.jar";"..\..\Xslthl\xslthl.jar" -Dxslthl.config="file:///%CD%\..\..\Highlighters\xslthl-config.xml" com.icl.saxon.StyleSheet "..\..\..\The-Gallio-Book.xml" "..\..\Xsl\html.xsl" chunker.output.encoding="UTF-8" chunker.output.indent="yes" html.stylesheet="gallio.css"
xcopy "..\..\..\Images\*" ".\Images\" /E /Y
copy ..\..\..\..\Website\www.gallio.org\gallio.org\images\*.* ".\Images\"
Pause