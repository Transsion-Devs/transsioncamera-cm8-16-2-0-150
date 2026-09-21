.class public Lcom/bef/byteeffect/algorithm/GeneralObjDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation


# instance fields
.field public final ModelType_kPureDetect:I

.field public final ParamType_kDetectShortSideLen:I

.field private mFinder:Lcom/bef/byteeffect/ResourceFinder;

.field private mFinderHandle:J

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->ModelType_kPureDetect:I

    .line 16
    iput v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->ParamType_kDetectShortSideLen:I

    return-void
.end method

.method private isFinderHandleValid()Z
    .registers 5

    const-wide/16 v0, 0x0

    .line 146
    iget-wide v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinderHandle:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isNativeHandleValid()Z
    .registers 5

    const-wide/16 v0, 0x0

    .line 142
    iget-wide v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private native nativeCreate()J
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeDestroy(J)I
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeInit(JJI)I
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeInitWithPath(JLjava/lang/String;I)I
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeProcess(JLandroid/graphics/Bitmap;I)Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeSetParamF(JIF)I
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeSetParamS(JILjava/lang/String;)I
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation
.end method


# virtual methods
.method public create()Z
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    .line 50
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .registers 6

    .line 130
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_f

    .line 131
    iget-wide v3, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    invoke-direct {p0, v3, v4}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeDestroy(J)I

    .line 132
    iput-wide v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinder:Lcom/bef/byteeffect/ResourceFinder;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isFinderHandleValid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 136
    iget-object v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinder:Lcom/bef/byteeffect/ResourceFinder;

    iget-wide v3, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinderHandle:J

    invoke-interface {v0, v3, v4}, Lcom/bef/byteeffect/ResourceFinder;->release(J)V

    .line 137
    iput-wide v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinderHandle:J

    :cond_22
    return-void
.end method

.method public init(Lcom/bef/byteeffect/ResourceFinder;I)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 60
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2c

    .line 63
    :cond_a
    iput-object p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinder:Lcom/bef/byteeffect/ResourceFinder;

    .line 64
    iget-wide v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    invoke-interface {p1, v1, v2}, Lcom/bef/byteeffect/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinderHandle:J

    .line 65
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isFinderHandleValid()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 66
    invoke-virtual {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->destroy()V

    return v0

    .line 69
    :cond_1e
    iget-wide v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    iget-wide v4, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mFinderHandle:J

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeInit(JJI)I

    move-result p0

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v0
.end method

.method public initWithPath(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1a

    .line 82
    :cond_10
    iget-wide v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeInitWithPath(JLjava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public process(Landroid/graphics/Bitmap;I)Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;
    .registers 5

    .line 118
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_9

    goto :goto_13

    .line 121
    :cond_9
    iget-wide v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeProcess(JLandroid/graphics/Bitmap;I)Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->logData()V

    return-object p0

    .line 119
    :cond_13
    :goto_13
    new-instance p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;

    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;-><init>()V

    return-object p0
.end method

.method public setParamF(IF)Z
    .registers 7

    .line 92
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 95
    :cond_8
    iget-wide v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeSetParamF(JIF)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setParamS(ILjava/lang/String;)Z
    .registers 7

    .line 105
    invoke-direct {p0}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->isNativeHandleValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 108
    :cond_8
    iget-wide v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->mNativeHandle:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/bef/byteeffect/algorithm/GeneralObjDetector;->nativeSetParamS(JILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method
