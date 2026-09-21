.class public Lcom/ss/android/ttve/nativePort/TELensAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "TELensAlgorithm"


# instance fields
.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 17
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->mNativeHandle:J

    return-void
.end method

.method private native nativeCreateLensEngine()J
.end method

.method private native nativeDestroyLensEngine(J)I
.end method

.method private native nativeGetVideoStabResult(JLjava/lang/Object;Lcom/ss/android/ttve/lensAlgorithm/videoStable/VEVideoStabConfig;)Lcom/ss/android/ttve/lensAlgorithm/videoStable/VELensVideoStabResults;
.end method


# virtual methods
.method public declared-synchronized destroy()I
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->mNativeHandle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    .line 35
    monitor-exit p0

    const/16 p0, -0x70

    return p0

    .line 37
    :cond_d
    :try_start_d
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->nativeDestroyLensEngine(J)I

    move-result v0

    .line 38
    iput-wide v2, p0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->mNativeHandle:J
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    .line 39
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getAlgorithmResults(Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensAlgorithmConfig;Ljava/lang/Object;)Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensResults;
    .registers 8

    .line 44
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_a

    return-object v3

    .line 47
    :cond_a
    iget v2, p1, Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensAlgorithmConfig;->algorithmFlag:I

    const/16 v4, 0x10

    if-eq v2, v4, :cond_11

    return-object v3

    .line 50
    :cond_11
    check-cast p1, Lcom/ss/android/ttve/lensAlgorithm/videoStable/VEVideoStabConfig;

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->nativeGetVideoStabResult(JLjava/lang/Object;Lcom/ss/android/ttve/lensAlgorithm/videoStable/VEVideoStabConfig;)Lcom/ss/android/ttve/lensAlgorithm/videoStable/VELensVideoStabResults;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized init()I
    .registers 5

    monitor-enter p0

    .line 23
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 24
    const-string v0, "TELensAlgorithm"

    const-string v1, "Native Lens has already init"

    invoke-static {v0, v1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_24

    .line 26
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->nativeCreateLensEngine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->mNativeHandle:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_11

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    .line 28
    monitor-exit p0

    const/16 p0, -0x70

    return p0

    .line 30
    :cond_21
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_11

    throw v0
.end method
