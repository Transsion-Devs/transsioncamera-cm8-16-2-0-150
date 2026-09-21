.class public Lcom/bef/effectsdk/algorithm/RectDocDet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/amazing/annotation/EffectKeep;
.end annotation


# static fields
.field public static final RectDocDetAngleThr:I = 0x3

.field public static final RectDocDetIsVideoMode:I = 0x2

.field public static final RectDocDetIsVideoTypeNo:I = 0x2

.field public static final RectDocDetIsVideoTypeYes:I = 0x1

.field public static final RectDocDetPreProcessMode:I = 0x1

.field public static final RectDocDetPreprocessTypeCenterCut:I = 0x2

.field public static final RectDocDetPreprocessTypeNN:I = 0x1


# instance fields
.field private mFinder:Lcom/bef/effectsdk/ResourceFinder;

.field private mFinderHandle:J

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFinderHandleValid()Z
    .registers 5

    const-wide/16 v0, 0x0

    .line 137
    iget-wide v2, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinderHandle:J

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

    .line 134
    iget-wide v2, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private native nativeCreate()J
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeDestroy(J)I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeInit(JJI)I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeInitWithPath(JLjava/lang/String;I)I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeProcess(JLandroid/graphics/Bitmap;I)Lcom/bef/effectsdk/algorithm/RectDocDetResult;
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end method

.method private native nativeSetParamF(JIF)I
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation
.end method


# virtual methods
.method public create()Z
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    .line 52
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isNativeHandleValid()Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .registers 6

    .line 122
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isNativeHandleValid()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_f

    .line 123
    iget-wide v3, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    invoke-direct {p0, v3, v4}, Lcom/bef/effectsdk/algorithm/RectDocDet;->nativeDestroy(J)I

    .line 124
    iput-wide v1, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    .line 127
    :cond_f
    iget-object v0, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinder:Lcom/bef/effectsdk/ResourceFinder;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isFinderHandleValid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 128
    iget-object v0, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinder:Lcom/bef/effectsdk/ResourceFinder;

    iget-wide v3, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinderHandle:J

    invoke-interface {v0, v3, v4}, Lcom/bef/effectsdk/ResourceFinder;->release(J)V

    .line 129
    iput-wide v1, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinderHandle:J

    :cond_22
    return-void
.end method

.method public init(Lcom/bef/effectsdk/ResourceFinder;I)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 62
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isNativeHandleValid()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2c

    .line 65
    :cond_a
    iput-object p1, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinder:Lcom/bef/effectsdk/ResourceFinder;

    .line 66
    iget-wide v1, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    invoke-interface {p1, v1, v2}, Lcom/bef/effectsdk/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinderHandle:J

    .line 68
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isFinderHandleValid()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 69
    invoke-virtual {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->destroy()V

    return v0

    .line 73
    :cond_1e
    iget-wide v2, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    iget-wide v4, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mFinderHandle:J

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bef/effectsdk/algorithm/RectDocDet;->nativeInit(JJI)I

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

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isNativeHandleValid()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1a

    .line 86
    :cond_10
    iget-wide v1, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/bef/effectsdk/algorithm/RectDocDet;->nativeInitWithPath(JLjava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public process(Landroid/graphics/Bitmap;I)Lcom/bef/effectsdk/algorithm/RectDocDetResult;
    .registers 5

    .line 109
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isNativeHandleValid()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_9

    goto :goto_10

    .line 113
    :cond_9
    iget-wide v0, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bef/effectsdk/algorithm/RectDocDet;->nativeProcess(JLandroid/graphics/Bitmap;I)Lcom/bef/effectsdk/algorithm/RectDocDetResult;

    move-result-object p0

    return-object p0

    .line 110
    :cond_10
    :goto_10
    new-instance p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;

    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDetResult;-><init>()V

    return-object p0
.end method

.method public setParamF(IF)Z
    .registers 7

    .line 96
    invoke-direct {p0}, Lcom/bef/effectsdk/algorithm/RectDocDet;->isNativeHandleValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 99
    :cond_8
    iget-wide v2, p0, Lcom/bef/effectsdk/algorithm/RectDocDet;->mNativeHandle:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/bef/effectsdk/algorithm/RectDocDet;->nativeSetParamF(JIF)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method
