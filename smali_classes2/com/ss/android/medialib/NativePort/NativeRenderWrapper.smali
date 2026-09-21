.class public Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 14
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetFilterIntensity(JLjava/lang/String;)F
.end method

.method private native nativeInit(JIILjava/lang/String;)I
.end method

.method private native nativeProcessTexture(JIID)I
.end method

.method private native nativeSetDoubleFilterNew(JLjava/lang/String;Ljava/lang/String;FFF)I
.end method

.method private native nativeSetFilter(JLjava/lang/String;F)I
.end method

.method private native nativeSetFilter2(JLjava/lang/String;Ljava/lang/String;FF)I
.end method

.method private native nativeSetFilterNew(JLjava/lang/String;F)I
.end method


# virtual methods
.method public destroy()V
    .registers 6

    .line 67
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    .line 70
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeDestroy(J)V

    .line 71
    iput-wide v2, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    return-void
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 6

    .line 53
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 56
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeGetFilterIntensity(JLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public init(IILjava/lang/String;)V
    .registers 11

    .line 18
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 19
    invoke-direct {p0}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeInit(JIILjava/lang/String;)I

    :cond_15
    return-void
.end method

.method public processTexture(II)V
    .registers 10

    .line 60
    iget-wide v1, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeProcessTexture(JIID)I

    return-void
.end method

.method public setFilter(Ljava/lang/String;F)V
    .registers 7

    .line 25
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 28
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeSetFilter(JLjava/lang/String;F)I

    return-void
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;FF)V
    .registers 12

    .line 32
    iget-wide v1, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeSetFilter2(JLjava/lang/String;Ljava/lang/String;FF)I

    return-void
.end method

.method public setFilterNew(Ljava/lang/String;F)V
    .registers 7

    .line 39
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 42
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeSetFilterNew(JLjava/lang/String;F)I

    return-void
.end method

.method public setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V
    .registers 14

    .line 46
    iget-wide v1, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->nativeSetDoubleFilterNew(JLjava/lang/String;Ljava/lang/String;FFF)I

    return-void
.end method

.method public valid()Z
    .registers 5

    .line 93
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NativeRenderWrapper;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
