.class public Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SourceFile"


# static fields
.field public static mCurrentRefreshRate:F = 60.0f


# instance fields
.field public z1OoOdo:Landroid/view/View;

.field public z1OoOfor:Z

.field public z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field public z1OoOint:F

.field public z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;


# direct methods
.method public static synthetic $r8$lambda$JtoQN0UvbYpdta3MaWG_Q0-ZqbM(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .registers 10

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2e

    if-eq p2, v0, :cond_2b

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    if-eq p2, v4, :cond_26

    const/4 v2, 0x3

    if-eq p2, v2, :cond_21

    goto :goto_31

    :cond_21
    iput v5, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_23
    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    goto :goto_31

    :cond_26
    iput v5, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_28
    iput-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    goto :goto_31

    :cond_2b
    iput v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_23

    :cond_2e
    iput v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_28

    :goto_31
    iget-boolean p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz p2, :cond_43

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {p2, p1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;)V

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const/high16 p1, 0x42d40000    # 106.0f

    const/high16 v3, 0x3f900000    # 1.125f

    goto :goto_4e

    :cond_43
    new-instance p2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {p2, p1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;)V

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const/high16 p1, 0x43480000    # 200.0f

    :goto_4e
    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;-><init>(F)V

    invoke-virtual {v0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object p1

    invoke-virtual {p1, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)V

    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$$ExternalSyntheticLambda1;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    return-void
.end method

.method private z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V
    .registers 5

    .line 3
    sget-boolean p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;->z1OoOint:Z

    if-eqz p1, :cond_4a

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-nez p1, :cond_d

    goto :goto_4a

    :cond_d
    invoke-interface {p1, p0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    .line 4
    iget-boolean p2, p2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcontinue:Z

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkModifyRefreshRateStatus: mIsVertical = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "  isBounceEdgeAnimRunning = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " isRefreshRateLimited = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BounceEdgeEffect"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4a

    if-nez p2, :cond_4a

    const-string p1, "Cancel high refresh rate."

    .line 6
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOdo(I)V

    :cond_4a
    :goto_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fling anim end--------  mIsVertical = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .registers 4

    .line 0
    if-eqz p0, :cond_18

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdouble:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p1, :cond_18

    iget-boolean p3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz p3, :cond_18

    invoke-interface {p1, p2}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_16

    const/4 p1, 0x0

    :goto_13
    iput-boolean p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOimport:Z

    return-void

    :cond_16
    const/4 p1, 0x1

    goto :goto_13

    :cond_18
    return-void
.end method


# virtual methods
.method public cancelBounceAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isBounceEdgeAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on absorb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BounceEdgeEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-nez v0, :cond_1c

    goto/16 :goto_cc

    :cond_1c
    iget-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v2, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view tanslation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_cc

    const v2, -0x800001

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4d

    goto/16 :goto_cc

    :cond_4d
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_57

    goto/16 :goto_cc

    .line 2
    :cond_57
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-eqz v0, :cond_87

    iget-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v2, :cond_87

    .line 3
    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOshort:F

    .line 4
    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    mul-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_87

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAbsorb: mBase.getDirection() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    .line 5
    iget p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOshort:F

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " error absorb."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_87
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-nez v0, :cond_8e

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_a2

    :cond_8e
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 8
    :goto_a2
    sput v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->mCurrentRefreshRate:F

    sget-boolean v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;->z1OoOint:Z

    if-eqz v0, :cond_ac

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor()V

    goto :goto_af

    :cond_ac
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif()V

    :goto_af
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    int-to-float p1, p1

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    mul-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo()Z

    move-result p0

    if-eqz p0, :cond_cc

    const-string p0, "Maintain a high refresh rate."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOdo(I)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public onPull(F)V
    .registers 2

    .line 0
    const-string p0, "BounceEdgeEffect"

    const-string p1, "onPull"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPull(FF)V
    .registers 3

    .line 0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPull2\uff1a"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEdgeEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRelease()V
    .registers 2

    const-string p0, "BounceEdgeEffect"

    const-string v0, "onRelease"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBase(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .registers 3

    instance-of v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-eqz v0, :cond_8

    check-cast p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    :cond_8
    return-void
.end method

.method public final z1OoOdo()Z
    .registers 3

    sget-boolean v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;->z1OoOint:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-nez p0, :cond_d

    goto :goto_28

    .line 1
    :cond_d
    iget-boolean p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcontinue:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStartModifyRefreshRateStatus: isRefreshRateLimited = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BounceEdgeEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public final z1OoOfor()V
    .registers 7

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-eqz v0, :cond_d4

    iget-boolean v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOpackage:Z

    if-eqz v1, :cond_e

    iget v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOinterface:F

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOprotected:F

    goto/16 :goto_d8

    :cond_e
    iget-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v1, :cond_1b

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v2, :cond_1b

    goto :goto_60

    :cond_1b
    if-eqz v1, :cond_26

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v2, :cond_26

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v2, :cond_26

    goto :goto_60

    :cond_26
    if-eqz v1, :cond_2d

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v2, :cond_2d

    goto :goto_60

    :cond_2d
    if-eqz v1, :cond_38

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v2, :cond_38

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdefault:Z

    if-eqz v2, :cond_38

    goto :goto_3e

    :cond_38
    if-eqz v1, :cond_44

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v2, :cond_44

    :goto_3e
    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_d8

    :cond_44
    if-eqz v1, :cond_4f

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v2, :cond_4f

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v2, :cond_4f

    goto :goto_60

    :cond_4f
    if-eqz v1, :cond_5a

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v2, :cond_5a

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v2, :cond_5a

    goto :goto_60

    :cond_5a
    if-eqz v1, :cond_66

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v2, :cond_66

    :goto_60
    const/high16 v1, 0x42d40000    # 106.0f

    const/high16 v0, 0x3f900000    # 1.125f

    goto/16 :goto_d8

    :cond_66
    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v1, :cond_78

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v3, :cond_78

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v3, :cond_78

    const v0, 0x3f6b851f    # 0.92f

    move v1, v2

    goto/16 :goto_d8

    :cond_78
    if-nez v1, :cond_88

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v3, :cond_88

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v3, :cond_88

    const/high16 v1, 0x43820000    # 260.0f

    const v0, 0x3f733333    # 0.95f

    goto :goto_d8

    :cond_88
    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x437a0000    # 250.0f

    if-nez v1, :cond_96

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v5, :cond_96

    move v0, v3

    :goto_94
    move v1, v4

    goto :goto_d8

    :cond_96
    if-nez v1, :cond_a1

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v5, :cond_a1

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdefault:Z

    if-eqz v5, :cond_a1

    goto :goto_a7

    :cond_a1
    if-nez v1, :cond_ad

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v5, :cond_ad

    :goto_a7
    const/high16 v1, 0x43340000    # 180.0f

    const v0, 0x3f19999a    # 0.6f

    goto :goto_d8

    :cond_ad
    if-nez v1, :cond_ba

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v5, :cond_ba

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v5, :cond_ba

    move v1, v2

    move v0, v3

    goto :goto_d8

    :cond_ba
    if-nez v1, :cond_ca

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v2, :cond_ca

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v2, :cond_ca

    const/high16 v1, 0x43750000    # 245.0f

    const v0, 0x3f6e147b    # 0.93f

    goto :goto_d8

    :cond_ca
    if-nez v1, :cond_d4

    iget-boolean v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v0, :cond_d4

    const v0, 0x3f6147ae    # 0.88f

    goto :goto_94

    :cond_d4
    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d8
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p0, :cond_ed

    new-instance v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;-><init>(F)V

    invoke-virtual {v2, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object v2

    invoke-virtual {v2, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_ed
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDampingParameters1501 stiffness="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " damping="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BounceEdgeEffect"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final z1OoOif()V
    .registers 10

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-eqz v0, :cond_e0

    iget-boolean v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOpackage:Z

    if-eqz v1, :cond_e

    iget v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOinterface:F

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOprotected:F

    goto/16 :goto_e4

    :cond_e
    iget-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    const/high16 v2, 0x43700000    # 240.0f

    if-eqz v1, :cond_22

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v3, :cond_22

    const v0, 0x3f5c28f6    # 0.86f

    :goto_1f
    move v1, v2

    goto/16 :goto_e4

    :cond_22
    const/high16 v3, 0x43750000    # 245.0f

    if-eqz v1, :cond_30

    iget-boolean v4, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v4, :cond_30

    iget-boolean v4, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v4, :cond_30

    goto/16 :goto_d3

    :cond_30
    const v4, 0x3f6147ae    # 0.88f

    if-eqz v1, :cond_3e

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v5, :cond_3e

    const/high16 v1, 0x436b0000    # 235.0f

    :goto_3b
    move v0, v4

    goto/16 :goto_e4

    :cond_3e
    if-eqz v1, :cond_49

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v5, :cond_49

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdefault:Z

    if-eqz v5, :cond_49

    goto :goto_4f

    :cond_49
    if-eqz v1, :cond_55

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v5, :cond_55

    :goto_4f
    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_e4

    :cond_55
    if-eqz v1, :cond_61

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v5, :cond_61

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v5, :cond_61

    move v1, v3

    goto :goto_3b

    :cond_61
    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x437a0000    # 250.0f

    if-eqz v1, :cond_74

    iget-boolean v7, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v7, :cond_74

    iget-boolean v7, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v7, :cond_74

    move v0, v5

    :goto_71
    move v1, v6

    goto/16 :goto_e4

    :cond_74
    const v7, 0x3f666666    # 0.9f

    if-eqz v1, :cond_81

    iget-boolean v8, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v8, :cond_81

    :goto_7d
    move v1, v2

    :goto_7e
    move v0, v7

    goto/16 :goto_e4

    :cond_81
    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v1, :cond_91

    iget-boolean v8, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v8, :cond_91

    iget-boolean v8, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v8, :cond_91

    const v0, 0x3f6b851f    # 0.92f

    goto :goto_1f

    :cond_91
    if-nez v1, :cond_9f

    iget-boolean v8, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v8, :cond_9f

    iget-boolean v8, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v8, :cond_9f

    const/high16 v1, 0x43820000    # 260.0f

    move v0, v5

    goto :goto_e4

    :cond_9f
    if-nez v1, :cond_a7

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOstatic:Z

    if-eqz v5, :cond_a7

    move v1, v6

    goto :goto_7e

    :cond_a7
    if-nez v1, :cond_b2

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v5, :cond_b2

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdefault:Z

    if-eqz v5, :cond_b2

    goto :goto_b8

    :cond_b2
    if-nez v1, :cond_be

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOreturn:Z

    if-eqz v5, :cond_be

    :goto_b8
    const/high16 v1, 0x43340000    # 180.0f

    const v0, 0x3f19999a    # 0.6f

    goto :goto_e4

    :cond_be
    if-nez v1, :cond_c9

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v5, :cond_c9

    iget-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOboolean:Z

    if-eqz v5, :cond_c9

    goto :goto_7d

    :cond_c9
    if-nez v1, :cond_d8

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v2, :cond_d8

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrows:Z

    if-eqz v2, :cond_d8

    :goto_d3
    const v0, 0x3f6e147b    # 0.93f

    move v1, v3

    goto :goto_e4

    :cond_d8
    if-nez v1, :cond_e0

    iget-boolean v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOswitch:Z

    if-eqz v0, :cond_e0

    move v0, v4

    goto :goto_71

    :cond_e0
    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_e4
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p0, :cond_f9

    new-instance v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;-><init>(F)V

    invoke-virtual {v2, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object v2

    invoke-virtual {v2, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_f9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDampingParameters stiffness="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " damping="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BounceEdgeEffect"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
