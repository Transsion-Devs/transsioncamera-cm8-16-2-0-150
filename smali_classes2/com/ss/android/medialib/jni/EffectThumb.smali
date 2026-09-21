.class public Lcom/ss/android/medialib/jni/EffectThumb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/jni/EffectThumb$ThumbListener;
    }
.end annotation


# instance fields
.field private handle:J

.field private mCovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/CoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mSpeed:F

.field private mTrimIn:J

.field private mTrimOut:J

.field stopped:Z

.field private thumbListener:Lcom/ss/android/medialib/jni/EffectThumb$ThumbListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 22
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadOldEditor()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mMaxSize:I

    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->stopped:Z

    .line 45
    invoke-direct {p0}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeGetDuration(J)J
.end method

.method private native nativeInit(JLjava/lang/String;)I
.end method

.method private native nativeRenderVideo(J[JLcom/ss/android/medialib/player/EffectConfig;II)I
.end method

.method private native nativeStop(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .line 210
    invoke-virtual {p0}, Lcom/ss/android/medialib/jni/EffectThumb;->stopRender()V

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDuration()J
    .registers 5

    .line 89
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimOut:J

    iget-wide v2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimIn:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget p0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mSpeed:F

    div-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method

.method public getSourceVideoDuration()J
    .registers 5

    .line 97
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 98
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumb()Lcom/ss/android/medialib/model/CoverInfo;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumb(I)Lcom/ss/android/medialib/model/CoverInfo;
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_41

    .line 157
    iget v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mMaxSize:I

    if-ge p1, v1, :cond_41

    iget-object v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    if-nez v1, :cond_c

    goto :goto_41

    .line 158
    :cond_c
    :goto_c
    iget-boolean v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->stopped:Z

    if-nez v1, :cond_41

    .line 159
    monitor-enter p0

    .line 160
    :try_start_11
    iget-object v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1f

    if-gt v1, p1, :cond_25

    const-wide/16 v1, 0xa

    .line 162
    :try_start_1b
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_25

    :catchall_1f
    move-exception p1

    goto :goto_3f

    :catch_21
    move-exception v1

    .line 164
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_2f

    monitor-exit p0

    goto :goto_c

    .line 169
    :cond_2f
    iget-object v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/medialib/model/CoverInfo;

    .line 170
    iget-object v2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit p0

    move-object v0, v1

    goto :goto_41

    .line 172
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_1f

    throw p1

    :cond_41
    :goto_41
    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .registers 7

    .line 55
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 p0, -0x1

    return p0

    .line 56
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeInit(JLjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1c

    .line 58
    iput-wide v2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimIn:J

    .line 59
    invoke-virtual {p0}, Lcom/ss/android/medialib/jni/EffectThumb;->getSourceVideoDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimOut:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mSpeed:F

    :cond_1c
    return p1
.end method

.method public init(Ljava/lang/String;JJF)I
    .registers 11

    .line 74
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 75
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeInit(JLjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_16

    .line 77
    iput-wide p2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimIn:J

    .line 78
    iput-wide p4, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimOut:J

    .line 79
    iput p6, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mSpeed:F

    :cond_16
    return p1
.end method

.method public onThumb([III)V
    .registers 5

    .line 196
    new-instance v0, Lcom/ss/android/medialib/model/CoverInfo;

    invoke-direct {v0, p2, p3, p1}, Lcom/ss/android/medialib/model/CoverInfo;-><init>(II[I)V

    .line 197
    monitor-enter p0

    .line 198
    :try_start_6
    iget-boolean p1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->stopped:Z

    if-nez p1, :cond_15

    .line 199
    iget-object p1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mCovers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_1e

    .line 202
    :cond_15
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_13

    .line 203
    iget-object p0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->thumbListener:Lcom/ss/android/medialib/jni/EffectThumb$ThumbListener;

    if-eqz p0, :cond_1d

    .line 204
    invoke-interface {p0, v0}, Lcom/ss/android/medialib/jni/EffectThumb$ThumbListener;->onThumb(Lcom/ss/android/medialib/model/CoverInfo;)V

    :cond_1d
    return-void

    .line 202
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_13

    throw p1
.end method

.method public renderVideo(JLcom/ss/android/medialib/player/EffectConfig;II)I
    .registers 13

    .line 128
    iget-wide v1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 v0, 0x1

    .line 129
    iput v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mMaxSize:I

    long-to-float p1, p1

    .line 130
    iget p2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mSpeed:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iget-wide v3, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimIn:J

    add-long/2addr p1, v3

    .line 131
    new-array v3, v0, [J

    const/4 v0, 0x0

    aput-wide p1, v3, v0

    move-object v0, p0

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeRenderVideo(J[JLcom/ss/android/medialib/player/EffectConfig;II)I

    move-result p0

    return p0
.end method

.method public renderVideo([JLcom/ss/android/medialib/player/EffectConfig;II)I
    .registers 13

    .line 110
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 111
    :cond_a
    array-length v0, p1

    iput v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mMaxSize:I

    const/4 v0, 0x0

    .line 112
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_20

    .line 113
    aget-wide v1, p1, v0

    long-to-float v1, v1

    iget v2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mSpeed:F

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iget-wide v3, p0, Lcom/ss/android/medialib/jni/EffectThumb;->mTrimIn:J

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 115
    :cond_20
    iget-wide v2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeRenderVideo(J[JLcom/ss/android/medialib/player/EffectConfig;II)I

    move-result p0

    return p0
.end method

.method public setThumbListener(Lcom/ss/android/medialib/jni/EffectThumb$ThumbListener;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/ss/android/medialib/jni/EffectThumb;->thumbListener:Lcom/ss/android/medialib/jni/EffectThumb$ThumbListener;

    return-void
.end method

.method public declared-synchronized stopRender()V
    .registers 6

    monitor-enter p0

    .line 136
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const/4 v4, 0x1

    .line 137
    :try_start_c
    iput-boolean v4, p0, Lcom/ss/android/medialib/jni/EffectThumb;->stopped:Z

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/jni/EffectThumb;->nativeStop(J)V

    .line 139
    iput-wide v2, p0, Lcom/ss/android/medialib/jni/EffectThumb;->handle:J
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_15

    .line 140
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
