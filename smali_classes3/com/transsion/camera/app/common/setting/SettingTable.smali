.class public Lcom/transsion/camera/app/common/setting/SettingTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingListByGroup:Lcom/google/common/collect/Multimap;

.field private final mSettingsByGroupSync:Ljava/lang/Object;

.field private final mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingTable"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/SettingTable;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByGroup:Lcom/google/common/collect/Multimap;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByGroupSync:Ljava/lang/Object;

    return-void
.end method

.method private addSettingByGroupSync(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByGroupSync:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 96
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSettingGroup()J

    move-result-wide v1

    .line 97
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->splitToBitList(J)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 99
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v3, v2, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_17

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 102
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2c

    throw p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 4

    if-nez p1, :cond_a

    .line 25
    sget-object p0, Lcom/transsion/camera/app/common/setting/SettingTable;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[add] why pass NULL setting!!!!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_a
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->addSettingByGroupSync(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    .line 37
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    return-void

    .line 29
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SettingTable.add] setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",Please check why you return NULL setting key or setting type!!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forEachSettings(Ljava/util/function/Consumer;)Z
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public getSettingListByGroup(J)Ljava/util/ArrayList;
    .registers 6

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByGroupSync:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_8
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->splitToBitList(J)Ljava/util/List;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, p2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 89
    :cond_2b
    monitor-exit v1

    return-object v0

    .line 90
    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public removeAll()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByGroup:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
