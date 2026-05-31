.class public Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;
.super Ljava/lang/Object;
.source "QueryInfoMetadata.java"


# instance fields
.field private _error:Ljava/lang/String;

.field private _placementId:Ljava/lang/String;

.field private _queryInfo:Lcom/google/android/gms/ads/query/QueryInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_placementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_error:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_queryInfo:Lcom/google/android/gms/ads/query/QueryInfo;

    return-object v0
.end method

.method public getQueryStr()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_queryInfo:Lcom/google/android/gms/ads/query/QueryInfo;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_error:Ljava/lang/String;

    return-void
.end method

.method public setQueryInfo(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1950/signals/QueryInfoMetadata;->_queryInfo:Lcom/google/android/gms/ads/query/QueryInfo;

    return-void
.end method
