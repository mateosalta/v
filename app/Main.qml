import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import Lomiri.Components 1.3
import "UCSComponents"
import Morph.Web 0.1
import QtWebEngine 1.11
import QtSystemInfo 5.5


Rectangle {

    id: rect
    visible: true
    color: "transparent"
    ScreenSaver {
        id: screenSaver
        screenSaverEnabled: !Qt.application.active || !webview.recentlyAudible
    }
            anchors {
                fill: parent

                bottomMargin: UbuntuApplication.inputMethod.visible ? (UbuntuApplication.inputMethod.keyboardRectangle.height + units.gu(3))/(units.gridUnit / 8) : 0
                Behavior on bottomMargin {
                    NumberAnimation {
                        duration: 175
                        easing.type: Easing.OutQuad
                    }}
}
  //  width: units.gu(45)
 //   height: units.gu(75)

    objectName: "mainView"
    property bool loaded: false
    

    property QtObject defaultProfile: WebEngineProfile {
        id: webContext
        storageName: "myProfile"
        offTheRecord: false
        persistentCookiesPolicy: WebEngineProfile.ForcePersistentCookies
        property alias dataPath: webContext.persistentStoragePath

        dataPath: dataLocation
    
            userScripts: [
           WebEngineScript {
               id: cssinjection
               injectionPoint: WebEngineScript.DocumentReady
               worldId: WebEngineScript.UserWorld
               sourceCode: "\n(function() {\nvar css = \"* {font-family: \\\"Ubuntu\\\" !important;}  \"\n\n;\n\n\nif (typeof GM_addStyle != \"undefined\") {\n\tGM_addStyle(css);\n} else if (typeof PRO_addStyle != \"undefined\") {\n\tPRO_addStyle(css);\n} else if (typeof addStyle != \"undefined\") {\n\taddStyle(css);\n} else {\n\tvar node = document.createElement(\"style\");\n\tnode.type = \"text/css\";\n\tnode.appendChild(document.createTextNode(css));\n\tvar heads = document.getElementsByTagName(\"head\");\n\tif (heads.length > 0) {\n\t\theads[0].appendChild(node); \n\t} else {\n\t\t// no head yet, stick it whereever\n\t\tdocument.documentElement.appendChild(node);\n\t}\n}\n\n})();"
           }
       ]
       
        httpUserAgent: "Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/72.0.3626.121 Chrome/72.0.3626.121 Safari/537.36"
        // "Mozilla/5.0 (Linux; Android 12; Ubuntu Touch) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Mobile Safari/537.36"
    }

    WebView {

        id: webview
    anchors.fill: parent
        backgroundColor: "transparent"
        url: "https://voice.google.com/"

        
        
        profile: defaultProfile
        settings.fullScreenSupportEnabled: true
        settings.dnsPrefetchEnabled: true
      //  settings.showScrollBars: false

        enableSelectOverride: true

        property var currentWebview: webview
        property ContextMenuRequest contextMenuRequest: null
      


        settings.pluginsEnabled: true
        settings.javascriptCanAccessClipboard: true

        //onUrlChanged: {runJavaScript(seekBarOverlayScript); }
        
        onFeaturePermissionRequested: grantFeaturePermission(url, WebEngineView.MediaAudioVideoCapture, true);
        
        onFullScreenRequested: function(request) {
            request.accept();
            nav.visible = !nav.visible
            if (request.toggleOn) {
                window.showFullScreen();
            }
            else {
                window.showNormal();
            }   
         }

         onLoadingChanged: {
             if (loadRequest.status === WebEngineLoadRequest.LoadSucceededStatus) {
                 rect.loaded = true
             }
         }

        //handle click on links
        onNewViewRequested: function(request) {
            console.log(request.destination, request.requestedUrl)

            var url = request.requestedUrl.toString()
            //handle redirection links
            if (url.startsWith('https://www.youtube.com')) {
                //get query params
                var reg = new RegExp('[?&]q=([^&#]*)', 'i');
                var param = reg.exec(url);
                if (param) {
                    console.log("url to open:", decodeURIComponent(param[1]))
                    Qt.openUrlExternally(decodeURIComponent(param[1]))
                } else {
                    Qt.openUrlExternally(url)
                                    request.action = WebEngineNavigationRequest.IgnoreRequest;
                }
            } else {
                Qt.openUrlExternally(url)
            }
        }

        onContextMenuRequested: function(request) {
            if (!Qt.inputMethod.visible) { //don't open it on when address bar is open
                request.accepted = true;
                contextMenuRequest = request
                contextMenu.x = request.x;
                contextMenu.y = request.y;
                contextMenu.open();
            }
        }
    }

    Menu {
        id: contextMenu

        MenuItem {
            id: copyItem
            text: i18n.tr("Copy link")
            enabled: webview.contextMenuRequest
            onTriggered: {
                console.log(webview.contextMenuRequest.linkUrl.toString())
                var url = ''
                if (webview.contextMenuRequest.linkUrl.toString().length > 0) {
                    url = webview.contextMenuRequest.linkUrl.toString()
                } else {
                    //when clicking on the video
                    url = webview.url
                }

                Clipboard.push(url)
                webview.contextMenuRequest = null;
            }
        }
    }

 /* RadialBottomEdge {
        id: nav
        visible: rect.loaded
        actions: [
            RadialAction {
                id: reload
                iconName: "reload"
                onTriggered: {
                    webview.reload()
                }
                text: qsTr("Reload")
            },

            RadialAction {
                id: forward
                enabled: webview.canGoForward
                iconName: "go-next"
                onTriggered: {
                    webview.goForward()
                }
                text: qsTr("Forward")
            },
            RadialAction {
                id: account
                iconName: "account"
                onTriggered: {
                    webview.url = 'https://m.youtube.com/feed/account'
                }
                text: qsTr("Account")

            },
            RadialAction {
                id: subscriptions
                iconName: "media-playlist"
                onTriggered: {
                    webview.url = 'https://m.youtube.com/feed/subscriptions'
                }
                text: qsTr("Subscriptions")

            },
            RadialAction {
                id: trending
                iconName: "weather-chance-of-storm"
                onTriggered: {
                    webview.url = 'https://m.youtube.com/feed/trending'
                }
                text: qsTr("Trending")
            },

            RadialAction {
                id: home
                iconName: "home"
                onTriggered: {
                    webview.url = 'http://m.youtube.com'
                }
                text: qsTr("Home")
            },

            RadialAction {
                id: back
                enabled: webview.canGoBack
                iconName: "go-previous"
                onTriggered: {
                    webview.goBack()
                }
                text: qsTr("Back")
            }
        ]
    } */

 /*  Rectangle {
        id: splashScreen
        color: "#111111"
        anchors.fill: parent

        ActivityIndicator{
            id:loadingflg
            anchors.centerIn: parent

            running: splashScreen.visible
        }

        states: [
            State { when: !rect.loaded;
                PropertyChanges { target: splashScreen; opacity: 1.0 }
            },
            State { when: rect.loaded;
                PropertyChanges { target: splashScreen; opacity: 0.0 }
            }
        ]

        transitions: Transition {
            NumberAnimation { property: "opacity"; duration: 400}
        }

    } */
    

    

    Connections {
        target: webview

        onIsFullScreenChanged: {

            console.log('onIsFullScreenChanged:')
            window.setFullscreen(webview.isFullScreen)
            if (webview.isFullScreen) {
                nav.state = "hidden"
                          //  webview.height = units.gu(75)
            }
            else {
                nav.state = "shown"
            }
        }
    }


        Connections {
            target: UriHandler

            onOpened: {

                if (uris.length > 0) {
                    console.log('Incoming call from UriHandler ' + uris[0]);
                    webview.url = uris[0];
                }
            }
        }

        Component.onCompleted: {
            //Check if opened the app because we have an incoming call
            if (Qt.application.arguments && Qt.application.arguments.length > 0) {
                for (var i = 0; i < Qt.application.arguments.length; i++) {
                    if (Qt.application.arguments[i].match(/^http/)) {
                        console.log(' open video to:', Qt.application.arguments[i])
                        webview.url = Qt.application.arguments[i];
                    }
                }
            }
            else {
            webview.url = myurl;
            }
        }

        function setFullscreen(fullscreen) {
            if (fullscreen) {
                if (window.visibility != ApplicationWindow.FullScreen) {
                    window.visibility = ApplicationWindow.FullScreen
                }
            } else {
                window.visibility = ApplicationWindow.Windowed
            }
        }
        
        
            function toggleApplicationLevelFullscreen() {
                setFullscreen(visibility !== ApplicationWindow.FullScreen)
            }

            Shortcut {
                sequence: StandardKey.FullScreen
                onActivated: window.toggleApplicationLevelFullscreen()
            }

            Shortcut {
                sequence: "F11"
                onActivated: window.toggleApplicationLevelFullscreen()
            }
}
