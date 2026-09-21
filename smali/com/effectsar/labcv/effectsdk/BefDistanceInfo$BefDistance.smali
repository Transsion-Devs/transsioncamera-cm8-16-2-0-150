.class public Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefDistanceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefDistance"
.end annotation


# instance fields
.field private dis:F

.field private faceRect:Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;


# direct methods
.method public constructor <init>(Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;F)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;->faceRect:Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;

    .line 43
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;->dis:F

    return-void
.end method


# virtual methods
.method public getDis()F
    .registers 1

    .line 54
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;->dis:F

    return p0
.end method

.method public getFaceRect()Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDistanceInfo$BefDistance;->faceRect:Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;

    return-object p0
.end method
