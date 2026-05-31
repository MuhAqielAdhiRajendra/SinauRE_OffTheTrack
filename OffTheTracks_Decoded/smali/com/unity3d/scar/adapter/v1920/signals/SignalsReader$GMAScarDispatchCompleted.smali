.class Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader$GMAScarDispatchCompleted;
.super Ljava/lang/Object;
.source "SignalsReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GMAScarDispatchCompleted"
.end annotation


# instance fields
.field private _signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

.field final synthetic this$0:Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader$GMAScarDispatchCompleted;->this$0:Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-static {}, Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader;->access$000()Lcom/unity3d/scar/adapter/v1920/signals/SignalsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/v1920/signals/SignalsStorage;->getPlacementQueryInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;

    .line 67
    invoke-virtual {v3}, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;->getQueryStr()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v3}, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;->getError()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v3}, Lcom/unity3d/scar/adapter/v1920/signals/QueryInfoMetadata;->getError()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 78
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v1920/signals/SignalsReader$GMAScarDispatchCompleted;->_signalListener:Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;

    invoke-interface {v0, v2}, Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;->onSignalsCollectionFailed(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
