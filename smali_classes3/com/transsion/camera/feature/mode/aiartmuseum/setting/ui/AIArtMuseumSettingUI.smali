.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
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

.field protected mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mPopSettingShowing:Z

.field protected mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSelfTimerCapturing:Z

.field protected final mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mVisibilityAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$3OhWMPhlwM1DRayV3nu5wSrkheI(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->lambda$notifyCameraOperateAction$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$BX9Vx3JDcv4OLvTRZ1ht7T3T28w(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NGqk98v5j1YAcTFTozLSOSuSpWY(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$co9uRT-nO5bGdiikDSnrBFU_nkE(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8JIm8Mh_E2OKoVBIrOjnFm-YE0(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->lambda$entryVisibilityChanged$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 90
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseumSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 119
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 120
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 124
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mMainHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 133
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_anim_translate_distance:I

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    .line 136
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    return-void
.end method

.method private animEntryVisibility(Z)V
    .registers 14

    .line 512
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animEntryVisibility show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    if-nez v1, :cond_20

    .line 514
    const-string p0, "mEntryView == null  return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 517
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->cancelAnimator()V

    .line 519
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 521
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 522
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-nez v2, :cond_36

    .line 523
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->updateEntryTranslate()V

    .line 527
    :cond_36
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    if-eqz p1, :cond_41

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_42

    :cond_41
    move v3, v1

    .line 529
    :goto_42
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    if-eqz p1, :cond_4c

    move v5, v1

    goto :goto_4f

    .line 530
    :cond_4c
    iget v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    int-to-float v5, v5

    .line 531
    :goto_4f
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    if-eqz p1, :cond_58

    goto :goto_5c

    .line 532
    :cond_58
    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 534
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

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    aput v3, v8, v2

    .line 539
    const-string v3, "alpha"

    invoke-static {v0, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 542
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const-string/jumbo v8, "translationY"

    const-string/jumbo v10, "translationX"

    if-ne v3, v2, :cond_f7

    .line 543
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v3, v11, :cond_e9

    const/16 v11, 0xb4

    if-eq v3, v11, :cond_dc

    const/16 v11, 0x10e

    if-eq v3, v11, :cond_cf

    .line 558
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    neg-float v3, v5

    new-array v5, v7, [F

    aput v4, v5, v9

    aput v3, v5, v2

    .line 559
    invoke-static {v1, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 553
    :cond_cf
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 554
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 549
    :cond_dc
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    new-array v3, v7, [F

    aput v4, v3, v9

    aput v5, v3, v2

    .line 550
    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 545
    :cond_e9
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    neg-float v1, v1

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 546
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    :cond_f7
    const/4 v11, 0x4

    if-ne v3, v11, :cond_108

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    neg-float v3, v5

    new-array v5, v7, [F

    aput v4, v5, v9

    aput v3, v5, v2

    .line 565
    invoke-static {v1, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    :cond_108
    const/4 v11, 0x5

    if-ne v3, v11, :cond_118

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    new-array v3, v7, [F

    aput v4, v3, v9

    aput v5, v3, v2

    .line 568
    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_124

    .line 570
    :cond_118
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 571
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 574
    :goto_124
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_13f

    .line 577
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 578
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_149

    .line 582
    :cond_13f
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    :goto_149
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$1;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 616
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v0, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_16e

    .line 618
    :cond_163
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v0, v4, v9

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 621
    :goto_16e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 623
    invoke-direct {p0, v9}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->entryVisibilityChanged(Z)V

    if-eqz p1, :cond_17b

    .line 625
    const-string v0, "on"

    goto :goto_17d

    :cond_17b
    const-string v0, "off"

    :goto_17d
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->updateOptionValue(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_18e

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    xor-int/2addr p1, v2

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    :cond_18e
    return-void
.end method

.method private cancelAnimator()V
    .registers 1

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    .line 666
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method private entryVisibilityChanged(Z)V
    .registers 5

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_c

    .line 703
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "effectUIVisibleChanged mAppUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 706
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v1, :cond_18

    .line 707
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "effectUIVisibleChanged mStatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 711
    :cond_18
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    const-string v2, "key_conflict_ui_state"

    if-eqz v1, :cond_30

    const/16 p1, 0x18e

    .line 712
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_ai_art_museum_ui_on"

    .line 714
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_30
    const/16 v1, 0x18f

    .line 716
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    if-eqz p1, :cond_42

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 723
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_ai_art_museum_ui_off"

    .line 724
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hideEntryViewOnly()V
    .registers 3

    .line 685
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideEntryViewOnly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->cancelAnimator()V

    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    .line 691
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :cond_16
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_24

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 698
    :cond_24
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->updateOptionValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$entryVisibilityChanged$4()V
    .registers 3

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_ai_art_museum_ui_off"

    .line 721
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 180
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 181
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mLowLight:Z

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$notifyCameraOperateAction$3()V
    .registers 2

    .line 464
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_b

    .line 465
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryViewOnly()V

    const/4 v0, 0x1

    .line 466
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->entryVisibilityChanged(Z)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->updateLowLight(Z)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 432
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private optionOn()Z
    .registers 4

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_d

    .line 230
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "optionOn mOptionSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    .line 234
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optionOn optionValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showEntryViewOnly()V
    .registers 3

    .line 671
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showEntryViewOnly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->cancelAnimator()V

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 681
    const-string v0, "on"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->updateOptionValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateEntryTranslate()V
    .registers 3

    .line 633
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_39

    .line 634
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_30

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_27

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1d

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 642
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 639
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 636
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_39
    const/4 v1, 0x4

    if-ne v1, v0, :cond_46

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_46
    const/4 v1, 0x5

    if-ne v1, v0, :cond_52

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 654
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAnimTranslateDistance:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateEntryVisibility()V
    .registers 2

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->optionOn()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 222
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->animEntryVisibility(Z)V

    return-void

    .line 224
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryViewOnly()V

    return-void
.end method

.method private updateOptionValue(Ljava/lang/String;)V
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_7

    .line 660
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 152
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 156
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 159
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 160
    sget p3, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_effect_setting_layout_ui4:I

    goto :goto_1a

    .line 162
    :cond_18
    sget p3, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_effect_setting_layout:I

    :goto_1a
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    .line 166
    sget p3, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_rotate_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_tab_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 168
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_list_container:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->createItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 173
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mLowLight:Z

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->ringScreenLightUpdateUI()V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

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

    .line 283
    const-string p0, "key_ai_art_museum"

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

    .line 301
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    const-string v0, "key_ai_art_museum"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const-string v0, "key_ai_art_museum_option"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v0, "key_ai_art_museum_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const-string v0, "key_ai_art_museum_partial"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v0, "key_ai_art_museum_travel"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 289
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 4

    .line 240
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 241
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEntryView mEntryShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_26

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryViewOnly()V

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->entryVisibilityChanged(Z)V

    :cond_26
    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->initItemUI(II)V

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

    .line 256
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 443
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_46

    goto :goto_2e

    .line 489
    :sswitch_9
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->setPopSettingShowing(Z)V

    return-void

    .line 485
    :sswitch_d
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->setPopSettingShowing(Z)V

    return-void

    .line 446
    :sswitch_11
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSelfTimerCapturing:Z

    .line 447
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryView()V

    .line 448
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->setPopSettingShowing(Z)V

    return-void

    .line 479
    :sswitch_1a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 480
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryView()V

    return-void

    .line 472
    :sswitch_24
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    if-eqz p1, :cond_2e

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryViewOnly()V

    .line 474
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->entryVisibilityChanged(Z)V

    :cond_2e
    :goto_2e
    return-void

    .line 463
    :sswitch_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 498
    :sswitch_3c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSelfTimerCapturing:Z

    return-void

    .line 493
    :sswitch_3f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSelfTimerCapturing:Z

    return-void

    .line 457
    :sswitch_42
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->hideEntryView()V

    return-void

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_42
        0x2 -> :sswitch_42
        0xb -> :sswitch_3f
        0xc -> :sswitch_3c
        0x13 -> :sswitch_42
        0x17 -> :sswitch_2f
        0x19 -> :sswitch_24
        0x1d -> :sswitch_1a
        0x20 -> :sswitch_11
        0x4d -> :sswitch_42
        0x7c -> :sswitch_2f
        0x7d -> :sswitch_2f
        0xcf -> :sswitch_42
        0xf9 -> :sswitch_d
        0xfa -> :sswitch_9
        0x18d -> :sswitch_42
        0x191 -> :sswitch_3c
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 328
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 331
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 332
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->animEntryVisibility(Z)V

    const/4 p0, 0x1

    return p0

    .line 335
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_20

    .line 336
    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    .line 338
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

    .line 343
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 349
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 5

    .line 261
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPopSettingShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mPopSettingShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    const-string v0, "key_ai_art_museum_option"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 267
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mPopSettingShowing:Z

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_43

    .line 268
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 269
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->animEntryVisibility(Z)V

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

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 188
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    .line 312
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->setDeviceSettingData(Ljava/util/List;)V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 315
    const-string v1, "key_ai_art_museum_option"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 316
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_c

    :cond_27
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

    .line 507
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mPopSettingShowing:Z

    .line 508
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPopSettingShowing: mPopSettingShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mPopSettingShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 213
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 214
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_e

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->updateEntryVisibility()V

    .line 217
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mSettingItemUIManager:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->setupItemView()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 194
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 195
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->cancelAnimator()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    .line 198
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 11

    .line 355
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_d

    goto/16 :goto_118

    .line 363
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 373
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 375
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 377
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v6, 0x5a

    const/16 v7, 0x10e

    const/4 v8, 0x1

    if-ne v8, v5, :cond_98

    .line 378
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v6, :cond_81

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_6c

    if-eq v3, v7, :cond_5f

    const/16 v3, 0x33

    .line 398
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 399
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_expand_effect_list_top_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 401
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8d

    :cond_5f
    const/16 v3, 0x31

    .line 392
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 393
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8d

    :cond_6c
    const/16 v3, 0x55

    .line 385
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 388
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_expand_effect_list_top_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8d

    :cond_81
    const/16 v3, 0x51

    .line 380
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_expand_effect_list_left_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 405
    :goto_8d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v3, v7

    rem-int/lit16 v3, v3, 0x168

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e4

    :cond_98
    const/4 v8, 0x4

    if-ne v8, v5, :cond_ad

    const/16 v3, 0x15

    .line 407
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 408
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_hover_right_effect_list_item_margin_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v6, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e4

    :cond_ad
    const/4 v6, 0x5

    if-ne v6, v5, :cond_c2

    const/16 v3, 0x13

    .line 411
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_hover_left_effect_list_item_margin_left:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

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

    .line 417
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_d5

    goto :goto_dc

    .line 421
    :cond_d5
    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_setting_ui_bottom_margin_offset:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 423
    :goto_dc
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v4, v3

    .line 427
    :cond_e4
    :goto_e4
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI()Z

    move-result v0

    if-eqz v0, :cond_112

    if-eqz p1, :cond_112

    .line 428
    filled-new-array {v2, v4}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 429
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 437
    :cond_112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 358
    :cond_118
    :goto_118
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettingUILayout mEntryView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRotateContainer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
