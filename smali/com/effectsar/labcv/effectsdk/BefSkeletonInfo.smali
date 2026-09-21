.class public Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;,
        Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$Skeleton;
    }
.end annotation


# instance fields
.field private skeletonNum:I

.field private skeletons:[Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$Skeleton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkeletonNum()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;->skeletonNum:I

    return p0
.end method

.method public getSkeletons()[Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$Skeleton;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;->skeletons:[Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$Skeleton;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 51
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$Skeleton;

    :cond_7
    return-object p0
.end method

.method public setSkeletonNum(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;->skeletonNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefSkeletonInfo{skeletons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;->skeletons:[Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$Skeleton;

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skeletonNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;->skeletonNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
