.class public Lcom/transsion/camera/ui/setting/focus/FocusAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAnimator:Landroid/animation/Animator;

.field private mAnimatorCanceling:Z

.field protected final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRepeatAnimator:Landroid/animation/Animator;

.field protected mScale:F


# direct methods
.method public static synthetic $r8$lambda$J5praYKs494mfMZicKfU3XWv1R8(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 148
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$iQwhsdea0lZScur-_Y5rUeklF1g(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 156
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimatorCanceling(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimatorCanceling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mtriggerRepeatAnimate(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->triggerRepeatAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseFocusAnimator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mScale:F

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->initInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private triggerRepeatAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 10

    const/4 v0, 0x2

    .line 104
    new-array v1, v0, [F

    fill-array-data v1, :array_4e

    .line 105
    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    .line 106
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x1

    .line 107
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v6, -0x1

    .line 108
    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 110
    new-array v7, v0, [F

    fill-array-data v7, :array_56

    .line 111
    invoke-static {p1, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 114
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 116
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 117
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    aput-object v2, v0, v5

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$2;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 127
    iput-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_56
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected initInterpolator()Landroid/view/animation/PathInterpolator;
    .registers 4

    .line 41
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p0, v2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0
.end method

.method public stopAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .registers 2

    if-nez p1, :cond_a

    .line 58
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimatorCanceling:Z

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimatorCanceling:Z

    .line 66
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2e
    return-void
.end method

.method public triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
    .registers 6

    .line 74
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/ProductFactory;->createLockBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    const/4 v0, 0x2

    .line 75
    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    .line 76
    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    new-instance v1, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$1;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 100
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public triggerLockAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;Z)V
    .registers 14

    .line 133
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/ProductFactory;->createLockBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_16
    const/4 v0, 0x2

    .line 139
    new-array v1, v0, [F

    fill-array-data v1, :array_9e

    .line 140
    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 144
    iget v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mScale:F

    const v3, 0x3fc66666    # 1.55f

    mul-float v4, v2, v3

    const v5, 0x400e147b    # 2.22f

    mul-float/2addr v2, v5

    new-array v6, v0, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v4, 0x1

    aput v2, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v8, 0xa5

    .line 145
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    new-instance v6, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    iget v6, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mScale:F

    mul-float/2addr v5, v6

    mul-float/2addr v6, v3

    new-array v3, v0, [F

    aput v5, v3, v7

    aput v6, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    .line 154
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    new-instance v5, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v2, v6, v7

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 165
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p3, :cond_7f

    .line 167
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_88

    .line 169
    :cond_7f
    new-array p3, v0, [Landroid/animation/Animator;

    aput-object v1, p3, v7

    aput-object v5, p3, v4

    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 171
    :goto_88
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 172
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    new-instance p3, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$3;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 191
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mAnimator:Landroid/animation/Animator;

    return-void

    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateScale(F)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->mScale:F

    return-void
.end method
