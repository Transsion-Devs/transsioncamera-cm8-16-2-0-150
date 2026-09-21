.class public Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceAttri"
.end annotation


# instance fields
.field age:F

.field attractive:F

.field boy_prob:F

.field confuse_prob:F

.field exp_probs:[F

.field expression_type:I

.field happy_score:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->age:F

    .line 383
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->boy_prob:F

    .line 384
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->attractive:F

    .line 385
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->happy_score:F

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->expression_type:I

    return-void
.end method


# virtual methods
.method public getAge()F
    .registers 1

    .line 391
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->age:F

    return p0
.end method

.method public getAttractive()F
    .registers 1

    .line 423
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->attractive:F

    return p0
.end method

.method public getBoy_prob()F
    .registers 1

    .line 399
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->boy_prob:F

    return p0
.end method

.method public getConfuseProb()F
    .registers 1

    .line 441
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->confuse_prob:F

    return p0
.end method

.method public getExp_probs()[F
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->exp_probs:[F

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 432
    new-array p0, p0, [F

    :cond_7
    return-object p0
.end method

.method public getExpression_type()I
    .registers 1

    .line 415
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->expression_type:I

    return p0
.end method

.method public getHappy_score()F
    .registers 1

    .line 407
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->happy_score:F

    return p0
.end method

.method public setAge(F)V
    .registers 2

    .line 395
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->age:F

    return-void
.end method

.method public setAttractive(F)V
    .registers 2

    .line 427
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->attractive:F

    return-void
.end method

.method public setBoy_prob(F)V
    .registers 2

    .line 403
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->boy_prob:F

    return-void
.end method

.method public setExp_probs([F)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->exp_probs:[F

    return-void
.end method

.method public setExpression_type(I)V
    .registers 2

    .line 419
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->expression_type:I

    return-void
.end method

.method public setHappy_score(F)V
    .registers 2

    .line 411
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo$FaceAttri;->happy_score:F

    return-void
.end method
