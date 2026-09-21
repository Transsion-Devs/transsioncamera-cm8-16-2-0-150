.class final Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatorHelper"
.end annotation


# instance fields
.field mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field mAnimatorParamHolders:Ljava/util/Map;

.field mAnimators:Ljava/util/List;

.field mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

.field mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;


# direct methods
.method public static synthetic $r8$lambda$0shcJaGwvAaY1s-GzeRHybcBtwo(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->lambda$animator$3(Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQF8oxWI3nokP18suMzbs3RlcYE(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Landroid/view/View;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->lambda$animator$1(Ljava/util/function/Consumer;Landroid/view/View;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8t7bB-wrtsw8-LwJ7pHHi_ycH8(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->lambda$animator$2(Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7YNRd08QDfEYQS5O9ZNehIIXYY(ZIILandroid/view/View;)V
    .registers 5

    if-nez p3, :cond_c

    .line 385
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "animator: v is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1d

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1d

    int-to-float p0, p2

    .line 389
    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 392
    :cond_1d
    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, p2

    .line 393
    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;)V
    .registers 6

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    .line 356
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    .line 357
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimatorParamHolders:Ljava/util/Map;

    .line 358
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 359
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private synthetic lambda$animator$1(Ljava/util/function/Consumer;Landroid/view/View;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 5

    .line 403
    invoke-static {p3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 405
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 406
    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private synthetic lambda$animator$2(Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 4

    .line 416
    invoke-static {p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addMoveAnimator(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method

.method private synthetic lambda$animator$3(Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 4

    .line 427
    invoke-static {p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 428
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method


# virtual methods
.method addMoveAnimator(Landroid/view/View;FFZ)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 541
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMoveAnimator isTranslateX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p4, :cond_2e

    .line 543
    new-array p4, v2, [F

    aput p2, p4, v1

    aput p3, p4, v0

    const-string/jumbo p2, "translationX"

    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_3b

    .line 545
    :cond_2e
    new-array p4, v2, [F

    aput p2, p4, v1

    aput p3, p4, v0

    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_3b
    const-wide/16 p2, 0x1c2

    .line 547
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 548
    iget-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addMoveAnimator(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 5

    .line 533
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmStartTranslate(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v1

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmEndTranslate(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v2

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmIsTranslateX(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addMoveAnimator(Landroid/view/View;FFZ)V

    return-void
.end method

.method addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V
    .registers 16

    if-nez p1, :cond_4

    goto/16 :goto_88

    :cond_4
    cmpg-float v0, p2, p3

    if-gez v0, :cond_1a

    .line 499
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetmIsFirstEntry()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/high16 p0, 0x3f800000    # 1.0f

    .line 500
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 501
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 502
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 505
    :cond_1a
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 507
    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 p2, 0x1

    aput p3, v3, p2

    const-string v5, "alpha"

    invoke-static {p1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    .line 508
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 509
    iget-object v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    new-array v7, v2, [F

    aput p4, v7, v4

    aput p5, v7, p2

    const-string v8, "scaleX"

    invoke-static {p1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 512
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 513
    iget-object v8, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    new-array v8, v2, [F

    aput p4, v8, v4

    aput p5, v8, p2

    const-string p4, "scaleY"

    invoke-static {p1, p4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 516
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 517
    iget-object p4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p4, 0x3

    .line 519
    new-array p4, p4, [Landroid/animation/Animator;

    aput-object v3, p4, v4

    aput-object v7, p4, p2

    aput-object p1, p4, v2

    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p6, :cond_71

    .line 522
    invoke-virtual {v1, p6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_71
    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_7c

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7c
    if-gez v0, :cond_88

    const-wide/16 p1, 0x64

    .line 527
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_88
    :goto_88
    return-void
.end method

.method addShowOrHideAnimatorSet(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 11

    .line 491
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmStartAlpha(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v3

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmEndAlpha(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v4

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmStartScale(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v5

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmEndScale(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v6

    move-object v1, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method animator(Ljava/lang/String;Landroid/view/View;ZI)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;
    .registers 15

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 378
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 379
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 380
    iget-object v6, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v7, 0x3

    invoke-virtual {v6, p1, v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v6

    sub-int v7, v2, v0

    .line 381
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v5, :cond_25

    move v1, v3

    .line 382
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "animator isTranslateX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", curTranslate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    new-instance v7, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, p3, p4, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;-><init>(ZII)V

    .line 396
    new-instance p3, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;-><init>(Ljava/lang/String;Landroid/view/View;)V

    const/high16 p1, 0x3f000000    # 0.5f

    const/4 p4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v4, v5, :cond_7d

    if-ne v6, v3, :cond_7d

    .line 398
    invoke-virtual {p3, p4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p4

    .line 399
    invoke-virtual {p4, v8}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p4

    .line 400
    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p1

    .line 401
    invoke-virtual {p1, v8}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p1

    new-instance p4, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, v7, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Landroid/view/View;)V

    .line 402
    invoke-virtual {p1, p4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setAction(Ljava/util/function/Consumer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    .line 408
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->build()Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    move-result-object p0

    return-object p0

    :cond_7d
    if-ne v4, v3, :cond_9e

    if-ne v6, v3, :cond_9e

    if-eqz v1, :cond_bf

    int-to-float p1, v0

    .line 412
    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartTranslate(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p1

    int-to-float p2, v2

    .line 413
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndTranslate(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setTranslateX(Z)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;)V

    .line 415
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setAction(Ljava/util/function/Consumer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    .line 419
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->build()Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    move-result-object p0

    return-object p0

    :cond_9e
    if-ne v4, v3, :cond_bf

    if-ne v6, v5, :cond_bf

    .line 422
    invoke-virtual {p3, v8}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p2

    .line 423
    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p2

    .line 424
    invoke-virtual {p2, v8}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p2

    .line 425
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;)V

    .line 426
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setAction(Ljava/util/function/Consumer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    .line 430
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->build()Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    move-result-object p0

    return-object p0

    .line 432
    :cond_bf
    invoke-interface {v7, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method animatorEnd(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 481
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-eqz p1, :cond_17

    .line 484
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    :cond_17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1a
    return-void
.end method

.method animatorStart()V
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 364
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "mAnimators is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_2f

    .line 368
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 369
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 370
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 373
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method isValidAnimatorParamHolder(Ljava/lang/String;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Z
    .registers 5

    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->isValid()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_24

    .line 440
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimatorParamHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 443
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimatorParamHolders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v1
.end method

.method withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 11

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 449
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 450
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result p0

    sub-int p1, v2, v0

    .line 452
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v5, :cond_25

    move v1, v3

    .line 453
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "withoutAnimator isTranslateX: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", curTranslate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_51

    int-to-float v0, v2

    .line 455
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 456
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_58

    .line 458
    :cond_51
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v2

    .line 459
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_58
    if-ne v4, v5, :cond_62

    if-ne p0, v3, :cond_62

    const/high16 p0, 0x3f800000    # 1.0f

    .line 463
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_62
    if-ne v4, v3, :cond_7a

    if-ne p0, v3, :cond_7a

    if-eqz v1, :cond_81

    if-eqz p3, :cond_72

    int-to-float p0, v2

    .line 468
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 469
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 471
    :cond_72
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v2

    .line 472
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_7a
    if-ne v4, v3, :cond_81

    if-ne p0, v5, :cond_81

    .line 475
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_81
    return-void
.end method
