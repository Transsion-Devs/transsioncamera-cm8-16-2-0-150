.class public Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetInfo"
.end annotation


# instance fields
.field public betas:[F

.field public box:[F

.field public heatmap_kpts_2d:[F

.field public joint_num:I

.field public joint_valid:[F

.field public joints:[F

.field public new_target:I

.field public quaternion:[F

.field public root:[F

.field public scores:[F

.field public tracking_id:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 96
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->quaternion:[F

    const/16 v0, 0xa

    .line 97
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->betas:[F

    const/4 v0, 0x3

    .line 98
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->root:[F

    const/16 v0, 0xc0

    .line 99
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->joints:[F

    const/16 v0, 0x40

    .line 100
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->scores:[F

    .line 101
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->joint_valid:[F

    const/16 v0, 0x36

    .line 102
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->heatmap_kpts_2d:[F

    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->box:[F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetInfo{quaternion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->quaternion:[F

    .line 81
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", betas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->betas:[F

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->root:[F

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", joints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->joints:[F

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->scores:[F

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", joint_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->joint_valid:[F

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", heatmap_kpts_2d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->heatmap_kpts_2d:[F

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->box:[F

    .line 88
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", joint_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->joint_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tracking_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->tracking_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new_target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeleton3DInfo$TargetInfo;->new_target:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
