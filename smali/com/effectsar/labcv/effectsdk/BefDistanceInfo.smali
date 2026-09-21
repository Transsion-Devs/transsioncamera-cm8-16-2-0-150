.class public Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;
    }
.end annotation


# instance fields
.field private dists:[F

.field private faceCount:I

.field private faceRects:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBefDistance()[Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;
    .registers 6

    .line 24
    iget v0, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->faceCount:I

    new-array v0, v0, [Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;

    const/4 v1, 0x0

    .line 26
    :goto_5
    iget v2, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->faceCount:I

    if-ge v1, v2, :cond_1b

    .line 27
    new-instance v2, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;

    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->faceRects:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->dists:[F

    aget v4, v4, v1

    invoke-direct {v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;-><init>(Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;F)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-object v0
.end method

.method public getDists()[F
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->dists:[F

    return-object p0
.end method

.method public getFaceCount()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->faceCount:I

    return p0
.end method

.method public getFaceRects()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;->faceRects:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 33
    const-string p0, ""

    return-object p0
.end method
