.class public abstract Lcom/transsion/camera/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimationUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/AnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private static startLayerDrawableAnimation(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .registers 7

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_19

    .line 57
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 58
    instance-of v4, v3, Landroid/graphics/drawable/Animatable2;

    if-eqz v4, :cond_16

    .line 60
    check-cast v3, Landroid/graphics/drawable/Animatable2;

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorDrawableAnimation(Landroid/graphics/drawable/Animatable2;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const/4 v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    if-nez v2, :cond_20

    if-eqz p1, :cond_20

    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    return v2
.end method

.method public static startPressedAnimator(Landroid/view/View;F)V
    .registers 7

    .line 110
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static startPressedAnimator(Landroid/view/View;JFFFFLandroid/animation/AnimatorListenerAdapter;)V
    .registers 11

    const/4 v0, 0x2

    .line 87
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    const-string p4, "scaleX"

    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 88
    new-array v0, v0, [F

    aput p5, v0, v2

    aput p6, v0, p3

    const-string p3, "scaleY"

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 89
    new-instance p5, Landroid/view/animation/PathInterpolator;

    const p6, 0x3f28f5c3    # 0.66f

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    invoke-direct {p5, v1, v2, p6, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 90
    filled-new-array {p4, p3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p7, :cond_36

    .line 93
    invoke-virtual {p0, p7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    :cond_36
    invoke-virtual {p0, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startScaleAnimation(Landroid/view/View;JFFFF)V
    .registers 10

    const/4 v0, 0x2

    .line 79
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    const-string p4, "scaleX"

    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 80
    new-array v0, v0, [F

    aput p5, v0, v2

    aput p6, v0, p3

    const-string p3, "scaleY"

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 81
    filled-new-array {p4, p3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .registers 3

    .line 30
    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_b

    .line 31
    check-cast p0, Landroid/graphics/drawable/Animatable2;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorDrawableAnimation(Landroid/graphics/drawable/Animatable2;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const/4 p0, 0x1

    return p0

    .line 33
    :cond_b
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_16

    .line 34
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startLayerDrawableAnimation(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    move-result p0

    return p0

    :cond_16
    if-eqz p1, :cond_1b

    .line 37
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private static startVectorDrawableAnimation(Landroid/graphics/drawable/Animatable2;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 3

    .line 45
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 46
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    .line 47
    invoke-interface {p0, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 48
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_f
    return-void
.end method

.method public static stopAnimator(Landroid/animation/Animator;)V
    .registers 2

    if-eqz p0, :cond_e

    .line 138
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 139
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 140
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_e
    return-void
.end method

.method public static stopPressedAnimator(Landroid/view/View;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 119
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_24

    .line 120
    sget-object v0, Lcom/transsion/camera/utils/AnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPressedAnimator return, view scale is 1.0f."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void

    .line 124
    :cond_24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 10

    if-eqz p1, :cond_16

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;JFFFFLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    :cond_16
    move-object v0, p0

    .line 105
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    return-void
.end method

.method public static stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 70
    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_14

    check-cast p0, Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 72
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
