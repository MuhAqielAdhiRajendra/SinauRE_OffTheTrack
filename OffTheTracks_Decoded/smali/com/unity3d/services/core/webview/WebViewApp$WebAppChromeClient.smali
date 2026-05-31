.class Lcom/unity3d/services/core/webview/WebViewApp$WebAppChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/webview/WebViewApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebAppChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/core/webview/WebViewApp;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/core/webview/WebViewApp;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/unity3d/services/core/webview/WebViewApp$WebAppChromeClient;->this$0:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/core/webview/WebViewApp;Lcom/unity3d/services/core/webview/WebViewApp$1;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/services/core/webview/WebViewApp;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 494
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Could not handle sourceId"

    .line 497
    invoke-static {p2, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    :cond_0
    return-void
.end method
