.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAnimTranslateDistance:I

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryShow:Z

.field protected mEntryView:Landroid/view/View;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsPopSettingShowing:Z

.field protected mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSelfTimerCapturing:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mVisibilityAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$A3XcsaqFVuGvj3qqnt4Ab3OsKis(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->lambda$notifyCameraOperateAction$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$FoE54YMtV1uFI7bW4xkSOyA5BSk(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NkRYhRytyc-hVlmQ0I51ekNBIf0(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WAn1ezUQ3EYBZs8FrRO-BkftypE(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8Gn5qhwr99ywHzUAVO2jR8UW6A(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->lambda$entryVisibilityChanged$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 120
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mMainHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 130
    sget v0, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_anim_translate_distance:I

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    .line 133
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    return-void
.end method

.method private animEntryVisibility(Z)V
    .registers 14

    .line 502
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animEntryVisibility show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-nez v1, :cond_20

    .line 504
    const-string p0, "mEntryView == null  return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->cancelAnimator()V

    .line 509
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 511
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 512
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-nez v2, :cond_36

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->updateEntryTranslate()V

    .line 517
    :cond_36
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    if-eqz p1, :cond_41

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_42

    :cond_41
    move v3, v1

    .line 519
    :goto_42
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    if-eqz p1, :cond_4c

    move v5, v1

    goto :goto_4f

    .line 520
    :cond_4c
    iget v5, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    int-to-float v5, v5

    .line 521
    :goto_4f
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    if-eqz p1, :cond_58

    goto :goto_5c

    .line 522
    :cond_58
    iget v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 524
    :goto_5c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animEntryVisibility alphaFrom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", alphaTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateXFrom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateXTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateYFrom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateYTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    aput v3, v8, v2

    .line 529
    const-string v3, "alpha"

    invoke-static {v0, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 532
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const-string/jumbo v8, "translationY"

    const-string/jumbo v10, "translationX"

    if-ne v3, v2, :cond_f7

    .line 533
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v3, v11, :cond_e9

    const/16 v11, 0xb4

    if-eq v3, v11, :cond_dc

    const/16 v11, 0x10e

    if-eq v3, v11, :cond_cf

    .line 548
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    neg-float v3, v5

    new-array v5, v7, [F

    aput v4, v5, v9

    aput v3, v5, v2

    .line 549
    invoke-static {v1, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 543
    :cond_cf
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 544
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 539
    :cond_dc
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    new-array v3, v7, [F

    aput v4, v3, v9

    aput v5, v3, v2

    .line 540
    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 535
    :cond_e9
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    neg-float v1, v1

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 536
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    :cond_f7
    const/4 v11, 0x4

    if-ne v3, v11, :cond_108

    .line 554
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    neg-float v3, v5

    new-array v5, v7, [F

    aput v4, v5, v9

    aput v3, v5, v2

    .line 555
    invoke-static {v1, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    :cond_108
    const/4 v11, 0x5

    if-ne v3, v11, :cond_118

    .line 557
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    new-array v3, v7, [F

    aput v4, v3, v9

    aput v5, v3, v2

    .line 558
    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 560
    :cond_118
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 561
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 564
    :goto_124
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_13f

    .line 567
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_149

    .line 572
    :cond_13f
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    :goto_149
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 605
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 606
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v0, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_16e

    .line 608
    :cond_163
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v0, v4, v9

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 611
    :goto_16e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 613
    invoke-direct {p0, v9}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->entryVisibilityChanged(Z)V

    if-eqz p1, :cond_17b

    .line 615
    const-string v0, "on"

    goto :goto_17d

    :cond_17b
    const-string v0, "off"

    :goto_17d
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->updateOptionValue(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->updateVisibility(Z)V

    .line 619
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_193

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    xor-int/2addr p1, v2

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    :cond_193
    return-void
.end method

.method private cancelAnimator()V
    .registers 1

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    .line 658
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method private entryVisibilityChanged(Z)V
    .registers 5

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_c

    .line 698
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "effectUIVisibleChanged mAppUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 701
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v1, :cond_18

    .line 702
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "effectUIVisibleChanged mStatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 706
    :cond_18
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    const-string v2, "key_conflict_ui_state"

    if-eqz v1, :cond_30

    const/16 p1, 0x103

    .line 707
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_aigc_effect_ui_on"

    .line 709
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_30
    const/16 v1, 0x104

    .line 711
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    if-eqz p1, :cond_42

    .line 714
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 718
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_aigc_effect_ui_off"

    .line 719
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hideEntryViewOnly()V
    .registers 4

    .line 679
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideEntryViewOnly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->cancelAnimator()V

    const/4 v0, 0x0

    .line 683
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    .line 684
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v1, :cond_16

    const/16 v2, 0x8

    .line 685
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->updateVisibility(Z)V

    .line 690
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_29

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 693
    :cond_29
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->updateOptionValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$entryVisibilityChanged$4()V
    .registers 3

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_aigc_effect_ui_off"

    .line 716
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 178
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 179
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mLowLight:Z

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateAction$3()V
    .registers 2

    .line 460
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_b

    .line 461
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryViewOnly()V

    const/4 v0, 0x1

    .line 462
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->entryVisibilityChanged(Z)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->updateLowLight(Z)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 426
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private optionOn()Z
    .registers 4

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_d

    .line 228
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "optionOn mOptionSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    .line 232
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optionOn optionValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showEntryViewOnly()V
    .registers 4

    .line 663
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showEntryViewOnly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->cancelAnimator()V

    const/4 v0, 0x1

    .line 667
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    .line 668
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 671
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 673
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->updateVisibility(Z)V

    .line 675
    const-string v0, "on"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->updateOptionValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateEntryTranslate()V
    .registers 3

    .line 625
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_39

    .line 626
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_30

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_27

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1d

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 634
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 631
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 628
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_39
    const/4 v1, 0x4

    if-ne v1, v0, :cond_46

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_46
    const/4 v1, 0x5

    if-ne v1, v0, :cond_52

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 646
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateEntryVisibility()V
    .registers 2

    .line 219
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->optionOn()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 220
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->animEntryVisibility(Z)V

    return-void

    .line 222
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryViewOnly()V

    return-void
.end method

.method private updateOptionValue(Ljava/lang/String;)V
    .registers 2

    .line 651
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_7

    .line 652
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 149
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 153
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 155
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p3, :cond_1a

    .line 156
    sget p3, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_effect_setting_layout_ui5:I

    goto :goto_25

    .line 157
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 158
    sget p3, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_effect_setting_layout_ui4:I

    goto :goto_25

    .line 160
    :cond_23
    sget p3, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_effect_setting_layout:I

    :goto_25
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    .line 164
    sget p3, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_rotate_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_indicator_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 166
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_list_container:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->createSettingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 170
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 171
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mLowLight:Z

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->ringScreenLightUpdateUI()V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 280
    const-string p0, "key_aigc_effect_2"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    const-string v0, "key_aigc_option_2"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v0, "key_aigc_effect_2"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 286
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 4

    .line 238
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 239
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEntryView mEntryShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_26

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryViewOnly()V

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->entryVisibilityChanged(Z)V

    :cond_26
    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->initSettingUI(II)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    .line 254
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 437
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    if-eqz p1, :cond_83

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_83

    const/16 v0, 0x17

    if-eq p1, v0, :cond_6f

    const/16 v0, 0x19

    const/4 v2, 0x1

    if-eq p1, v0, :cond_64

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_5a

    const/16 v0, 0x20

    if-eq p1, v0, :cond_51

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_83

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_83

    const/16 v0, 0x191

    if-eq p1, v0, :cond_4e

    const/16 v0, 0xb

    if-eq p1, v0, :cond_4b

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_6f

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_6f

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_47

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_43

    goto :goto_6e

    .line 484
    :cond_43
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->setPopSettingShowing(Z)V

    return-void

    .line 481
    :cond_47
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->setPopSettingShowing(Z)V

    return-void

    .line 488
    :cond_4b
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mSelfTimerCapturing:Z

    return-void

    .line 493
    :cond_4e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mSelfTimerCapturing:Z

    return-void

    .line 440
    :cond_51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mSelfTimerCapturing:Z

    .line 441
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->setPopSettingShowing(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryView()V

    return-void

    .line 475
    :cond_5a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 476
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryView()V

    return-void

    .line 468
    :cond_64
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    if-eqz p1, :cond_6e

    .line 469
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryViewOnly()V

    .line 470
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->entryVisibilityChanged(Z)V

    :cond_6e
    :goto_6e
    return-void

    .line 459
    :cond_6f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 446
    :cond_7c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_83

    .line 447
    invoke-interface {p1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    .line 453
    :cond_83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->hideEntryView()V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 325
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 326
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->animEntryVisibility(Z)V

    const/4 p0, 0x1

    return p0

    .line 329
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_20

    .line 330
    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    .line 332
    :cond_20
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 337
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 343
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 5

    .line 259
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPopSettingShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mIsPopSettingShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    const-string v0, "key_aigc_option_2"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 264
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mIsPopSettingShowing:Z

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_43

    .line 265
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 266
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    .line 267
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->animEntryVisibility(Z)V

    :cond_43
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 186
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 309
    const-string v1, "key_aigc_option_2"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_7

    :cond_22
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setPopSettingShowing(Z)V
    .registers 4

    .line 725
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mIsPopSettingShowing:Z

    .line 726
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPopSettingShowing: mIsPopSettingShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mIsPopSettingShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 211
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 212
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-nez v0, :cond_e

    .line 213
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->updateEntryVisibility()V

    .line 215
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->setupSettingView()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 192
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->cancelAnimator()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 11

    .line 349
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_d

    goto/16 :goto_11a

    .line 357
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 365
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 367
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 369
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 371
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v6, 0x5a

    const/16 v7, 0x10e

    const/4 v8, 0x1

    if-ne v8, v5, :cond_98

    .line 372
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v6, :cond_81

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_6c

    if-eq v3, v7, :cond_5f

    const/16 v3, 0x33

    .line 392
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 393
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_expand_effect_list_top_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 395
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8d

    :cond_5f
    const/16 v3, 0x31

    .line 386
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 387
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8d

    :cond_6c
    const/16 v3, 0x55

    .line 379
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 382
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_expand_effect_list_top_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8d

    :cond_81
    const/16 v3, 0x51

    .line 374
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 375
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 399
    :goto_8d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v3, v7

    rem-int/lit16 v3, v3, 0x168

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e4

    :cond_98
    const/4 v8, 0x4

    if-ne v8, v5, :cond_ad

    const/16 v3, 0x15

    .line 401
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 402
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_hover_right_effect_list_item_margin_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v6, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e4

    :cond_ad
    const/4 v6, 0x5

    if-ne v6, v5, :cond_c2

    const/16 v3, 0x13

    .line 405
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 406
    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_hover_left_effect_list_item_margin_left:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v7, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e4

    :cond_c2
    const/4 v6, 0x2

    if-eq v6, v5, :cond_ca

    const/4 v6, 0x3

    if-eq v6, v5, :cond_ca

    if-nez v5, :cond_e4

    :cond_ca
    const/16 v5, 0x53

    .line 411
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_d5

    goto :goto_dc

    .line 415
    :cond_d5
    sget v5, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_setting_ui_bottom_margin_offset:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 417
    :goto_dc
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v4, v3

    .line 421
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_114

    if-eqz p1, :cond_114

    .line 422
    filled-new-array {v2, v4}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 423
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 431
    :cond_114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 352
    :cond_11a
    :goto_11a
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettingUILayout mEntryView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRotateContainer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
