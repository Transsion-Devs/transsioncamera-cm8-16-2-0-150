.class public Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BounceBackState"
.end annotation


# instance fields
.field protected final mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

.field protected final mBounceBackInterpolator:Landroid/view/animation/Interpolator;

.field protected final mDecelerateFactor:F

.field protected final mDoubleDecelerateFactor:F

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;F)V
    .registers 4

    .line 274
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    .line 275
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDecelerateFactor:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    .line 276
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDoubleDecelerateFactor:F

    .line 278
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->createAnimationAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    return-void
.end method


# virtual methods
.method protected createAnimator()Landroid/animation/Animator;
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->init(Landroid/view/View;)V

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget v2, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_5a

    cmpg-float v4, v2, v3

    if-gez v4, :cond_20

    iget-object v4, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v4, v4, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-nez v4, :cond_5a

    :cond_20
    cmpl-float v4, v2, v3

    if-lez v4, :cond_2b

    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v1, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-nez v1, :cond_2b

    goto :goto_5a

    :cond_2b
    neg-float v1, v2

    .line 329
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDecelerateFactor:F

    div-float/2addr v1, v4

    cmpg-float v4, v1, v3

    if-gez v4, :cond_34

    goto :goto_35

    :cond_34
    move v3, v1

    :goto_35
    neg-float v1, v2

    mul-float/2addr v1, v2

    .line 333
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mDoubleDecelerateFactor:F

    div-float/2addr v1, v2

    .line 334
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mAbsOffset:F

    add-float/2addr v2, v1

    float-to-int v1, v3

    .line 336
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->createSlowdownAnimator(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->createBounceBackAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 343
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 344
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v1

    .line 325
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mAbsOffset:F

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->createBounceBackAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method protected createBounceBackAnimator(F)Landroid/animation/ObjectAnimator;
    .registers 7

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 361
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget v2, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mMaxOffset:F

    div-float/2addr p1, v2

    const/high16 v2, 0x44480000    # 800.0f

    mul-float/2addr p1, v2

    .line 362
    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mProperty:Landroid/util/Property;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    float-to-int p1, p1

    const/16 v1, 0xc8

    .line 363
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method protected createSlowdownAnimator(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;
    .registers 7

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mAnimAttributes:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p2

    .line 350
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->mBounceBackInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public handleEntryTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .registers 2

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->createAnimator()Landroid/animation/Animator;

    move-result-object p1

    .line 284
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    return-void
.end method
