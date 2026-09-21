.class public Lcom/ss/android/ttve/nativePort/TEBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x8

.field private static final sPoolSync:Ljava/lang/Object;

.field private static sPools:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ss/android/ttve/nativePort/TEBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/nativePort/TEBundle;->sPoolSync:Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    return-void
.end method

.method public static cleanAll()V
    .registers 7

    .line 52
    sget-object v0, Lcom/ss/android/ttve/nativePort/TEBundle;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 54
    sget-object v1, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_2d

    .line 56
    sget-object v4, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ttve/nativePort/TEBundle;

    .line 57
    invoke-virtual {v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v5

    aput-wide v5, v2, v3

    const-wide/16 v5, 0x0

    .line 58
    iput-wide v5, v4, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catchall_2b
    move-exception v1

    goto :goto_32

    .line 60
    :cond_2d
    invoke-static {v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeReleaseAll([J)V

    .line 62
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_2b

    throw v1
.end method

.method private native nativeCreate()J
.end method

.method private native nativeGetBool(JLjava/lang/String;)Z
.end method

.method private native nativeGetFloat(JLjava/lang/String;)F
.end method

.method private native nativeGetIntArray(JLjava/lang/String;)[I
.end method

.method private native nativeGetLong(JLjava/lang/String;)J
.end method

.method private native nativeGetString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeReleaseAll([J)V
.end method

.method private native nativeSetBool(JLjava/lang/String;Z)I
.end method

.method private native nativeSetByteBuffer(JLjava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeSetDouble(JLjava/lang/String;D)I
.end method

.method private native nativeSetDoubleArray(JLjava/lang/String;[D)I
.end method

.method private native nativeSetFloat(JLjava/lang/String;F)I
.end method

.method private native nativeSetFloatArray(JLjava/lang/String;[F)I
.end method

.method private native nativeSetHandle(JLjava/lang/String;J)I
.end method

.method private native nativeSetInt(JLjava/lang/String;I)I
.end method

.method private native nativeSetIntArray(JLjava/lang/String;[I)I
.end method

.method private native nativeSetLong(JLjava/lang/String;J)I
.end method

.method private native nativeSetString(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetStringArray(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method public static obtain()Lcom/ss/android/ttve/nativePort/TEBundle;
    .registers 2

    .line 27
    sget-object v0, Lcom/ss/android/ttve/nativePort/TEBundle;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-object v1, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 29
    sget-object v1, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ttve/nativePort/TEBundle;

    goto :goto_1b

    :catchall_14
    move-exception v1

    goto :goto_1d

    .line 31
    :cond_16
    new-instance v1, Lcom/ss/android/ttve/nativePort/TEBundle;

    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/TEBundle;-><init>()V

    .line 33
    :goto_1b
    monitor-exit v0

    return-object v1

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_14

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .registers 5

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_e

    .line 47
    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeRelease(J)V

    :cond_e
    return-void
.end method

.method public getBool(Ljava/lang/String;)Z
    .registers 4

    .line 141
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeGetBool(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4

    .line 123
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeGetFloat(JLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getHandle()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    return-wide v0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 4

    .line 131
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeGetIntArray(JLjava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    .line 138
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeGetLong(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 127
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeGetString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public recycle()V
    .registers 3

    .line 38
    sget-object v0, Lcom/ss/android/ttve/nativePort/TEBundle;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/ss/android/ttve/nativePort/TEBundle;->sPools:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setBool(Ljava/lang/String;Z)I
    .registers 5

    .line 78
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetBool(JLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 135
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetByteBuffer(JLjava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public setDouble(Ljava/lang/String;D)I
    .registers 10

    .line 107
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetDouble(JLjava/lang/String;D)I

    move-result p0

    return p0
.end method

.method public setDoubleArray(Ljava/lang/String;[D)I
    .registers 5

    .line 111
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetDoubleArray(JLjava/lang/String;[D)I

    move-result p0

    return p0
.end method

.method public setFloat(Ljava/lang/String;F)I
    .registers 5

    .line 99
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetFloat(JLjava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFloatArray(Ljava/lang/String;[F)I
    .registers 5

    .line 103
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetFloatArray(JLjava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public setHandle(Ljava/lang/String;J)I
    .registers 10

    .line 82
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetHandle(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public setInt(Ljava/lang/String;I)I
    .registers 5

    .line 87
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetInt(JLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setIntArray(Ljava/lang/String;[I)I
    .registers 5

    .line 95
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetIntArray(JLjava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public setLong(Ljava/lang/String;J)I
    .registers 10

    .line 91
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetLong(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 115
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetString(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setStringArray(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 119
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEBundle;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->nativeSetStringArray(JLjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
