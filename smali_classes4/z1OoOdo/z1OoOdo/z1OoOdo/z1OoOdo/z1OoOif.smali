.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;
.super Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V
    .registers 2

    invoke-direct {p0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    return-void
.end method


# virtual methods
.method public z1OoOdo(FFZZ)F
    .registers 6

    .line 0
    iget-object p4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v0, 0x1

    if-ge p4, v0, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "viewPortLength:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_30
    if-nez p3, :cond_36

    const p0, 0x3f4ccccd    # 0.8f

    return p0

    :cond_36
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, p4

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(FZ)F

    move-result p0

    return p0
.end method

.method public z1OoOdo(Landroid/view/VelocityTracker;)F
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const/16 v0, 0x3e8

    const v1, 0x459c4000    # 5000.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b

    return p0

    :cond_1b
    cmpl-float p0, p1, v1

    const v0, 0x458ca000    # 4500.0f

    const v2, 0x453b8000    # 3000.0f

    sub-float/2addr p1, v1

    if-lez p0, :cond_29

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    return p1

    :cond_29
    neg-float p0, p1

    mul-float/2addr p0, v2

    div-float/2addr p0, v0

    return p0
.end method

.method public z1OoOdo(Landroid/view/View;)F
    .registers 2

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public z1OoOdo()V
    .registers 13

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 2
    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const-string v3, "BounceEffect"

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    const-string v0, "cancel animator"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_19
    new-instance v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v4, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v2, v0, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;)V

    iput-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :goto_22
    iget-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOextends:Z

    const-wide v4, 0x3fe245a1cac08312L    # 0.571

    const-wide v6, 0x3fd24dd2f1a9fbe7L    # 0.286

    if-eqz v0, :cond_62

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    float-to-double v10, v0

    mul-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_47

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOtransient:F

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOimplements:F

    :goto_43
    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->f:F

    goto/16 :goto_ca

    :cond_47
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5b

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->a:F

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->b:F

    goto :goto_43

    :cond_5b
    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOinstanceof:F

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsynchronized:F

    goto :goto_43

    :cond_62
    iget-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v0, :cond_89

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    float-to-double v10, v0

    mul-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_7b

    const/high16 v0, 0x43c30000    # 390.0f

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    const v0, 0x3fa66666    # 1.3f

    goto :goto_43

    :cond_7b
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_a5

    goto :goto_c1

    :cond_89
    iget-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v0, :cond_98

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    const/high16 v0, 0x43340000    # 180.0f

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    const v0, 0x3f19999a    # 0.6f

    goto :goto_43

    :cond_98
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    float-to-double v10, v0

    mul-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_ad

    :cond_a5
    const/high16 v0, 0x43b40000    # 360.0f

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    const v0, 0x3f99999a    # 1.2f

    goto :goto_43

    :cond_ad
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    iget v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_c1

    const/high16 v0, 0x43960000    # 300.0f

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_43

    :cond_c1
    :goto_c1
    const/high16 v0, 0x43a50000    # 330.0f

    sput v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    const v0, 0x3f8ccccd    # 1.1f

    goto/16 :goto_43

    :goto_ca
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;-><init>(F)V

    sget v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    invoke-virtual {v2, v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object v2

    sget v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->f:F

    invoke-virtual {v2, v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimation stiffness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " damping="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " CurrentOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mScreenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->c:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public z1OoOdo(Landroid/view/View;F)V
    .registers 3

    .line 0
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdouble:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p2}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public z1OoOif()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;
    .registers 2

    .line 0
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;

    invoke-direct {v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;)V

    return-object v0
.end method

.method public z1OoOif(Landroid/view/View;)Z
    .registers 4

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_15

    const v0, -0x800001

    cmpg-float v0, p0, v0

    if-gez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tanslationX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BounceEffect"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    const/4 p0, 0x0

    return p0
.end method

.method public z1OoOint()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
