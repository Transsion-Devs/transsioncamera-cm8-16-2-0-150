.class public Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;
    }
.end annotation


# static fields
.field static final SKELETON_3D_EXTENDED_JOINT_NUM:I = 0x40

.field static final SKELETON_3D_HEATMAP_KEYPOINT_NUM:I = 0x1b

.field static final SKELETON_3D_MAX_TARGET_NUM:I = 0x5


# instance fields
.field focal_length:F

.field targetInfos:[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

.field target_num:I

.field tracking:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 11
    new-array v0, v0, [Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->targetInfos:[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    const/4 v0, 0x0

    .line 12
    :goto_9
    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->targetInfos:[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 13
    new-instance v2, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    invoke-direct {v2}, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    return-void
.end method


# virtual methods
.method public getFocal_length()F
    .registers 1

    .line 50
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->focal_length:F

    return p0
.end method

.method public getTargetInfos()[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->targetInfos:[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    return-object p0
.end method

.method public getTarget_num()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->target_num:I

    return p0
.end method

.method public getTracking()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->tracking:I

    return p0
.end method

.method public setFocal_length(F)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->focal_length:F

    return-void
.end method

.method public setTargetInfos([Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->targetInfos:[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    return-void
.end method

.method public setTarget_num(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->target_num:I

    return-void
.end method

.method public setTracking(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->tracking:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefSkeleton3DInfo{targetInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->targetInfos:[Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->target_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", focal_length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->focal_length:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;->tracking:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
