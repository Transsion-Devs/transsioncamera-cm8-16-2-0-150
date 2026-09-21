.class public Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/ITEParcelable;


# static fields
.field private static final TAG:Ljava/lang/String; = "VEFaceAttributeInfo"


# instance fields
.field private faceCount:I

.field info:[Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

.field private parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/ss/android/medialib/model/FaceAttributeInfo;)Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    new-instance v0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;

    invoke-direct {v0}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/ss/android/medialib/model/FaceAttributeInfo;->getInfo()[Lcom/ss/android/medialib/model/FaceAttribute;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_16

    .line 62
    new-array p0, v1, [Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    .line 63
    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->setInfo([Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;)V

    return-object v0

    .line 65
    :cond_16
    array-length v2, p0

    new-array v2, v2, [Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    .line 66
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->setInfo([Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;)V

    .line 68
    array-length v3, p0

    move v4, v1

    :goto_1e
    if-ge v1, v3, :cond_cc

    aget-object v5, p0, v1

    .line 69
    new-instance v6, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    invoke-direct {v6}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;-><init>()V

    add-int/lit8 v7, v4, 0x1

    .line 70
    aput-object v6, v2, v4

    if-eqz v5, :cond_c7

    .line 72
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getAge()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setAge(F)V

    .line 73
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getAngryScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setAngryScore(F)V

    .line 74
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getArousal()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setArousal(F)V

    .line 75
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getAngryScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setAngryScore(F)V

    .line 76
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getAttractive()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setAttractive(F)V

    .line 77
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getBlurScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setBlurScore(F)V

    .line 78
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getBoyProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setBoyProb(F)V

    .line 79
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getExpProbs()[F

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setExpProbs([F)V

    .line 80
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getExpType()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setExpType(I)V

    .line 81
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getHappyScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setHappyScore(F)V

    .line 82
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getIllumination()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setIllumination(F)V

    .line 83
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getLipstickProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setLipstickProb(F)V

    .line 84
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getMaskProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setMaskProb(F)V

    .line 85
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getMustacheProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setMustacheProb(F)V

    .line 86
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getQuality()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setQuality(F)V

    .line 87
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getRealFaceProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setRealFaceProb(F)V

    .line 88
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getSadScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setSadScore(F)V

    .line 89
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getSurpriseScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setSurpriseScore(F)V

    .line 90
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getValence()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setValence(F)V

    .line 91
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getWearGlassProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setWearGlassProb(F)V

    .line 92
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getWearHatProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setWearHatProb(F)V

    .line 93
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/FaceAttribute;->getWearSunglassProb()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setWearSunglassProb(F)V

    :cond_c7
    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto/16 :goto_1e

    :cond_cc
    return-object v0
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->info:[Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    return-object p0
.end method

.method public readFromParcel()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    if-nez v0, :cond_5

    goto :goto_45

    .line 106
    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->faceCount:I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->faceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEFaceAttributeInfo"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->faceCount:I

    if-nez v0, :cond_28

    goto :goto_45

    .line 109
    :cond_28
    new-array v0, v0, [Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    iput-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->info:[Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    const/4 v0, 0x0

    .line 110
    :goto_2d
    iget v1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->faceCount:I

    if-ge v0, v1, :cond_45

    .line 111
    new-instance v1, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    invoke-direct {v1}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;-><init>()V

    .line 112
    iget-object v2, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V

    .line 113
    invoke-virtual {v1}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->readFromParcel()V

    .line 114
    iget-object v2, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->info:[Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_45
    :goto_45
    return-void
.end method

.method public setInfo([Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->info:[Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;

    return-void
.end method

.method public setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    return-void
.end method
