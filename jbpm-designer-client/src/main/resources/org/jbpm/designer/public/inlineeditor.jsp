<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:b3mn="http://b3mn.org/2007/b3mn" xmlns:ext="http://b3mn.org/2007/ext" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:atom="http://b3mn.org/2007/atom+xhtml">
<head profile="http://purl.org/NET/erdf/profile">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link xmlns="http://www.w3.org/1999/xhtml" rel="icon" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/jbpm.gif" />
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/prototype-1.5.1.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/path_parser.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/ext-2.0.2/adapter/ext/ext-base.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/ext-2.0.2/ext-all.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/ext-2.0.2/color-field.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript">jQuery.noConflict();</script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/handlebars-1.0.0.beta.6.js" type="text/javascript"></script>
    <style xmlns="http://www.w3.org/1999/xhtml" media="screen" type="text/css">@import url("<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/lib/ext-2.0.2/resources/css/ext-all.css");
    .extensive-remove {
        background-image: url(<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/images/remove.gif) ! important;
    }</style>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cm.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmxml.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmjs.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmcss.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmclike.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmhtmlmixed.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/closetags.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/hint.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/hintjbpm.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmsearch.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmsearchcursor.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmdialog.js"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/cmfold.js"></script>
    <link xmlns="http://www.w3.org/1999/xhtml" rel="Stylesheet" media="screen" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/css/codemirror.css" type="text/css" />
    <link xmlns="http://www.w3.org/1999/xhtml" rel="Stylesheet" media="screen" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/css/cmdialog.css" type="text/css" />

    <link xmlns="http://www.w3.org/1999/xhtml" rel="Stylesheet" media="screen" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/css/fullscreen.css" type="text/css" />
    <link xmlns="http://www.w3.org/1999/xhtml" rel="Stylesheet" media="screen" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/css/mic.css" type="text/css" />
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/notifications.js" type="text/javascript"></script>
    <link xmlns="http://www.w3.org/1999/xhtml" rel="Stylesheet" media="screen" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/css/notifications.css" type="text/css" />
    <script xmlns="http://www.w3.org/1999/xhtml" type="text/javascript" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/CFInstall.min.js"></script>
    <link xmlns="http://www.w3.org/1999/xhtml" rel="Stylesheet" media="screen" href="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/css/theme-default.css" type="text/css" />

    <link xmlns="http://www.w3.org/1999/xhtml" rel="schema.dc" href="http://purl.org/dc/elements/1.1/" />
    <link xmlns="http://www.w3.org/1999/xhtml" rel="schema.dcTerms" href="http://purl.org/dc/terms/" />
    <link xmlns="http://www.w3.org/1999/xhtml" rel="schema.b3mn" href="http://b3mn.org" />
    <link xmlns="http://www.w3.org/1999/xhtml" rel="schema.oryx" href="http://oryx-editor.org/" />
    <link xmlns="http://www.w3.org/1999/xhtml" rel="schema.raziel" href="http://raziel.org/" />
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/kickstart.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/config.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/oryx.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/clazz.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/main.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/utils.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/erdfparser.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/datamanager.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/SVG/editpathhandler.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/SVG/minmaxpathhandler.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/SVG/pointspathhandler.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/SVG/svgmarker.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/SVG/svgshape.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/SVG/label.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/Math/math.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/stencil.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/property.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/propertyitem.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/complexpropertyitem.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/rules.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/stencilset.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/StencilSet/stencilsets.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/command.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/bounds.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/uiobject.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/abstractshape.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/canvas.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/svgDrag.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/shape.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/Controls/control.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/Controls/magnet.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/Controls/docker.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/node.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/edge.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/abstractPlugin.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/abstractLayouter.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/Core/abstractDragTracker.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/diff_match_patch.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/itemdeleter.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/jsonpath.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/imageviewer.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/svgviewer.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/js/panelcollapsedtitle.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/org.jbpm.designer.jBPMDesigner/i18n/translation_<%=request.getParameter("locale")%>.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.SelectStencilSetPerspective.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Toolbar.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ProcessInfo.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.JPDLMigration.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ServiceRepoIntegration.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Footer.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.SavePlugin.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ShapeMenuPlugin.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ShapeRepository.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.PropertyWindow.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.CanvasResize.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.View.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.DragDropResize.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.RenameShapes.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Undo.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Arrangement.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Grouping.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.DragDocker.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.AddDocker.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.SelectionFrame.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ShapeHighlighting.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Edit.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.KeysMove.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Layouter.EdgeLayouter.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.VisualValidation.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.RegexTextEditor.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ConstraintExpressionEditor.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Overlay.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Dictionary.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.CanvasTitle.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.InlineTaskFormEditor.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ExtendedDataAssignmentEditor.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.FieldDataAssignmentEditors.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.NodeXMLViewer.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Theme.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.LockNode.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.Simulation.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.SimulationResults.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.DockerCreation.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.TaskPropertiesUpdater.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.VoiceCommand.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.PatternCreator.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.LocalHistory.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.NotificationsPlugin.js" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.ActiveNodesHighlighter" type="text/javascript"></script>
    <script xmlns="http://www.w3.org/1999/xhtml" src="<%=request.getContextPath()%>/plugin/ORYX.Plugins.FormEditing" type="text/javascript"></script>
</head>
<body style="overflow:hidden;" onload="startit();">
    <div id="Definition"></div>
</body>
</html>
