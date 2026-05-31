.class public abstract Lcom/unity3d/scar/adapter/common/ScarAdapterBase;
.super Ljava/lang/Object;
.source "ScarAdapterBase.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/IScarAdapter;


# instance fields
.field protected _adsErrorHandler:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

.field protected _currentAdReference:Lcom/unity3d/scar/adapter/common/scarads/IScarAd;

.field protected _loadedAds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/scar/adapter/common/scarads/IScarAd;",
            ">;"
        }
    .end annotation
.end field

.field protected _scarSignalReader:Lcom/unity3d/scar/adapter/common/signals/ISignalsReader;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->_loadedAds:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->_adsErrorHandler:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    return-void
.end method


# virtual methods
.method public getSCARSignals(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->_scarSignalReader:Lcom/unity3d/scar/adapter/common/signals/ISignalsReader;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unity3d/scar/adapter/common/signals/ISignalsReader;->getSCARSignals(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->_loadedAds:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/scar/adapter/common/scarads/IScarAd;

    if-nez v0, :cond_0

    .line 35
    iget-object p1, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->_adsErrorHandler:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find ad for placement \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->NoAdsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/IUnityAdsError;)V

    goto :goto_0

    .line 38
    :cond_0
    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->_currentAdReference:Lcom/unity3d/scar/adapter/common/scarads/IScarAd;

    .line 39
    new-instance p2, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;

    invoke-direct {p2, p0, p1}, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;-><init>(Lcom/unity3d/scar/adapter/common/ScarAdapterBase;Landroid/app/Activity;)V

    invoke-static {p2}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
