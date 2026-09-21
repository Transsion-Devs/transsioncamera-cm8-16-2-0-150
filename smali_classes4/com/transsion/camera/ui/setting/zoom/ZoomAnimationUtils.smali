.class public abstract Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mHideInterprolator:Landroid/view/animation/PathInterpolator;

.field private static mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

.field private static mHideZoomItemIndicatorAlphaAnimator:Ljava/lang/ref/WeakReference;

.field private static mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

.field private static final mHideZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

.field private static mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

.field private static final mHideZoomWheelInterprolator:Landroid/view/animation/PathInterpolator;

.field private static mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

.field private static final mIndicatorInterpolator:Landroid/view/animation/PathInterpolator;

.field private static final mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

.field private static final mShowZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

.field private static mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

.field private static final mTranslationInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static synthetic $r8$lambda$so7ddOmD7xuTXyJsPVmd3S4rbHM(Ljava/lang/Object;)Landroid/animation/Animator;
    .registers 2

    .line 615
    instance-of v0, p0, Landroid/animation/Animator;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/animation/Animator;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomAnimationUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mIndicatorInterpolator:Landroid/view/animation/PathInterpolator;

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

    .line 44
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideInterprolator:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelInterprolator:Landroid/view/animation/PathInterpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mTranslationInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static animationIndicator(Landroid/view/View;Z)V
    .registers 12

    .line 236
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[animationIndicator] changeAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 237
    const-string v3, "scaleY"

    const-string v4, "scaleX"

    if-eqz p1, :cond_67

    .line 238
    new-array p1, v2, [F

    fill-array-data p1, :array_c2

    const-string v5, "alpha"

    invoke-static {p0, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 239
    new-array v5, v2, [F

    fill-array-data v5, :array_ca

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 240
    new-array v5, v2, [F

    fill-array-data v5, :array_d2

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 241
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xc8

    .line 242
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 243
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f28f5c3    # 0.66f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v8, v7, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x3

    .line 244
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object p1, v5, v1

    aput-object v4, v5, v0

    aput-object p0, v5, v2

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 245
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 247
    :cond_67
    new-array p1, v2, [F

    fill-array-data p1, :array_da

    .line 248
    invoke-static {p0, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 249
    new-array v5, v2, [F

    fill-array-data v5, :array_e2

    .line 250
    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 251
    new-array v6, v2, [F

    fill-array-data v6, :array_ea

    .line 252
    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 253
    new-array v6, v2, [F

    fill-array-data v6, :array_f2

    .line 254
    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 255
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    new-array v6, v2, [Landroid/animation/Animator;

    aput-object p1, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0x96

    .line 257
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 258
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mIndicatorInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 260
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v1

    aput-object p0, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 262
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 263
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 265
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_c2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ca
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_d2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_da
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_e2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_ea
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_f2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static cancel()V
    .registers 1

    .line 663
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 664
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 666
    :cond_23
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    .line 667
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 668
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_46
    return-void
.end method

.method public static cancelFadeOutZoomWheel()V
    .registers 1

    .line 672
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 673
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_23
    return-void
.end method

.method public static cancelShow()V
    .registers 1

    .line 677
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 678
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_15
    return-void
.end method

.method public static fadeinZoomWheel(Landroid/view/View;Landroid/view/View;Z)V
    .registers 10

    .line 270
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fadeinZoomWheel] byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 271
    new-array v1, v0, [F

    fill-array-data v1, :array_84

    .line 272
    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 273
    new-array v3, v0, [F

    fill-array-data v3, :array_8c

    .line 274
    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 275
    new-array v5, v0, [F

    fill-array-data v5, :array_94

    .line 276
    invoke-static {p1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 277
    new-array v5, v0, [F

    fill-array-data v5, :array_9c

    .line 278
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-eqz p2, :cond_57

    .line 280
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    .line 281
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 282
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 283
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$6;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$6;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 299
    :cond_57
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 300
    sget-object v5, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xc8

    .line 301
    invoke-virtual {p2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    .line 302
    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 303
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 304
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$7;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$7;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_84
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_94
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_9c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fadeoutZoomWheel(Landroid/view/View;Landroid/view/View;Z)V
    .registers 11

    .line 323
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fadeoutZoomWheel] byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 324
    new-array v1, v0, [F

    fill-array-data v1, :array_b0

    .line 325
    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 326
    new-array v2, v0, [F

    fill-array-data v2, :array_b8

    .line 327
    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 328
    new-array v3, v0, [F

    fill-array-data v3, :array_c0

    .line 329
    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 330
    instance-of v4, p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    const/4 v5, 0x1

    if-eqz v4, :cond_43

    .line 331
    move-object v4, p1

    check-cast v4, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setIsBeingHidden(Z)V

    :cond_43
    if-eqz p2, :cond_5b

    .line 334
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    .line 335
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 363
    :cond_5b
    new-instance p2, Ljava/lang/ref/WeakReference;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    .line 364
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 366
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    aput-object v3, v4, v0

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 367
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 368
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$9;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$9;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_b0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_b8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_c0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static hideInstantView(Landroid/view/View;Z)V
    .registers 8

    .line 425
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideInstantView] byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 426
    new-array v1, v0, [F

    fill-array-data v1, :array_7a

    .line 427
    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 428
    new-array v2, v0, [F

    fill-array-data v2, :array_82

    .line 429
    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 430
    new-array v3, v0, [F

    fill-array-data v3, :array_8a

    .line 431
    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz p1, :cond_50

    .line 433
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    .line 434
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 435
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 436
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$11;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$11;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 454
    :cond_50
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 455
    sget-object v4, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomWheelInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    .line 456
    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    .line 457
    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 458
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 459
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$12;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$12;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_7a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_82
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_8a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static hideZoomItemIndicator(Landroid/view/View;Z)V
    .registers 8

    .line 182
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    .line 183
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 184
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 186
    :cond_23
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideZoomItemIndicator] byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 187
    new-array v1, v0, [F

    fill-array-data v1, :array_f6

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 188
    new-array v2, v0, [F

    fill-array-data v2, :array_fe

    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/lang/ref/WeakReference;

    new-array v4, v0, [F

    fill-array-data v4, :array_106

    const-string v5, "alpha"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorAlphaAnimator:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_98

    .line 191
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorAlphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorAlphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 194
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorAlphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 208
    :cond_98
    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    .line 209
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorAlphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 212
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 213
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_f6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_fe
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_106
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static hideZoomItemRoot(Landroid/view/View;Z)V
    .registers 8

    .line 133
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_23

    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    .line 134
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 135
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 137
    :cond_23
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    .line 138
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 141
    :cond_3c
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[hideZoomItemRoot]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 142
    new-array v0, p1, [F

    fill-array-data v0, :array_ca

    .line 143
    const-string v1, "scaleX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    new-array v1, p1, [F

    fill-array-data v1, :array_d2

    .line 145
    const-string v2, "scaleY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 146
    new-instance v2, Ljava/lang/ref/WeakReference;

    new-array v3, p1, [F

    fill-array-data v3, :array_da

    .line 147
    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    .line 148
    new-instance v2, Ljava/lang/ref/WeakReference;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    .line 149
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 150
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v3, v4, p1

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 152
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 153
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$3;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_ca
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_d2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_da
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static isHidding()Z
    .registers 1

    .line 657
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_18
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_32

    .line 658
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomAlphaAnimator:Ljava/lang/ref/WeakReference;

    .line 659
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public static scaleIndicatorView(Landroid/view/View;)V
    .registers 7

    .line 565
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[scaleIndicatorView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    .line 567
    new-array v2, v1, [F

    fill-array-data v2, :array_54

    const-string v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 568
    new-array v3, v1, [F

    fill-array-data v3, :array_5c

    const-string v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 569
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 570
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x15e

    .line 571
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 572
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 574
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$16;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$16;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_54
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_5c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static showInstantView(Landroid/view/View;Z)V
    .registers 5

    .line 397
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInstantView] byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 399
    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    .line 400
    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_33

    .line 402
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3d

    .line 405
    :cond_33
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 408
    :goto_3d
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 409
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$10;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_4a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static showZoomItemIndicator(Landroid/view/View;)V
    .registers 2

    .line 173
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    .line 174
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 175
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemIndicatorSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static showZoomItemRoot(Landroid/view/View;ZZ)V
    .registers 9

    .line 58
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 60
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mHideZoomItemRootSet:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 62
    :cond_23
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showZoomItemRoot] byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 63
    new-array v2, v1, [F

    fill-array-data v2, :array_dc

    .line 64
    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    if-eqz p1, :cond_90

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[showZoomItemRoot] scale:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " --"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 69
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowOrHideByScaleInterprolater:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    return-void

    .line 95
    :cond_90
    new-array p1, v1, [F

    fill-array-data p1, :array_e4

    .line 96
    const-string v0, "scaleX"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 97
    new-array v0, v1, [F

    fill-array-data v0, :array_ec

    .line 98
    const-string v5, "scaleY"

    invoke-static {p0, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_b3

    const-wide/16 v3, 0x15e

    .line 101
    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_b6

    .line 103
    :cond_b3
    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 106
    :goto_b6
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemInterprolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p2, 0x3

    .line 107
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    const/4 p1, 0x1

    aput-object v0, p2, p1

    aput-object v2, p2, v1

    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 108
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 109
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mShowZoomItemRootSet:Ljava/lang/ref/WeakReference;

    return-void

    :array_dc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_ec
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static showZoomItemView(Landroid/view/View;Z)V
    .registers 12

    .line 480
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showZoomItemView] scaleAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 481
    new-array v1, v0, [F

    fill-array-data v1, :array_98

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_75

    .line 483
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 484
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 485
    new-array p1, v0, [F

    fill-array-data p1, :array_a0

    const-string v7, "scaleX"

    invoke-static {p0, v7, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 486
    new-array v7, v0, [F

    fill-array-data v7, :array_a8

    const-string v8, "scaleY"

    invoke-static {p0, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 487
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x3

    .line 488
    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v4

    const/4 v1, 0x1

    aput-object p1, v9, v1

    aput-object v7, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 489
    invoke-virtual {v8, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 490
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v5, v1, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 492
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 518
    :cond_75
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 520
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 521
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 523
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$14;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$14;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_98
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_a8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static varargs translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V
    .registers 13

    if-eqz p2, :cond_a7

    .line 601
    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    goto/16 :goto_a7

    .line 604
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 605
    array-length p0, p2

    :goto_12
    if-ge v2, p0, :cond_a7

    aget-object p1, p2, v2

    .line 606
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->getTranslationEnd()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 610
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    array-length v3, p2

    move v4, v2

    :goto_2b
    if-ge v4, v3, :cond_86

    aget-object v5, p2, v4

    .line 612
    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->getRoot()Landroid/view/View;

    move-result-object v6

    .line 613
    invoke-interface {p0, v6, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 614
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 615
    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 616
    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 618
    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->getTranslationStart()F

    move-result v7

    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->getTranslationEnd()F

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [F

    aput v7, v9, v2

    aput v8, v9, v1

    .line 617
    const-string v7, "translationY"

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 619
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 620
    sget v8, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    if-eqz p1, :cond_70

    move v9, v2

    goto :goto_71

    :cond_70
    const/4 v9, 0x3

    .line 621
    :goto_71
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 620
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 622
    new-instance v8, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;

    invoke-direct {v8, v6, v5, p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$17;-><init>(Landroid/view/View;Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;ZLcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 642
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 645
    :cond_86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8d

    goto :goto_a7

    .line 648
    :cond_8d
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 649
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->mTranslationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x32

    .line 650
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 p1, 0x15e

    .line 651
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 652
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 653
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_a7
    :goto_a7
    return-void
.end method
