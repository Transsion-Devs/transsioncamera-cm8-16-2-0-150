.class public abstract Lcom/ss/ugc/effectplatform/util/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;
    }
.end annotation


# static fields
.field private static cachedMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->cachedMap:Ljava/util/Map;

    return-void
.end method

.method private static closeSafety(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 222
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    return-void
.end method

.method private static extractValue([BI)I
    .registers 5

    .line 166
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2e

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2e

    .line 167
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    add-int/lit8 v0, p1, 0x1

    .line 170
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 173
    :cond_1f
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2e
    const/4 p0, -0x1

    return p0
.end method

.method public static getAvailableMemory(Landroid/content/Context;)J
    .registers 7

    const-wide/16 v0, -0x1

    .line 96
    :try_start_2
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 97
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_17

    .line 99
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 100
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    :cond_17
    move-wide v2, v0

    :goto_18
    cmp-long p0, v2, v0

    if-nez p0, :cond_42

    const/4 p0, 0x0

    .line 109
    :try_start_1d
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_3f
    .catchall {:try_start_1d .. :try_end_24} :catchall_37

    .line 110
    :try_start_24
    const-string p0, "MemAvailable"

    invoke-static {p0, v0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_35
    .catchall {:try_start_24 .. :try_end_2a} :catchall_33

    int-to-long v1, p0

    const-wide/16 v3, 0x400

    mul-long v2, v1, v3

    .line 114
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V

    goto :goto_42

    :catchall_33
    move-exception p0

    goto :goto_3b

    :catch_35
    move-object p0, v0

    goto :goto_3f

    :catchall_37
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_3b
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V

    throw p0

    :catch_3f
    :goto_3f
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V

    :cond_42
    :goto_42
    return-wide v2
.end method

.method public static getCpuModel()Ljava/lang/String;
    .registers 3

    .line 182
    sget-object v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->cachedMap:Ljava/util/Map;

    const-string v1, "cache_key_cpu_model"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 184
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 186
    :cond_d
    invoke-static {}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->getCpuModelInternal()Ljava/lang/String;

    move-result-object v0

    .line 187
    sget-object v2, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->cachedMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static declared-synchronized getCpuModelInternal()Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil;

    monitor-enter v0

    .line 196
    :try_start_3
    const-string v1, ":"
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_40

    const/4 v2, 0x0

    .line 198
    :try_start_6
    const-string v3, "/proc/cpuinfo"

    .line 199
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 200
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_4c
    .catchall {:try_start_6 .. :try_end_1d} :catchall_4a

    .line 201
    :cond_1d
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 204
    aget-object v3, v2, v3

    const-string v5, "Hardware"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v1, 0x1

    .line 206
    aget-object v1, v2, v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_45
    .catchall {:try_start_1d .. :try_end_3b} :catchall_42

    .line 214
    :try_start_3b
    invoke-static {v4}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    .line 206
    monitor-exit v0

    return-object v1

    :catchall_40
    move-exception v1

    goto :goto_5e

    :catchall_42
    move-exception v1

    move-object v2, v4

    goto :goto_5a

    :catch_45
    move-exception v1

    move-object v2, v4

    goto :goto_52

    :cond_48
    move-object v2, v4

    goto :goto_4e

    :catchall_4a
    move-exception v1

    goto :goto_5a

    :catch_4c
    move-exception v1

    goto :goto_52

    .line 214
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_40

    goto :goto_56

    .line 212
    :goto_52
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4a

    goto :goto_4e

    .line 216
    :goto_56
    :try_start_56
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_40

    monitor-exit v0

    return-object v1

    .line 214
    :goto_5a
    :try_start_5a
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V

    throw v1

    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_40

    throw v1
.end method

.method public static getMemoryInfo(Landroid/content/Context;)Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;
    .registers 3

    .line 230
    sget-object v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->cachedMap:Ljava/util/Map;

    const-string v1, "cache_key_memory_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 232
    check-cast v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;

    return-object v0

    .line 234
    :cond_d
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->getMemoryInfoInternal(Landroid/content/Context;)Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;

    move-result-object p0

    .line 235
    sget-object v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->cachedMap:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static getMemoryInfoInternal(Landroid/content/Context;)Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;
    .registers 4

    .line 241
    new-instance v0, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;-><init>()V

    .line 242
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v1

    # setter for: Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->totalSize:J
    invoke-static {v0, v1, v2}, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->access$002(Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;J)J

    .line 243
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v1

    # setter for: Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->availableSize:J
    invoke-static {v0, v1, v2}, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->access$102(Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;J)J

    return-object v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .registers 7

    const-wide/16 v0, -0x1

    .line 64
    :try_start_2
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 65
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_17

    .line 67
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 68
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    :cond_17
    move-wide v2, v0

    :goto_18
    cmp-long p0, v2, v0

    if-nez p0, :cond_49

    const/4 p0, 0x0

    .line 77
    :try_start_1d
    const-string v0, "/proc/meminfo"

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 79
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_41
    .catchall {:try_start_1d .. :try_end_2f} :catchall_3d

    .line 80
    :try_start_2f
    const-string p0, "MemTotal"

    invoke-static {p0, v1}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_39
    .catchall {:try_start_2f .. :try_end_35} :catchall_3b

    int-to-long v2, p0

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    :catch_39
    move-object p0, v1

    goto :goto_41

    :catchall_3b
    move-exception p0

    goto :goto_45

    :catchall_3d
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_45

    .line 85
    :catch_41
    :cond_41
    :goto_41
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V

    goto :goto_49

    :goto_45
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->closeSafety(Ljava/io/Closeable;)V

    throw p0

    :cond_49
    :goto_49
    return-wide v2
.end method

.method public static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .registers 8

    const/16 v0, 0x400

    .line 129
    new-array v0, v0, [B

    .line 131
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_38

    .line 133
    aget-byte v2, v0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_13

    if-nez v1, :cond_35

    :cond_13
    if-ne v2, v3, :cond_17

    add-int/lit8 v1, v1, 0x1

    :cond_17
    move v2, v1

    :goto_18
    if-ge v2, p1, :cond_35

    sub-int v3, v2, v1

    .line 140
    aget-byte v4, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_25

    goto :goto_35

    .line 144
    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_32

    .line 145
    invoke-static {v0, v2}, Lcom/ss/ugc/effectplatform/util/DeviceUtil;->extractValue([BI)I

    move-result p0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_31} :catch_38
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_31} :catch_38

    return p0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_38
    :cond_38
    const/4 p0, -0x1

    return p0
.end method
