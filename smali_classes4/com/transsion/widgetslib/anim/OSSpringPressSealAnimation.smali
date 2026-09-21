.class public Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OSSpringPressSealAnimat"


# instance fields
.field private endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mActionByUpEvent:Z

.field private mCallback:Ljava/lang/Runnable;

.field private mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

.field private mCurrentEndValue:F

.field private mCurrentStartValue:F

.field private final mDampingRatio:F

.field private mDelayHandler:Landroid/os/Handler;

.field private mDownAnimDelay:I

.field mDownX:F

.field mDownY:F

.field private final mEndDampingRatio:F

.field private final mEndStiffness:F

.field private final mEndValue:F

.field private final mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mForceAnimation:Z

.field private mInterruptAnimation:Z

.field private mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

.field private mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mStartStiffness:F

.field private final mStartValue:F

.field private mTouchSlop:F

.field private final mVelocity:F

.field private mViewHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field regret:Z

.field private startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public static synthetic $r8$lambda$XIBZT9E-dEhFWMonu7c_C_rM_X0(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Landroid/view/View;)V
    .registers 3

    .line 109
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 110
    invoke-interface {p0, p1, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;->onClick(Landroid/view/View;Z)V

    :cond_8
    return-void
.end method

.method private constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    .line 295
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    .line 80
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startValue:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$600(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    .line 81
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->finalValue:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$700(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndValue:F

    .line 82
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endStiffness:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$800(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndStiffness:F

    .line 83
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startStiffness:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$900(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartStiffness:F

    .line 84
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->dampingRatio:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDampingRatio:F

    .line 85
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endDampingRatio:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndDampingRatio:F

    .line 86
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 87
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->velocity:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mVelocity:F

    .line 88
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->viewHolder:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    .line 89
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->clickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    .line 90
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1600(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 91
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1700(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    .line 92
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1800(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    .line 93
    iget-boolean v2, p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->forceAnimation:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mForceAnimation:Z

    .line 94
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->downAnimDelay:I
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1900(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownAnimDelay:I

    .line 95
    iget-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_80

    .line 96
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->touchSlop:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$2000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7b

    .line 97
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->touchSlop:F
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$2000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result p1

    float-to-int p1, p1

    :goto_75
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->dp2px(I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_7e

    :cond_7b
    const/16 p1, 0x14

    goto :goto_75

    :goto_7e
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mTouchSlop:F

    .line 99
    :cond_80
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    .line 100
    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    .line 101
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 102
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 104
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz v0, :cond_9e

    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mForceAnimation:Z

    if-eqz v0, :cond_ac

    .line 105
    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isTalkBackMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_b4

    .line 108
    :cond_ac
    new-instance v0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :goto_b4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDelayHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;-><init>(Landroid/view/View;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCallback:Ljava/lang/Runnable;

    :cond_c6
    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .registers 1

    .line 23
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F
    .registers 2

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .registers 1

    .line 23
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F
    .registers 2

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .registers 1

    .line 23
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    return p0
.end method

.method static synthetic access$2400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .registers 1

    .line 23
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndValue:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method private createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 5

    .line 174
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndDampingRatio:F

    .line 175
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 177
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 178
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 179
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 180
    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mVelocity:F

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const p1, 0x3b03126f    # 0.002f

    .line 181
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 183
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$3;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 202
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p2
.end method

.method private createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 5

    .line 126
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDampingRatio:F

    .line 127
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 129
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 130
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 131
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 132
    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mVelocity:F

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const p1, 0x3b03126f    # 0.002f

    .line 133
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 135
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 155
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$2;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p2
.end method

.method static dp2px(I)I
    .registers 3

    int-to-float p0, p0

    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private judgeDistance(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownY:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 292
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mTouchSlop:F

    float-to-double p0, p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public animateToStart()V
    .registers 4

    .line 312
    invoke-virtual {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->holdState()V

    .line 313
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_12

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_12
    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    return-void
.end method

.method public holdState()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDelayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    iget v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownAnimDelay:I

    if-lez v2, :cond_f

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 303
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 305
    :cond_1e
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 306
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_2d
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 223
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_7

    .line 224
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 226
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    if-nez v0, :cond_122

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_55

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownX:F

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownY:F

    .line 230
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownAnimDelay:I

    if-lez v0, :cond_2c

    .line 231
    iget-object v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDelayHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCallback:Ljava/lang/Runnable;

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_48

    .line 233
    :cond_2c
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 234
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 236
    :cond_3b
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 237
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 239
    :goto_48
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    if-eqz v0, :cond_51

    if-eqz p1, :cond_51

    .line 240
    invoke-interface {v0, p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;->onClick(Landroid/view/View;Z)V

    .line 242
    :cond_51
    iput-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    goto/16 :goto_122

    .line 243
    :cond_55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v2, :cond_cf

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_63

    goto :goto_cf

    .line 268
    :cond_63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_122

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_9b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_9b

    .line 270
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9b

    .line 271
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->judgeDistance(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_122

    :cond_9b
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    if-nez v0, :cond_122

    .line 272
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownAnimDelay:I

    if-lez v0, :cond_aa

    .line 273
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    :cond_aa
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    .line 276
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 277
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 279
    :cond_bb
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_122

    .line 280
    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 281
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_122

    .line 244
    :cond_cf
    :goto_cf
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownAnimDelay:I

    if-lez v0, :cond_da

    .line 245
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDelayHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    :cond_da
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    if-nez v0, :cond_e1

    .line 248
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    goto :goto_122

    .line 250
    :cond_e1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    if-nez v0, :cond_10f

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_ed

    .line 252
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    .line 254
    :cond_ed
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_fc

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 257
    :cond_fc
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_10f

    .line 258
    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 259
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 262
    :cond_10f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_122

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    if-eqz v0, :cond_122

    if-eqz p1, :cond_122

    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    if-nez p0, :cond_122

    .line 264
    invoke-interface {v0, p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;->onClick(Landroid/view/View;Z)V

    .line 287
    :cond_122
    :goto_122
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resumeAnimation()V
    .registers 2

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    return-void
.end method
