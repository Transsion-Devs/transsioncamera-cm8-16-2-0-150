.class public Lcom/bytedance/labcv/effectsdk/PortraitMatting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;
    }
.end annotation


# instance fields
.field private inited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeInit(Ljava/lang/String;I)I
.end method

.method private native nativeMatting(Ljava/nio/ByteBuffer;IIIIIZLcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParam(II)I
.end method


# virtual methods
.method public detectMatting(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;Z)Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;
    .registers 17

    .line 124
    new-instance v8, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;

    invoke-direct {v8, p0}, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;-><init>(Lcom/bytedance/labcv/effectsdk/PortraitMatting;)V

    .line 125
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeMatting(Ljava/nio/ByteBuffer;IIIIIZLcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;)I

    move-result p0

    if-eqz p0, :cond_30

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeMatting return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_byteeffect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_30
    return-object v8
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;Ljava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;Ljava/lang/String;Z)I
    .registers 7

    .line 73
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    if-nez v0, :cond_25

    .line 75
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeCreateHandle()I

    move-result v0

    if-nez v0, :cond_e

    .line 77
    invoke-direct {p0, p1, p4, p5}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    :cond_e
    const/4 p1, 0x1

    if-nez v0, :cond_1e

    .line 81
    invoke-virtual {p3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->getValue()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeInit(Ljava/lang/String;I)I

    move-result v0

    .line 82
    sget-object p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->BEF_MP_EdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;I)I

    :cond_1e
    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 84
    :goto_22
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return v0

    :cond_25
    const/4 p0, -0x1

    return p0
.end method

.method public isInited()Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    if-eqz v0, :cond_7

    .line 101
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return-void
.end method

.method public setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;I)I
    .registers 3

    .line 147
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeSetParam(II)I

    move-result p0

    return p0
.end method
