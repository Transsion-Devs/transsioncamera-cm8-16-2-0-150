.class public Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;,
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;,
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;,
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;
    }
.end annotation


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;ZLcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;)I
.end method

.method private native nativeProcess(ILcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;)I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public create(Ljava/lang/String;ZLcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;)I
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->nativeCreate(Ljava/lang/String;ZLcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return p1

    :cond_a
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return p1
.end method

.method public process(ILcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;)I
    .registers 4

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_6
    new-instance v0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->nativeProcess(ILcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;)I

    move-result p0

    if-gez p0, :cond_12

    return p0

    .line 37
    :cond_12
    iget p0, v0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;->textureId:I

    return p0
.end method

.method public release()V
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    if-eqz v0, :cond_7

    .line 42
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return-void
.end method
