.class public Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "QueryInfoCallback.java"


# instance fields
.field private _dispatchGroup:Lcom/unity3d/scar/adapter/common/DispatchGroup;

.field private _gmaQueryInfoMetadata:Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;Lcom/unity3d/scar/adapter/common/DispatchGroup;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;->_dispatchGroup:Lcom/unity3d/scar/adapter/common/DispatchGroup;

    .line 17
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;->_gmaQueryInfoMetadata:Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;->_gmaQueryInfoMetadata:Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;->setError(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;->_dispatchGroup:Lcom/unity3d/scar/adapter/common/DispatchGroup;

    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->leave()V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;->_gmaQueryInfoMetadata:Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;->setQueryInfo(Lcom/google/android/gms/ads/query/QueryInfo;)V

    .line 24
    iget-object p1, p0, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoCallback;->_dispatchGroup:Lcom/unity3d/scar/adapter/common/DispatchGroup;

    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/DispatchGroup;->leave()V

    return-void
.end method
