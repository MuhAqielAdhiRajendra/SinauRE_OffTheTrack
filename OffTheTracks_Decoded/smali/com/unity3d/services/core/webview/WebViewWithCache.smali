.class public Lcom/unity3d/services/core/webview/WebViewWithCache;
.super Lcom/unity3d/services/core/webview/WebView;
.source "WebViewWithCache.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/webview/WebView;-><init>(Landroid/content/Context;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/unity3d/services/core/webview/WebViewWithCache;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    return-void
.end method
