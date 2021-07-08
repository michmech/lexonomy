%import json
%JSON=json.dumps
<!DOCTYPE HTML>
<html>
    <head>
        %include("head.tpl")
        <title>{{dictTitle}}</title>
        <script type="text/javascript" src="../../../libs/screenful/screenful.js"></script>
    <link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful.css" />
        <script type="text/javascript" src="../../../libs/screenful/screenful-loc-en.js"></script>
        <script type="text/javascript" src="../../../libs/screenful/screenful-user.js"></script>
        <link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful-user.css" />
        <link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful-theme-blue.css" />
        <script type="text/javascript">
        Screenful.User.loggedin={{!JSON(user["loggedin"])}};
        Screenful.User.username="{{user['email']}}";
        </script>
        <script type="text/javascript">var rootPath="../../../";</script>
        <script type="text/javascript" src="../../../furniture/screenful-user-config.js"></script>
        <link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful-editor.css" />
        <script type="text/javascript" src="../../../libs/screenful/screenful-editor.js"></script>
        <script type="text/javascript" src="../../../widgets/gapi.js"></script>
        <link type="text/css" rel="stylesheet" href="../../../widgets/pillarform.css" />
        <script type="text/javascript" src="../../../widgets/xematron.js"></script>
        <script type="text/javascript">
        var xema={{!JSON(xema)}};
        Screenful.Editor.singleton=true;
        Screenful.Editor.entryID="gapi";
        Screenful.Editor.leaveUrl="../../../{{dictID}}/config/";
        Screenful.Editor.readUrl="../../../{{dictID}}/configread.json";
        Screenful.Editor.updateUrl="../../../{{dictID}}/configupdate.json";
        Screenful.Editor.editor=function(div, entry){
            Gapi.change=Screenful.Editor.changed;
            Gapi.render(div, entry.content);
        };
        Screenful.Editor.harvester=function(div){
            return JSON.stringify(Gapi.harvest(div));
        };
        Screenful.Editor.allowSourceCode=true;
        Screenful.Editor.formatSourceCode=function(str){
            return Screenful.formatJson(str);
        };
        Screenful.Editor.validateSourceCode=function(str){
            return Screenful.isWellFormedJson(str);
        };
        Screenful.Editor.cleanupSourceCode=function(str){
            return JSON.parse(str);
        };
        </script>
        <link type="text/css" rel="stylesheet" href="../../../furniture/ui.css" />
    </head>
    <body>
                %include("header.tpl", user=user, dictID=dictID, dictTitle=dictTitle, current="config", configTitle="Multimedia API", configUrl="gapi", rootPath="../../../")
    </body>
</html>
