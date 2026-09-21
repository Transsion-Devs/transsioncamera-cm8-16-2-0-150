.class public Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;
    }
.end annotation


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J

.field private mResult:Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mInited:Z

    return-void
.end method

.method private native nativeCreateHandle(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetModel(Ljava/lang/String;)I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public detectSkeleton3d(Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;)I
    .registers 4

    .line 54
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mInited:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 58
    :cond_6
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mResult:Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;

    invoke-direct {p0, p1, v0}, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->nativeDetect(Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;)I

    move-result p0

    if-eqz p0, :cond_25

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeDetect return "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_effect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public getSkeleton3DInfo()Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mResult:Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;

    return-object p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->nativeCreateHandle(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_7

    return p1

    .line 29
    :cond_7
    invoke-direct {p0, p4}, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->nativeSetModel(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_e

    return p1

    :cond_e
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mInited:Z

    .line 34
    new-instance p2, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;

    invoke-direct {p2}, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;-><init>()V

    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mResult:Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mInited:Z

    if-eqz v0, :cond_a

    .line 40
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->nativeRelease()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->mInited:Z

    :cond_a
    return-void
.end method

.method public setParam(IF)I
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
