.class public Lcom/bytedance/labcv/effectsdk/HalEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAppendComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeCleanPipeline()I
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeProcessBuffer([B[BIIIIII)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeRemoveComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeSetCameraPosition(Z)I
.end method

.method private native nativeSetComposer(Ljava/lang/String;)I
.end method

.method private native nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeSetFilter(Ljava/lang/String;)I
.end method

.method private native nativeSetHalNode(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeSetSticker(Ljava/lang/String;)I
.end method

.method private native nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeUpdateIntensity(IF)I
.end method


# virtual methods
.method public appendComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 405
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeAppendComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cleanPipeline()Z
    .registers 3

    .line 308
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 311
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeCleanPipeline()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 30
    invoke-direct {p0, p2, p1, p3}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeInit(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_c

    const/4 v1, 0x1

    .line 31
    :cond_c
    iput-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    return p1

    :cond_f
    return v1
.end method

.method public isInited()Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    return p0
.end method

.method public processBuffer([B[BIIIIII)Z
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v2, p6

    move p6, p3

    move p3, p5

    move p5, p7

    move p7, p4

    move p4, v2

    .line 453
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeProcessBuffer([B[BIIIIII)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public release()V
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    if-eqz v0, :cond_7

    .line 112
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    return-void
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 419
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeRemoveComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCameraPostion(Z)Z
    .registers 4

    .line 96
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 99
    :cond_6
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeSetCameraPosition(Z)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTags([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 3

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 4

    .line 160
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 164
    const-string p1, ""

    .line 166
    :cond_a
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeSetFilter(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setHalComposerNodes(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeSetHalNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setSticker(Ljava/lang/String;)Z
    .registers 4

    .line 193
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 197
    const-string p1, ""

    .line 199
    :cond_a
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeSetSticker(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public updateComposerNodes(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 431
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateIntensity(IF)Z
    .registers 3

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/HalEffect;->nativeUpdateIntensity(IF)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
