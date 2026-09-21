.class public Lcom/effectsar/labcv/effectsdk/Vida;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;
    }
.end annotation


# instance fields
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
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Vida;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreate(Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;)I
.end method

.method private native nativeProcess(Ljava/nio/ByteBuffer;II)F
.end method

.method private native nativeRelease()I
.end method


# virtual methods
.method public destroy()I
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Vida;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 46
    :cond_6
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/Vida;->nativeRelease()I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Vida;->mInited:Z

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;Ljava/lang/String;Z)I
    .registers 5

    .line 21
    invoke-direct {p0, p2}, Lcom/effectsar/labcv/effectsdk/Vida;->nativeCreate(Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;)I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    .line 27
    :cond_7
    invoke-direct {p0, p1, p3, p4}, Lcom/effectsar/labcv/effectsdk/Vida;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_e

    return p1

    :cond_e
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/Vida;->mInited:Z

    const/4 p0, 0x0

    return p0
.end method

.method public process(Ljava/nio/ByteBuffer;II)F
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/Vida;->mInited:Z

    if-nez v0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 39
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/effectsdk/Vida;->nativeProcess(Ljava/nio/ByteBuffer;II)F

    move-result p0

    return p0
.end method
