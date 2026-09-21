.class public Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;
    }
.end annotation


# instance fields
.field private mFirstFrame:Z

.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mInited:Z

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mFirstFrame:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreate(Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;)I
.end method

.method private native nativeProcess(Ljava/nio/ByteBuffer;Z)F
.end method

.method private native nativeRelease()I
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;Ljava/lang/String;Z)I
    .registers 5

    .line 22
    invoke-direct {p0, p2}, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->nativeCreate(Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;)I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    .line 28
    :cond_7
    invoke-direct {p0, p1, p3, p4}, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_e

    return p1

    :cond_e
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mInited:Z

    const/4 p0, 0x0

    return p0
.end method

.method public process(Ljava/nio/ByteBuffer;)F
    .registers 3

    .line 37
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mInited:Z

    if-nez v0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 40
    :cond_7
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mFirstFrame:Z

    invoke-direct {p0, p1, v0}, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->nativeProcess(Ljava/nio/ByteBuffer;Z)F

    move-result p1

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mFirstFrame:Z

    return p1
.end method

.method public release()I
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 49
    :cond_6
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->nativeRelease()I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mInited:Z

    return v0
.end method

.method public setSwitchScene(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;->mFirstFrame:Z

    return-void
.end method
