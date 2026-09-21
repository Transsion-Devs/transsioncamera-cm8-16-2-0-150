.class public Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field affineMat:[F

.field alpha:[F

.field beta:[F

.field faceId:I

.field landmarks:[F

.field mv:[F

.field mvp:[F

.field rot:[F

.field success:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffineMat()[F
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->affineMat:[F

    return-object p0
.end method

.method public getAlpha()[F
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->alpha:[F

    return-object p0
.end method

.method public getBeta()[F
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->beta:[F

    return-object p0
.end method

.method public getFaceId()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->faceId:I

    return p0
.end method

.method public getLandmarks()[F
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->landmarks:[F

    return-object p0
.end method

.method public getMv()[F
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->mv:[F

    return-object p0
.end method

.method public getMvp()[F
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->mvp:[F

    return-object p0
.end method

.method public getRot()[F
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->rot:[F

    return-object p0
.end method

.method public isSuccess()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->success:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefAnimojiInfo{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->success:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->faceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", affineMat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->affineMat:[F

    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->alpha:[F

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefAnimojiInfo;->beta:[F

    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
