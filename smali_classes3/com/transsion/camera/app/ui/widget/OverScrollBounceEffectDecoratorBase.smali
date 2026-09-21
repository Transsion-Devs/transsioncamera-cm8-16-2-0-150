.class public abstract Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;,
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;,
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;,
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;,
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;,
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;,
        Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;
    }
.end annotation


# instance fields
.field protected final mBounceBackState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;

.field protected mCurrentState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;

.field protected final mIdleState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;

.field protected final mOverScrollingState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;

.field protected final mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

.field protected mVelocity:F

.field protected final mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;FFF)V
    .registers 6

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    .line 384
    new-instance p1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;-><init>(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;F)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;

    .line 385
    new-instance p1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-direct {p1, p0, p3, p4}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;-><init>(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;FF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    .line 386
    new-instance p1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;-><init>(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;

    .line 388
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 390
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->attach()V

    return-void
.end method


# virtual methods
.method protected attach()V
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method protected abstract createAnimationAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
.end method

.method protected abstract createMotionAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;
.end method

.method protected issueStateTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 411
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .line 412
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;->handleEntryTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 397
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 401
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;->handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected abstract translateView(Landroid/view/View;F)V
.end method

.method protected abstract translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method
