.class public Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/ITEParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute$ExpressionType;
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

.field private parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

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

    .line 13
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

    .line 110
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->age:F

    return p0
.end method

.method public getAngryScore()F
    .registers 1

    .line 294
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->angryScore:F

    return p0
.end method

.method public getArousal()F
    .registers 1

    .line 246
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->arousal:F

    return p0
.end method

.method public getAttractive()F
    .registers 1

    .line 142
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->attractive:F

    return p0
.end method

.method public getBlurScore()F
    .registers 1

    .line 422
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->blurScore:F

    return p0
.end method

.method public getBoyProb()F
    .registers 1

    .line 126
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->boyProb:F

    return p0
.end method

.method public getExpProbs()[F
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->expProbs:[F

    return-object p0
.end method

.method public getExpType()I
    .registers 1

    .line 174
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->expType:I

    return p0
.end method

.method public getHappyScore()F
    .registers 1

    .line 158
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->happyScore:F

    return p0
.end method

.method public getIllumination()F
    .registers 1

    .line 438
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->illumination:F

    return p0
.end method

.method public getLipstickProb()F
    .registers 1

    .line 374
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->lipstickProb:F

    return p0
.end method

.method public getMaskProb()F
    .registers 1

    .line 326
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->maskProb:F

    return p0
.end method

.method public getMustacheProb()F
    .registers 1

    .line 358
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->mustacheProb:F

    return p0
.end method

.method public getQuality()F
    .registers 1

    .line 230
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->quality:F

    return p0
.end method

.method public getRealFaceProb()F
    .registers 1

    .line 214
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->realFaceProb:F

    return p0
.end method

.method public getSadScore()F
    .registers 1

    .line 278
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->sadScore:F

    return p0
.end method

.method public getSurpriseScore()F
    .registers 1

    .line 310
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->surpriseScore:F

    return p0
.end method

.method public getValence()F
    .registers 1

    .line 262
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->valence:F

    return p0
.end method

.method public getWearGlassProb()F
    .registers 1

    .line 390
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearGlassProb:F

    return p0
.end method

.method public getWearHatProb()F
    .registers 1

    .line 342
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearHatProb:F

    return p0
.end method

.method public getWearSunglassProb()F
    .registers 1

    .line 406
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearSunglassProb:F

    return p0
.end method

.method public readFromParcel()V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    if-nez v0, :cond_5

    return-void

    .line 18
    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->age:F

    .line 19
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->boyProb:F

    .line 20
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->attractive:F

    .line 21
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->happyScore:F

    .line 22
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->expType:I

    .line 23
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;->readFloatArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->expProbs:[F

    .line 24
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->realFaceProb:F

    .line 25
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->quality:F

    .line 26
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->arousal:F

    .line 27
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->valence:F

    .line 28
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->sadScore:F

    .line 29
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->angryScore:F

    .line 30
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->surpriseScore:F

    .line 31
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->maskProb:F

    .line 32
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearHatProb:F

    .line 33
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->mustacheProb:F

    .line 34
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->lipstickProb:F

    .line 35
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearGlassProb:F

    .line 36
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearSunglassProb:F

    .line 37
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->blurScore:F

    .line 38
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->illumination:F

    return-void
.end method

.method public setAge(F)V
    .registers 2

    .line 118
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->age:F

    return-void
.end method

.method public setAngryScore(F)V
    .registers 2

    .line 302
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->angryScore:F

    return-void
.end method

.method public setArousal(F)V
    .registers 2

    .line 254
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->arousal:F

    return-void
.end method

.method public setAttractive(F)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->attractive:F

    return-void
.end method

.method public setBlurScore(F)V
    .registers 2

    .line 430
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->blurScore:F

    return-void
.end method

.method public setBoyProb(F)V
    .registers 2

    .line 134
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->boyProb:F

    return-void
.end method

.method public setExpProbs([F)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->expProbs:[F

    return-void
.end method

.method public setExpType(I)V
    .registers 2

    .line 182
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->expType:I

    return-void
.end method

.method public setHappyScore(F)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->happyScore:F

    return-void
.end method

.method public setIllumination(F)V
    .registers 2

    .line 446
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->illumination:F

    return-void
.end method

.method public setLipstickProb(F)V
    .registers 2

    .line 382
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->lipstickProb:F

    return-void
.end method

.method public setMaskProb(F)V
    .registers 2

    .line 334
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->maskProb:F

    return-void
.end method

.method public setMustacheProb(F)V
    .registers 2

    .line 366
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->mustacheProb:F

    return-void
.end method

.method public setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    return-void
.end method

.method public setQuality(F)V
    .registers 2

    .line 238
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->quality:F

    return-void
.end method

.method public setRealFaceProb(F)V
    .registers 2

    .line 222
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->realFaceProb:F

    return-void
.end method

.method public setSadScore(F)V
    .registers 2

    .line 286
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->sadScore:F

    return-void
.end method

.method public setSurpriseScore(F)V
    .registers 2

    .line 318
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->surpriseScore:F

    return-void
.end method

.method public setValence(F)V
    .registers 2

    .line 270
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->valence:F

    return-void
.end method

.method public setWearGlassProb(F)V
    .registers 2

    .line 398
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearGlassProb:F

    return-void
.end method

.method public setWearHatProb(F)V
    .registers 2

    .line 350
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearHatProb:F

    return-void
.end method

.method public setWearSunglassProb(F)V
    .registers 2

    .line 414
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttribute;->wearSunglassProb:F

    return-void
.end method
