.class public Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefPublicDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefKeyPoint"
.end annotation


# instance fields
.field private isDetect:Z

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFZ)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->x:F

    .line 51
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->y:F

    .line 52
    iput-boolean p3, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->isDetect:Z

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 1

    .line 56
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->x:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 64
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->y:F

    return p0
.end method

.method public isDetect()Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->isDetect:Z

    return p0
.end method

.method public setDetect(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->isDetect:Z

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefKeyPoint{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;->isDetect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
