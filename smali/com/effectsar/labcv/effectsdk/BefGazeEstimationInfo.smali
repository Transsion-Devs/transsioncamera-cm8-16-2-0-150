.class public Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;
    }
.end annotation


# instance fields
.field faceCount:I

.field infos:[Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceCount()I
    .registers 1

    .line 8
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo;->faceCount:I

    return p0
.end method

.method public getInfos()[Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo;->infos:[Lcom/effectsar/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;

    return-object p0
.end method
