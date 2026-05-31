.class public Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;
.super Ljava/lang/Object;
.source "SignalsReader.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/signals/ISignalsReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader$GMAScarDispatchCompleted;
    }
.end annotation


# static fields
.field private static _signalsStorage:Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object p1, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;->_signalsStorage:Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;

    return-void
.end method

.method static synthetic access$000()Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;
    .locals 1

    .line 17
    sget-object v0, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;->_signalsStorage:Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;

    return-object v0
.end method

.method private getSCARSignal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;)V
    .locals 3

    .line 42
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;

    invoke-direct {v1, p2}, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoCallback;

    invoke-direct {v2, v1, p4}, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoCallback;-><init>(Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;Lcom/unity3d/scar/adapter/common/DispatchGroup;)V

    .line 46
    sget-object p4, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;->_signalsStorage:Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;

    invoke-virtual {p4, p2, v1}, Lcom/unity3d/scar/adapter/v1950/signals/SignalsStorage;->put(Ljava/lang/String;Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;)V

    .line 47
    invoke-static {p1, p3, v0, v2}, Lcom/google/android/gms/ads/query/QueryInfo;->generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    return-void
.end method


# virtual methods
.method public getSCARSignals(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 6

    .line 26
    new-instance v0, Lcom/unity3d/scar/adapter/common/DispatchGroup;

    invoke-direct {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;-><init>()V

    .line 28
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 29
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->enter()V

    .line 30
    sget-object v5, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;->getSCARSignal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_0
    array-length p2, p3

    :goto_1
    if-ge v2, p2, :cond_1

    aget-object v1, p3, v2

    .line 34
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->enter()V

    .line 35
    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;->getSCARSignal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;Lcom/unity3d/scar/adapter/common/DispatchGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_1
    new-instance p1, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader$GMAScarDispatchCompleted;

    invoke-direct {p1, p0, p4}, Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader$GMAScarDispatchCompleted;-><init>(Lcom/unity3d/scar/adapter/v1950/signals/SignalsReader;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->notify(Ljava/lang/Runnable;)V

    return-void
.end method
