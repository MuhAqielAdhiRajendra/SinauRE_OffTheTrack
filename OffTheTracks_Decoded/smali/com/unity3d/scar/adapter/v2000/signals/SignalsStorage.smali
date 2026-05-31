.class public Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;
.super Ljava/lang/Object;
.source "SignalsStorage.java"


# instance fields
.field private final _placementQueryInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;->_placementQueryInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getPlacementQueryInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;->_placementQueryInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryInfoMetadata(Ljava/lang/String;)Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;->_placementQueryInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;->_placementQueryInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
