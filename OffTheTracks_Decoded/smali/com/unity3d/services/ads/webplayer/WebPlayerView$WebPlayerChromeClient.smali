.class Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ads/webplayer/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebPlayerChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 781
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 782
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CLOSE_WINDOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8

    const/4 v0, 0x0

    .line 839
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 841
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v3, "onConsoleMessage"

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 847
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 849
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CONSOLE_MESSAGE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v0

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-virtual {v2, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 851
    :cond_2
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 852
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v3, v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 855
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 7

    const/4 v0, 0x0

    .line 751
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 753
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v3, "onCreateWindow"

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 756
    :goto_0
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v4, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CREATE_WINDOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v6, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v6, p2

    const/4 p2, 0x2

    aput-object p4, v6, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v6, p3

    invoke-virtual {v2, v4, v5, v6}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 759
    :cond_1
    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 760
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-class p2, Ljava/lang/Boolean;

    invoke-static {p1, v3, p2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 763
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 670
    :cond_0
    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 671
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p2

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onHideCustomView()V
    .locals 6

    .line 741
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->HIDE_CUSTOM_VIEW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    const/4 v0, 0x0

    .line 788
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 790
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v3, "onJsAlert"

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 793
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 794
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v4, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->JS_ALERT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v0

    aput-object p3, v6, v2

    const/4 p2, 0x2

    aput-object p4, v6, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v6, p3

    invoke-virtual {p1, v4, v5, v6}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 797
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-class p2, Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, v3, p2, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 800
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6

    const/4 v0, 0x0

    .line 805
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 807
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v3, "onJsConfirm"

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 810
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    .line 811
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->JS_CONFIRM:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    aput-object p3, v5, p4

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v5, p3

    invoke-virtual {p1, v2, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 813
    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 814
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-class p2, Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, v3, p2, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 817
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    const/4 v0, 0x0

    .line 822
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 824
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v3, "onJsPrompt"

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 827
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    .line 828
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->JS_PROMPT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    aput-object p3, v5, p5

    const/4 p2, 0x2

    aput-object p4, v5, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v5, p3

    invoke-virtual {p1, v2, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 830
    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 831
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-class p2, Ljava/lang/Boolean;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, v3, p2, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 834
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 5

    .line 677
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onPermissionRequest"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 682
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 685
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PERMISSION_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 695
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PROGRESS_CHANGED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 714
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 715
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->RECEIVED_ICON:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v0, v1}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 704
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 705
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TITLE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onReceivedTouchIconUrl"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 724
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 725
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 5

    .line 768
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 771
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 772
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->REQUEST_FOCUS:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOW_CUSTOM_VIEW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v0, v1}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 860
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 862
    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-string v3, "onShowFileChooser"

    invoke-static {v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 865
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 866
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOW_FILE_CHOOSER:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    new-array v5, p3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v6}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 868
    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {p1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 869
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, v3, v0, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 870
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 871
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 875
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
