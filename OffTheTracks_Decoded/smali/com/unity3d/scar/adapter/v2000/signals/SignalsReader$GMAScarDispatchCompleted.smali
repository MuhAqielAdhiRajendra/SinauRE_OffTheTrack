.class Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader$GMAScarDispatchCompleted;
.super Ljava/lang/Object;
.source "SignalsReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GMAScarDispatchCompleted"
.end annotation


# instance fields
.field private _signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

.field final synthetic this$0:Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader$GMAScarDispatchCompleted;->this$0:Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;->access$002(Ljava/util/Map;)Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;->access$100()Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/v2000/signals/SignalsStorage;->getPlacementQueryInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;

    .line 68
    invoke-static {}, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;->access$000()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->getQueryStr()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v2}, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->getError()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->getError()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 77
    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 79
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;->onSignalsCollectionFailed(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
