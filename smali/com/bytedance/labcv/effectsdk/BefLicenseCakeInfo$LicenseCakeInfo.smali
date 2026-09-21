.class public Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LicenseCakeInfo"
.end annotation


# instance fields
.field private det_score:F

.field private id:I

.field private label:I

.field private rect:Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->det_score:F

    return-void
.end method


# virtual methods
.method public getDet_score()F
    .registers 1

    .line 123
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->det_score:F

    return p0
.end method

.method public getId()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->id:I

    return p0
.end method

.method public getLabel()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->label:I

    return p0
.end method

.method public getRect()Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->rect:Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;

    return-object p0
.end method

.method public setDet_score(F)V
    .registers 2

    .line 127
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->det_score:F

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->id:I

    return-void
.end method

.method public setLabel(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->label:I

    return-void
.end method

.method public setRect(Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->rect:Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LicenseCakeInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->label:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", det_score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->det_score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;->rect:Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
