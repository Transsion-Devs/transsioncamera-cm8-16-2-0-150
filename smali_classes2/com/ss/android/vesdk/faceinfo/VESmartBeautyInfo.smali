.class public Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private info:[Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/ss/android/medialib/model/SmartBeautyInfo;)Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_4
    new-instance v0, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;

    invoke-direct {v0}, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/ss/android/medialib/model/SmartBeautyInfo;->getInfo()[Lcom/ss/android/medialib/model/SmartBeauty;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;

    .line 37
    invoke-virtual {p0}, Lcom/ss/android/medialib/model/SmartBeautyInfo;->getInfo()[Lcom/ss/android/medialib/model/SmartBeauty;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v3, v2, :cond_172

    aget-object v5, p0, v3

    .line 38
    new-instance v6, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;

    invoke-direct {v6}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;-><init>()V

    add-int/lit8 v7, v4, 0x1

    .line 39
    aput-object v6, v1, v4

    .line 41
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEye()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEye(F)V

    .line 42
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyeScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyeScore(F)V

    .line 44
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFace()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFace(F)V

    .line 45
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceScore(F)V

    .line 47
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceLong()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceLong(F)V

    .line 48
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceLongScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceLongScore(F)V

    .line 50
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceSmooth()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceSmooth(F)V

    .line 51
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceSmoothScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceSmoothScore(F)V

    .line 53
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceWidth()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceWidth(F)V

    .line 54
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceWidthScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceWidthScore(F)V

    .line 56
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getForeHead()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setForeHead(F)V

    .line 57
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getForeHeadScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setForeHeadScore(F)V

    .line 59
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getId()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setId(I)V

    .line 61
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getJaw()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setJaw(F)V

    .line 62
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getJawScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setJawScore(F)V

    .line 64
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLeftDouble()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftDouble(F)V

    .line 65
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLeftDoubleScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftDoubleScore(F)V

    .line 67
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLeftPlump()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftPlump(F)V

    .line 68
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLeftPlumpScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftPlumpScore(F)V

    .line 70
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getNoseWidth()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setNoseWidth(F)V

    .line 71
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getNoseWidthScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setNoseWidthScore(F)V

    .line 73
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getRightDouble()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightDouble(F)V

    .line 74
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getRightDoubleScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightDoubleScore(F)V

    .line 76
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getRightPlump()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightPlump(F)V

    .line 77
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getRightPlumpScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightPlumpScore(F)V

    .line 79
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getChin()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setChin(F)V

    .line 80
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getChinScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setChinScore(F)V

    .line 82
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLwrinkle()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLwrinkle(F)V

    .line 83
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLwrinkleScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLwrinkleScore(F)V

    .line 85
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLeyebag()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeyebag(F)V

    .line 86
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getLeyebagScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeyebagScore(F)V

    .line 88
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getRwrinkle()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRwrinkle(F)V

    .line 89
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getRwrinkleScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRwrinkleScore(F)V

    .line 91
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getReyebag()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setReyebag(F)V

    .line 92
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getReyebagScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setReyebagScore(F)V

    .line 94
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceratio()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceratio(F)V

    .line 95
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getFaceratioScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceratioScore(F)V

    .line 97
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getMouthwidth()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setMouthwidth(F)V

    .line 98
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getMouthwidthScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setMouthwidthScore(F)V

    .line 100
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyeshape()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyeshape(F)V

    .line 101
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyeshapeScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyeshapeScore(F)V

    .line 103
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyedist()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyedist(F)V

    .line 104
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyedistScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyedistScore(F)V

    .line 106
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyebrowdist()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyebrowdist(F)V

    .line 107
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getEyebrowdistScore()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyebrowdistScore(F)V

    .line 109
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getAge()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setAge(F)V

    .line 110
    invoke-virtual {v5}, Lcom/ss/android/medialib/model/SmartBeauty;->getGender()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setGender(F)V

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto/16 :goto_17

    .line 112
    :cond_172
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;->setInfo([Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;)V

    return-object v0
.end method

.method public static readFromByteArray([[B)Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;
    .registers 6

    .line 123
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 124
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result p0

    .line 125
    new-array v2, p0, [Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;

    :goto_e
    if-ge v1, p0, :cond_1c0

    .line 127
    new-instance v3, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;

    invoke-direct {v3}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;-><init>()V

    aput-object v3, v2, v1

    .line 128
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setId(I)V

    .line 129
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftPlump(F)V

    .line 130
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftPlumpScore(F)V

    .line 131
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightPlump(F)V

    .line 132
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightPlumpScore(F)V

    .line 133
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftDouble(F)V

    .line 134
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeftDoubleScore(F)V

    .line 135
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightDouble(F)V

    .line 136
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRightDoubleScore(F)V

    .line 137
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFace(F)V

    .line 138
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceScore(F)V

    .line 139
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceLong(F)V

    .line 140
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceLongScore(F)V

    .line 141
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEye(F)V

    .line 142
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyeScore(F)V

    .line 143
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setJaw(F)V

    .line 144
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setJawScore(F)V

    .line 145
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceWidth(F)V

    .line 146
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceWidthScore(F)V

    .line 147
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceSmooth(F)V

    .line 148
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceSmoothScore(F)V

    .line 149
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setNoseWidth(F)V

    .line 150
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setNoseWidthScore(F)V

    .line 151
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setForeHead(F)V

    .line 152
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setForeHeadScore(F)V

    .line 153
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setChin(F)V

    .line 154
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setChinScore(F)V

    .line 155
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLwrinkle(F)V

    .line 156
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLwrinkleScore(F)V

    .line 157
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeyebag(F)V

    .line 158
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setLeyebagScore(F)V

    .line 159
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRwrinkle(F)V

    .line 160
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setRwrinkleScore(F)V

    .line 161
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setReyebag(F)V

    .line 162
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setReyebagScore(F)V

    .line 163
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceratio(F)V

    .line 164
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setFaceratioScore(F)V

    .line 165
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setMouthwidth(F)V

    .line 166
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setMouthwidthScore(F)V

    .line 167
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyeshape(F)V

    .line 168
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyeshapeScore(F)V

    .line 169
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyedist(F)V

    .line 170
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyedistScore(F)V

    .line 171
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyebrowdist(F)V

    .line 172
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setEyebrowdistScore(F)V

    .line 173
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setAge(F)V

    .line 174
    aget-object v3, v2, v1

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;->setGender(F)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 176
    :cond_1c0
    new-instance p0, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;

    invoke-direct {p0}, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;-><init>()V

    .line 177
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;->setInfo([Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;)V

    return-object p0
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;->info:[Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;

    return-object p0
.end method

.method public setInfo([Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;->info:[Lcom/ss/android/vesdk/faceinfo/VESmartBeauty;

    return-void
.end method
