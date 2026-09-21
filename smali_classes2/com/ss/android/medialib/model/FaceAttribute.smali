.class public Lcom/ss/android/medialib/model/FaceAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/FaceAttribute$ExpressionType;
    }
.end annotation


# static fields
.field public static final EXPRESSION_NUM:I = 0x7


# instance fields
.field age:F

.field angryScore:F

.field arousal:F

.field attractive:F

.field blurScore:F

.field boyProb:F

.field expProbs:[F

.field expType:I

.field happyScore:F

.field illumination:F

.field lipstickProb:F

.field maskProb:F

.field mustacheProb:F

.field quality:F

.field realFaceProb:F

.field sadScore:F

.field surpriseScore:F

.field valence:F

.field wearGlassProb:F

.field wearHatProb:F

.field wearSunglassProb:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExpressionNum()I
    .registers 1

    const/4 v0, 0x7

    return v0
.end method


# virtual methods
.method public getAge()F
    .registers 1

    .line 71
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->age:F

    return p0
.end method

.method public getAngryScore()F
    .registers 1

    .line 256
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->angryScore:F

    return p0
.end method

.method public getArousal()F
    .registers 1

    .line 208
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->arousal:F

    return p0
.end method

.method public getAttractive()F
    .registers 1

    .line 103
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->attractive:F

    return p0
.end method

.method public getBlurScore()F
    .registers 1

    .line 384
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->blurScore:F

    return p0
.end method

.method public getBoyProb()F
    .registers 1

    .line 87
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->boyProb:F

    return p0
.end method

.method public getExpProbs()[F
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expProbs:[F

    return-object p0
.end method

.method public getExpType()I
    .registers 1

    .line 135
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expType:I

    return p0
.end method

.method public getHappyScore()F
    .registers 1

    .line 119
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->happyScore:F

    return p0
.end method

.method public getIllumination()F
    .registers 1

    .line 400
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->illumination:F

    return p0
.end method

.method public getLipstickProb()F
    .registers 1

    .line 336
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->lipstickProb:F

    return p0
.end method

.method public getMaskProb()F
    .registers 1

    .line 288
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->maskProb:F

    return p0
.end method

.method public getMustacheProb()F
    .registers 1

    .line 320
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->mustacheProb:F

    return p0
.end method

.method public getQuality()F
    .registers 1

    .line 192
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->quality:F

    return p0
.end method

.method public getRealFaceProb()F
    .registers 1

    .line 176
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->realFaceProb:F

    return p0
.end method

.method public getSadScore()F
    .registers 1

    .line 240
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->sadScore:F

    return p0
.end method

.method public getSurpriseScore()F
    .registers 1

    .line 272
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->surpriseScore:F

    return p0
.end method

.method public getValence()F
    .registers 1

    .line 224
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->valence:F

    return p0
.end method

.method public getWearGlassProb()F
    .registers 1

    .line 352
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->wearGlassProb:F

    return p0
.end method

.method public getWearHatProb()F
    .registers 1

    .line 304
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->wearHatProb:F

    return p0
.end method

.method public getWearSunglassProb()F
    .registers 1

    .line 368
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->wearSunglassProb:F

    return p0
.end method

.method public setAge(F)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->age:F

    return-void
.end method

.method public setAngryScore(F)V
    .registers 2

    .line 264
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->angryScore:F

    return-void
.end method

.method public setArousal(F)V
    .registers 2

    .line 216
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->arousal:F

    return-void
.end method

.method public setAttractive(F)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->attractive:F

    return-void
.end method

.method public setBlurScore(F)V
    .registers 2

    .line 392
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->blurScore:F

    return-void
.end method

.method public setBoyProb(F)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->boyProb:F

    return-void
.end method

.method public setExpProbs([F)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expProbs:[F

    return-void
.end method

.method public setExpType(I)V
    .registers 2

    .line 143
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expType:I

    return-void
.end method

.method public setHappyScore(F)V
    .registers 2

    .line 127
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->happyScore:F

    return-void
.end method

.method public setIllumination(F)V
    .registers 2

    .line 408
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->illumination:F

    return-void
.end method

.method public setLipstickProb(F)V
    .registers 2

    .line 344
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->lipstickProb:F

    return-void
.end method

.method public setMaskProb(F)V
    .registers 2

    .line 296
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->maskProb:F

    return-void
.end method

.method public setMustacheProb(F)V
    .registers 2

    .line 328
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->mustacheProb:F

    return-void
.end method

.method public setQuality(F)V
    .registers 2

    .line 200
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->quality:F

    return-void
.end method

.method public setRealFaceProb(F)V
    .registers 2

    .line 184
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->realFaceProb:F

    return-void
.end method

.method public setSadScore(F)V
    .registers 2

    .line 248
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->sadScore:F

    return-void
.end method

.method public setSurpriseScore(F)V
    .registers 2

    .line 280
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->surpriseScore:F

    return-void
.end method

.method public setValence(F)V
    .registers 2

    .line 232
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->valence:F

    return-void
.end method

.method public setWearGlassProb(F)V
    .registers 2

    .line 360
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->wearGlassProb:F

    return-void
.end method

.method public setWearHatProb(F)V
    .registers 2

    .line 312
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->wearHatProb:F

    return-void
.end method

.method public setWearSunglassProb(F)V
    .registers 2

    .line 376
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->wearSunglassProb:F

    return-void
.end method
