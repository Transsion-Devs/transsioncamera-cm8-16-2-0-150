.class public Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Skeleton"
.end annotation


# instance fields
.field id:I

.field keypoints:[Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;

.field orientation:I

.field skeletonRect:Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;->id:I

    return p0
.end method

.method public getKeypoints()[Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;->keypoints:[Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 76
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;

    :cond_7
    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;->orientation:I

    return p0
.end method

.method public getSkeletonRect()Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;->skeletonRect:Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skeleton{keypoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;->keypoints:[Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skeletonRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;->skeletonRect:Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
