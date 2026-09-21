.class public Lcom/effectsar/labcv/effectsdk/BefFaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;,
        Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;,
        Lcom/effectsar/labcv/effectsdk/BefFaceInfo$ExtraInfo;,
        Lcom/effectsar/labcv/effectsdk/BefFaceInfo$Face106;,
        Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceRect;,
        Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FacePoint;
    }
.end annotation


# instance fields
.field private attris:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;

.field private extras:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$ExtraInfo;

.field private face106s:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$Face106;

.field private faceMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

.field private mouthMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

.field private teethMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttris()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->attris:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 34
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;

    :cond_7
    return-object p0
.end method

.method public getExtras()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$ExtraInfo;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->extras:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$ExtraInfo;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 57
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefFaceInfo$ExtraInfo;

    :cond_7
    return-object p0
.end method

.method public getFace106s()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$Face106;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->face106s:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$Face106;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefFaceInfo$Face106;

    return-object p0
.end method

.method public getFaceMaskInfo()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->faceMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 75
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    :cond_7
    return-object p0
.end method

.method public getMouthMaskInfo()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->mouthMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 63
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    :cond_7
    return-object p0
.end method

.method public getTeethMaskInfo()[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->teethMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 69
    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    :cond_7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefFaceInfo{face106s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->face106s:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$Face106;

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->extras:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$ExtraInfo;

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->attris:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mouthMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->mouthMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", teethMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->teethMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;->faceMask:[Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    .line 88
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
