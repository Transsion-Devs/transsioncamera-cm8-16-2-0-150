.class public Lcom/effectsar/labcv/effectsdk/CineMove;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;,
        Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private mInited:Z

.field private mIsFirstFrame:Z

.field private mNativePtr:J

.field private mResultBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :goto_a
    const-string v0, "CineMove"

    sput-object v0, Lcom/effectsar/labcv/effectsdk/CineMove;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mResultBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private native nativeCreate(ILjava/lang/String;Z)I
.end method

.method private native nativeProcess(IIIIIZZLjava/lang/Integer;)I
.end method

.method private native nativeRelease()I
.end method


# virtual methods
.method public init(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 5

    .line 74
    invoke-direct {p0, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/CineMove;->nativeCreate(ILjava/lang/String;Z)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_9

    move p3, p2

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 75
    :goto_a
    iput-boolean p3, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mInited:Z

    .line 76
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mIsFirstFrame:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mInited:Z

    return p0
.end method

.method public process(ILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIIZLjava/lang/Integer;)I
    .registers 17

    .line 97
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 99
    :cond_6
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget-boolean v6, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mIsFirstFrame:Z

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/effectsar/labcv/effectsdk/CineMove;->nativeProcess(IIIIIZZLjava/lang/Integer;)I

    move-result p1

    if-eqz p1, :cond_30

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "native detect return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bef_effect_ai"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_30
    iget-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mIsFirstFrame:Z

    if-eqz p2, :cond_37

    const/4 p2, 0x0

    .line 104
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mIsFirstFrame:Z

    :cond_37
    return p1
.end method

.method public release()V
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mInited:Z

    if-eqz v0, :cond_7

    .line 111
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/CineMove;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mInited:Z

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CineMove;->mIsFirstFrame:Z

    return-void
.end method
