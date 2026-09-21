.class public Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkeletonPoint"
.end annotation


# instance fields
.field is_detect:Z

.field score:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFZF)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->x:F

    .line 113
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->y:F

    .line 114
    iput-boolean p3, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->is_detect:Z

    .line 115
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->score:F

    return-void
.end method


# virtual methods
.method public asPoint()Landroid/graphics/PointF;
    .registers 3

    .line 143
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->x:F

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getScore()F
    .registers 1

    .line 99
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->score:F

    return p0
.end method

.method public getX()F
    .registers 1

    .line 127
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->x:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 135
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->y:F

    return p0
.end method

.method public isDetect()Z
    .registers 1

    .line 123
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->is_detect:Z

    return p0
.end method

.method public isIs_detect()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->is_detect:Z

    return p0
.end method

.method public setIs_detect(Z)V
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->is_detect:Z

    return-void
.end method

.method public setScore(F)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->score:F

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkeletonPoint{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", is_detect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;->is_detect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
