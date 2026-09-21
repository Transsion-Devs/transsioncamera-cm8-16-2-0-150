.class public Lcom/transsion/camera/app/common/storage/DataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataWrapperMap:Landroid/util/ArrayMap;

.field private final mGlobalKeys:Ljava/util/List;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/transsion/camera/app/common/storage/DataStore;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/storage/DataStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DataStore"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/DataStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private addFrontDataWrapper()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "_preferences_1"

    if-eqz v1, :cond_2d

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 169
    :cond_2d
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    .line 170
    const-string v0, "_saving_timestamp1"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    .line 171
    const-string v0, "_facing_preferences_1"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    :cond_3a
    return-void
.end method

.method private getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    if-nez v1, :cond_1a

    .line 110
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 113
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-object v1

    .line 114
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method private sortSettingDesByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .registers 13

    .line 180
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 181
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 182
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 186
    :goto_23
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_3c

    .line 187
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v1, v7

    if-lez v5, :cond_39

    goto :goto_3d

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_3c
    move v4, v6

    :goto_3d
    if-ne v4, v6, :cond_43

    .line 193
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 195
    :cond_43
    invoke-interface {p2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 196
    invoke-interface {p3, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_4a
    return-void
.end method


# virtual methods
.method public cleanDataStore()V
    .registers 7

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getDataStoreFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 136
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_75

    aget-object v2, p0, v1

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SellingPoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vlog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "imagery_guide"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_72

    .line 143
    :cond_44
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 144
    sget-object v2, Lcom/transsion/camera/app/common/storage/DataStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "items: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    const-string v2, ".crc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 147
    invoke-static {v3}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_75
    return-void
.end method

.method public clearAllCache()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->clearCache()V

    goto :goto_d

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 122
    :cond_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_23

    throw p0
.end method

.method public getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_facing_preferences_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraScope(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_preferences_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalScope()Ljava/lang/String;
    .registers 1

    .line 44
    const-string p0, "_global_scope"

    return-object p0
.end method

.method public getSettingsKeepSavingTime(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_saving_timestamp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    move-result-object p1

    .line 95
    const-string v0, "_global_scope_saving_timestamp"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 99
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->-$$Nest$mgetAll(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->sortSettingDesByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 101
    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->-$$Nest$mgetAll(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->sortSettingDesByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 85
    const-string p3, "_global_scope"

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_1a

    .line 87
    :cond_10
    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    .line 88
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    move-result-object p0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->-$$Nest$mgetValue(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_e

    throw p0
.end method

.method public restoreDataStore()Z
    .registers 2

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->addFrontDataWrapper()V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->cleanDataStore()V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mDataWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    const/4 p0, 0x1

    .line 130
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 131
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8

    if-nez p3, :cond_3

    goto :goto_4c

    .line 64
    :cond_3
    const-string v0, "_global_scope"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    monitor-enter v0

    .line 66
    :try_start_e
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 69
    :cond_1e
    :goto_1e
    monitor-exit v0

    goto :goto_22

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1c

    throw p0

    .line 71
    :cond_22
    :goto_22
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    move-result-object v0

    .line 72
    invoke-static {v0, p1, p2, p4}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->-$$Nest$msetValue(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p5, :cond_4c

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_saving_timestamp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getDataWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;

    move-result-object p0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->-$$Nest$msetValue(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4c
    :goto_4c
    return-void
.end method
