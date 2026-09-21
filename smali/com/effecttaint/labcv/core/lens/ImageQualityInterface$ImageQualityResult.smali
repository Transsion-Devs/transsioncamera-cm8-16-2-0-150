.class public Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field height:I

.field isDeviceJitter:Z

.field score:F

.field texture:I

.field width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->texture:I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->height:I

    .line 50
    iput v0, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->width:I

    return-void
.end method


# virtual methods
.method public getScore()F
    .registers 1

    .line 101
    iget p0, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->score:F

    return p0
.end method

.method public isDeviceJitter()Z
    .registers 1

    .line 106
    iget-boolean p0, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->isDeviceJitter:Z

    return p0
.end method

.method public setDeviceJitter(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->isDeviceJitter:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->height:I

    return-void
.end method

.method public setScore(F)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->score:F

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->width:I

    return-void
.end method
