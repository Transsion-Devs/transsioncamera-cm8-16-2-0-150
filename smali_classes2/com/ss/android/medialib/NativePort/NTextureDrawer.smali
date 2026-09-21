.class public Lcom/ss/android/medialib/NativePort/NTextureDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTextureDrawer"


# instance fields
.field private mNativeAddr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 13
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    return-void
.end method

.method private native nativeCreateHandler()J
.end method

.method private native nativeDrawTexture(JI)V
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeSetDebug(JZ)V
.end method

.method private native nativeSetFlipScale(JFF)V
.end method

.method private native nativeSetRotation(JF)V
.end method

.method private native nativeSetWidthHeight(JII)V
.end method


# virtual methods
.method public create()V
    .registers 5

    .line 23
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 24
    invoke-direct {p0}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeCreateHandler()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    :cond_e
    return-void
.end method

.method public drawTexture(I)V
    .registers 6

    .line 59
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 60
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeDrawTexture(JI)V

    :cond_b
    return-void
.end method

.method public release()V
    .registers 5

    .line 29
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeRelease(J)V

    :cond_b
    return-void
.end method

.method public setDebug(Z)V
    .registers 6

    .line 53
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 54
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeSetDebug(JZ)V

    :cond_b
    return-void
.end method

.method public setFlipScale(FF)V
    .registers 7

    .line 47
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 48
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeSetFlipScale(JFF)V

    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 6

    .line 41
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 42
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeSetRotation(JF)V

    :cond_b
    return-void
.end method

.method public setWidthHeight(II)V
    .registers 7

    .line 35
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->mNativeAddr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 36
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/NativePort/NTextureDrawer;->nativeSetWidthHeight(JII)V

    :cond_b
    return-void
.end method
