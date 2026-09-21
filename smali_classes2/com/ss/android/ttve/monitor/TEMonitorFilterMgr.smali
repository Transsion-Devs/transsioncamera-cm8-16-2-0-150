.class public Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;
    }
.end annotation


# static fields
.field public static final FILTER_TYPE_EFFECT:I = 0x0

.field public static final FILTER_TYPE_INFO_STICKER:I = 0x1

.field public static final REPEAT_EFFECT:I = 0x1

.field public static final REVERSE_EFFECT:I = 0x3

.field public static final SLOW_MOTION_EFFECT:I = 0x2

.field public static final TIME_EFFECT_NONE:I

.field private static sInstance:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;


# instance fields
.field public effectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public infoStickerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private timeEffectType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->timeEffectType:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addFilter(IILcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    goto :goto_1c

    .line 119
    :cond_7
    :try_start_7
    iget-object p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :catchall_11
    move-exception p1

    goto :goto_1e

    .line 116
    :cond_13
    iget-object p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_11

    .line 124
    :goto_1c
    monitor-exit p0

    return-void

    .line 117
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_11

    throw p1
.end method

.method public getTimeEffectType()I
    .registers 1

    .line 110
    iget p0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->timeEffectType:I

    return p0
.end method

.method public declared-synchronized isEffectAdd()Z
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized isInfoStickerAdd()Z
    .registers 2

    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized removeFilter(II)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    goto :goto_1c

    .line 132
    :cond_7
    :try_start_7
    iget-object p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :catchall_11
    move-exception p1

    goto :goto_1e

    .line 129
    :cond_13
    iget-object p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_11

    .line 137
    :goto_1c
    monitor-exit p0

    return-void

    .line 130
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_11

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    iget-object v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->timeEffectType:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 94
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized serializeMap(I)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 62
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 65
    iget-object p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->effectMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_25

    :catchall_14
    move-exception p1

    goto :goto_5f

    :cond_16
    const/4 v2, 0x1

    if-ne p1, v2, :cond_24

    .line 67
    iget-object p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->infoStickerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_14

    goto :goto_25

    :cond_24
    move-object p1, v1

    :goto_25
    if-nez p1, :cond_29

    .line 71
    monitor-exit p0

    return-object v1

    .line 74
    :catch_29
    :cond_29
    :goto_29
    :try_start_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_14

    .line 77
    :try_start_3b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 78
    const-string v3, "path"

    iget-object v4, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v3, "start"

    iget v4, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->start:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v3, "duration"

    iget v1, v1, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr$TEMonitorFilter;->duration:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_58} :catch_29
    .catchall {:try_start_3b .. :try_end_58} :catchall_14

    goto :goto_29

    .line 87
    :cond_59
    :try_start_59
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_14

    monitor-exit p0

    return-object p1

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_14

    throw p1
.end method

.method public setTimeEffectType(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->timeEffectType:I

    return-void
.end method
