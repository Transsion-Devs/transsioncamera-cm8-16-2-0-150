.class public Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;
    }
.end annotation


# static fields
.field private static final COLOR_ANIMATION_MAX_PROGRESS:F = 0.7f

.field private static final DEBUG:Z

.field private static final MACRO_CAMERA_ACTIVE:I = 0x1

.field private static final MACRO_CAMERA_INACTIVE:I = 0x0

.field private static final MSG_HIDE_VIEW:I = 0x66

.field private static final MSG_SHOW_VIEW:I = 0x65

.field private static final MSG_UPDATE_VIEW:I = 0x67

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SETTING_KEY:Ljava/lang/String; = "key_auto_macro_switch"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSLATE_DURATION:J = 0x1c2L


# instance fields
.field private mAllowShowView:Z

.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mAutoMacroSwitch:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

.field private mAutoMacroSwitchResultCallbackImpl:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCaptureRecordProcessing:Z

.field private mCurrentMacroValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mIconOffColor:I

.field private final mIconOnColor:I

.field private mImageStyleShow:Z

.field private mIsCapturing:Z

.field private mIsFilterShowing:Z

.field private mIsPopSettingShow:Z

.field private mIsQrcodeIconShowing:Z

.field private mIsShouldShow:Z

.field private mIsSuperNightLiteCapturing:Z

.field private mIsSuperNightLiteSwitchShowing:Z

.field private mIsZoomWheelShowing:Z

.field private mIsZooming:Z

.field protected mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mResources:Landroid/content/res/Resources;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$2hQEYVx1NLtUhhOAbFQPbtasVxE(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->lambda$doCreateEntryView$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JL-JNplBfg7iWU0jixtzMybfA8s(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->lambda$updateMacroSwitchLayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lnwzF6xsmLFqAolsp7E6kZPWPu8(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->lambda$updateToggleImage$3(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n_SazgxlK2tc0znqNzFnRA5cg5Q(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->lambda$doCreateEntryView$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIconOffColor(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOffColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconOnColor(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOnColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mUIHandler:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateToggleImage(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateToggleImage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AutoMacroSwitchUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 62
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isAutoMacroSwitchLogSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->DEBUG:Z

    .line 73
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 76
    new-instance v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoMacroSwitchResultCallbackImpl:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 82
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 83
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    .line 88
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    .line 89
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 90
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCaptureRecordProcessing:Z

    .line 91
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZooming:Z

    .line 92
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsCapturing:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsShouldShow:Z

    .line 94
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteCapturing:Z

    .line 165
    new-instance v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mUIHandler:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    .line 167
    sget v0, Lcom/transsion/camera/R$color;->auto_maro_switch_icon_on:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOnColor:I

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$color;->auto_maro_switch_icon_off:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOffColor:I

    .line 169
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method private closeAutoMacroToggle()V
    .registers 8

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    goto :goto_60

    .line 488
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_auto_macro_switch_toggle"

    const-string v3, "on"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsCapturing:Z

    if-nez v4, :cond_1b

    .line 491
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCurrentMacroValue:Ljava/lang/String;

    .line 493
    :cond_1b
    sget-object v4, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeAutoMacroToggle: macroValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 494
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoMacroSwitch:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    .line 495
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentStreamIds()[I

    move-result-object v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoMacroSwitch:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    .line 496
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentStreamIds()[I

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_60

    .line 497
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsShouldShow:Z

    .line 498
    const-string v1, "off"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_60
    :goto_60
    return-void
.end method

.method private getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 664
    iget v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 665
    iget p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOnColor:I

    goto :goto_e

    :cond_c
    iget p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIconOffColor:I

    .line 667
    :goto_e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v1, :cond_1d

    .line 668
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :cond_1e
    :goto_1e
    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_3b

    div-float/2addr p1, v1

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3b
    return p2
.end method

.method private getMarginOffsetInExpandForm()I
    .registers 3

    .line 637
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteSwitchShowing:Z

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    if-eqz v1, :cond_13

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_vertical_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_13
    if-nez v0, :cond_1c

    .line 640
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 641
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_vertical_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getMarginOffsetInHoverForm()I
    .registers 3

    .line 627
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteSwitchShowing:Z

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    if-eqz v1, :cond_13

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->auto_macro_switch_hover_horizontal_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_13
    if-nez v0, :cond_1c

    .line 630
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 631
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->auto_macro_switch_hover_horizontal_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private hideAutoHint()V
    .registers 2

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 728
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$doCreateEntryView$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 220
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$doCreateEntryView$1(Landroid/view/View;)V
    .registers 7

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_f8

    .line 183
    :cond_a
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    if-eqz p1, :cond_f8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_14

    goto/16 :goto_f8

    .line 186
    :cond_14
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_auto_macro_switch_toggle"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_76

    .line 189
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {p1, v1, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCurrentMacroValue:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_61

    .line 197
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$drawable;->ic_auto_macro_toggle_off:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :goto_61
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoMacroSwitch(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 v0, 0x21

    const-string v2, "2"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    goto :goto_b3

    .line 202
    :cond_76
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCurrentMacroValue:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoMacroSwitch(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_b3

    .line 211
    :cond_a6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$drawable;->ic_auto_macro_toggle_on:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :goto_b3
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ce
    :goto_ce
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 217
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v4, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_ce

    .line 224
    :cond_f3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_f8
    :goto_f8
    return-void
.end method

.method private synthetic lambda$updateMacroSwitchLayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 614
    const-string v0, "leftMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 615
    const-string v0, "rightMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 616
    const-string v0, "topMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 617
    const-string v0, "bottomMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateToggleImage$3(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 710
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private restoreAutoMacroToggle()V
    .registers 6

    .line 474
    sget-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAutoMacroToggle: mCurrentMacroValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCurrentMacroValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCurrentMacroValue:Ljava/lang/String;

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_3f

    .line 476
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_auto_macro_switch_toggle"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateToggleImage()V

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsShouldShow:Z

    :cond_3f
    return-void
.end method

.method private showAutoHint()V
    .registers 4

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->macro_enable_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_21

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_21
    return-void
.end method

.method private switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 647
    new-instance v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method private updateToggleImage()V
    .registers 7

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    return-void

    .line 687
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 688
    const-string v1, "key_auto_macro_switch_toggle"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 690
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_5d

    .line 694
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_auto_macro_toggle_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5d

    .line 697
    :cond_3d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_5d

    .line 701
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_auto_macro_toggle_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    :goto_5d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 706
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 707
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v3

    .line 708
    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 709
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v5, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_78

    .line 714
    :cond_9d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 174
    sget v0, Lcom/transsion/camera/R$layout;->auto_macro_switch_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 175
    sget p2, Lcom/transsion/camera/R$id;->auto_macro_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 176
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 177
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const-string v0, "auto_macro_toggle_animation.json"

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 179
    :cond_1e
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 227
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateToggleImage()V

    return-object p1
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

    .line 285
    const-string p0, "key_auto_macro_switch"

    return-object p0
.end method

.method protected getMacroSwitchLayoutMargins(II)Landroid/graphics/Rect;
    .registers 3

    .line 520
    new-instance p0, Landroid/graphics/Rect;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 293
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    const/16 v1, 0x12a

    .line 243
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 245
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0x21

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoMacroSwitch(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_159

    const/4 v0, 0x4

    const/16 v2, 0xed

    const/4 v3, 0x0

    if-eq p1, v0, :cond_146

    const/4 v0, 0x5

    const/16 v4, 0xee

    if-eq p1, v0, :cond_11f

    const/16 v0, 0x13

    if-eq p1, v0, :cond_146

    const/16 v0, 0x14

    if-eq p1, v0, :cond_159

    const/16 v0, 0x24

    if-eq p1, v0, :cond_112

    const/16 v0, 0x25

    if-eq p1, v0, :cond_f1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_eb

    const/16 v0, 0x31

    if-eq p1, v0, :cond_dd

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_d7

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_c3

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_146

    const/16 v0, 0xd3

    if-eq p1, v0, :cond_11f

    const/16 v0, 0xe9

    if-eq p1, v0, :cond_bf

    const/16 v0, 0xea

    if-eq p1, v0, :cond_ad

    if-eq p1, v2, :cond_146

    if-eq p1, v4, :cond_11f

    sparse-switch p1, :sswitch_data_184

    packed-switch p1, :pswitch_data_1be

    goto/16 :goto_15e

    .line 454
    :sswitch_4b
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 455
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    goto/16 :goto_15e

    .line 450
    :sswitch_52
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 451
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    goto/16 :goto_15e

    .line 462
    :sswitch_59
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    .line 463
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    goto/16 :goto_15e

    .line 458
    :sswitch_60
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsQrcodeIconShowing:Z

    .line 459
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    goto/16 :goto_15e

    .line 401
    :sswitch_67
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    if-nez v0, :cond_71

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_71

    .line 402
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 404
    :cond_71
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    goto/16 :goto_15e

    .line 361
    :sswitch_75
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 362
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    goto/16 :goto_15e

    .line 340
    :sswitch_7b
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 341
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    .line 342
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCaptureRecordProcessing:Z

    .line 343
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZoomWheelShowing:Z

    .line 344
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZooming:Z

    .line 345
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 346
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsShouldShow:Z

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->restoreAutoMacroToggle()V

    .line 348
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->hideAutoHint()V

    goto/16 :goto_15e

    .line 356
    :sswitch_91
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsCapturing:Z

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 358
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->restoreAutoMacroToggle()V

    goto/16 :goto_15e

    .line 351
    :sswitch_9d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->closeAutoMacroToggle()V

    .line 353
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsCapturing:Z

    goto/16 :goto_15e

    .line 330
    :sswitch_a9
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsShouldShow:Z

    goto/16 :goto_15e

    .line 418
    :cond_ad
    :sswitch_ad
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCaptureRecordProcessing:Z

    .line 419
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_15e

    .line 420
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    goto/16 :goto_15e

    .line 366
    :cond_bf
    :sswitch_bf
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCaptureRecordProcessing:Z

    goto/16 :goto_146

    .line 411
    :cond_c3
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCaptureRecordProcessing:Z

    if-nez v0, :cond_d3

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    if-nez v0, :cond_d3

    .line 412
    :cond_d1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 414
    :cond_d3
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    goto/16 :goto_15e

    .line 407
    :cond_d7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    .line 408
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    goto/16 :goto_15e

    .line 395
    :cond_dd
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    .line 396
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    if-nez v0, :cond_15e

    .line 397
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    goto/16 :goto_15e

    .line 391
    :cond_eb
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    .line 392
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    goto/16 :goto_15e

    .line 442
    :cond_f1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    if-nez v0, :cond_107

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    if-nez v0, :cond_107

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_107

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZoomWheelShowing:Z

    if-nez v0, :cond_107

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZooming:Z

    if-nez v0, :cond_107

    .line 443
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 445
    :cond_107
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsCapturing:Z

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->restoreAutoMacroToggle()V

    goto :goto_15e

    .line 385
    :cond_112
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->closeAutoMacroToggle()V

    .line 388
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsCapturing:Z

    goto :goto_15e

    :cond_11f
    :pswitch_11f
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_125

    .line 429
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZoomWheelShowing:Z

    :cond_125
    const/16 v0, 0x18

    if-ne p1, v0, :cond_12b

    .line 432
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZooming:Z

    :cond_12b
    if-ne p1, v4, :cond_12f

    .line 435
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteCapturing:Z

    .line 437
    :cond_12f
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsFilterShowing:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mImageStyleShow:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZoomWheelShowing:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZooming:Z

    if-nez v0, :cond_15e

    .line 438
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    goto :goto_15e

    :cond_146
    :goto_146
    :pswitch_146
    const/16 v0, 0x19

    if-ne p1, v0, :cond_14c

    .line 374
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZoomWheelShowing:Z

    :cond_14c
    const/16 v0, 0x17

    if-ne p1, v0, :cond_152

    .line 377
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsZooming:Z

    :cond_152
    if-ne p1, v2, :cond_156

    .line 380
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteCapturing:Z

    .line 382
    :cond_156
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    goto :goto_15e

    .line 336
    :cond_159
    :sswitch_159
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateToggleImage()V

    .line 468
    :cond_15e
    :goto_15e
    sget-boolean v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->DEBUG:Z

    if-eqz v0, :cond_182

    .line 469
    sget-object v0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mAllowShowView = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_182
    return-void

    nop

    :sswitch_data_184
    .sparse-switch
        0x1 -> :sswitch_159
        0x8 -> :sswitch_a9
        0xb -> :sswitch_bf
        0xc -> :sswitch_ad
        0xd -> :sswitch_9d
        0xe -> :sswitch_91
        0x1c -> :sswitch_7b
        0x20 -> :sswitch_159
        0xf2 -> :sswitch_75
        0xf3 -> :sswitch_67
        0x115 -> :sswitch_60
        0x116 -> :sswitch_59
        0x127 -> :sswitch_52
        0x128 -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_1be
    .packed-switch 0x17
        :pswitch_146
        :pswitch_11f
        :pswitch_146
        :pswitch_11f
    .end packed-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 511
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 513
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->setOrientation(IZ)V

    .line 515
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 505
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 506
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 268
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 269
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 312
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 314
    sget-object p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 317
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoMacroSwitchResultCallbackImpl:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$AutoMacroSwitchResultCallbackImpl;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    check-cast p1, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAutoMacroSwitch:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

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

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    return-void
.end method

.method public showEntryView()V
    .registers 5

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_3c

    .line 253
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsSuperNightLiteCapturing:Z

    const/4 v2, 0x0

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mIsShouldShow:Z

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_15

    :cond_13
    const/16 v1, 0x8

    .line 254
    :goto_15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_1c

    const/4 v2, 0x1

    .line 255
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_2e

    if-eqz v2, :cond_2e

    .line 257
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    if-eqz v3, :cond_29

    const/16 v3, 0x129

    goto :goto_2b

    :cond_29
    const/16 v3, 0x12a

    .line 256
    :goto_2b
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 259
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mAllowShowView:Z

    if-eqz v0, :cond_3c

    if-eqz v2, :cond_3c

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->updateMacroSwitchLayout()V

    :cond_3c
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 299
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 301
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 303
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_12

    .line 304
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    .line 306
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->hideAutoHint()V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mUIHandler:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected updateMacroSwitchLayout()V
    .registers 14

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_c

    .line 525
    sget-object p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateMacroSwitchLayout: mMacroToggle is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 529
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 530
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 531
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 532
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v5, 0x0

    .line 537
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 538
    iget v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v6, v7}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMacroSwitchLayoutMargins(II)Landroid/graphics/Rect;

    move-result-object v6

    .line 539
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->auto_macro_switch_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 541
    iget v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v8, 0x55

    const/16 v9, 0x33

    const/4 v10, 0x1

    if-ne v7, v10, :cond_13f

    .line 542
    iget v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_103

    const/16 v8, 0xb4

    if-eq v7, v8, :cond_c3

    const/16 v8, 0x10e

    if-eq v7, v8, :cond_84

    .line 569
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_bottom_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMarginOffsetInExpandForm()I

    move-result v8

    add-int/2addr v7, v8

    .line 570
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_left_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 571
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_64

    if-eq v4, v7, :cond_64

    goto :goto_65

    :cond_64
    move v10, v5

    .line 572
    :goto_65
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    if-eqz v10, :cond_6b

    move v11, v4

    goto :goto_6c

    :cond_6b
    move v11, v7

    :goto_6c
    invoke-static {v9, v11}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 573
    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v8}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v6, 0x53

    .line 574
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v6, v5

    move v9, v7

    move v7, v6

    :goto_81
    move v5, v10

    goto/16 :goto_21b

    .line 560
    :cond_84
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_left_margin_90:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMarginOffsetInExpandForm()I

    move-result v8

    add-int/2addr v7, v8

    .line 561
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_bottom_margin_90:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 562
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a4

    if-eq v1, v7, :cond_a4

    goto :goto_a5

    :cond_a4
    move v10, v5

    .line 563
    :goto_a5
    iget v11, v6, Landroid/graphics/Rect;->left:I

    if-eqz v10, :cond_ab

    move v12, v1

    goto :goto_ac

    :cond_ab
    move v12, v7

    :goto_ac
    invoke-static {v11, v12}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 564
    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v8}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 565
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v9, v5

    move v6, v8

    move v8, v7

    move v5, v10

    move v7, v9

    goto/16 :goto_21b

    .line 552
    :cond_c3
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_bottom_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMarginOffsetInExpandForm()I

    move-result v8

    add-int/2addr v7, v8

    .line 553
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_left_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 554
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_e3

    if-eq v3, v7, :cond_e3

    goto :goto_e4

    :cond_e3
    move v10, v5

    .line 555
    :goto_e4
    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-eqz v10, :cond_ea

    move v11, v3

    goto :goto_eb

    :cond_ea
    move v11, v7

    :goto_eb
    invoke-static {v9, v11}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 556
    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v8}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x35

    .line 557
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v9, v5

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_81

    .line 544
    :cond_103
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_left_margin_90:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMarginOffsetInExpandForm()I

    move-result v9

    add-int/2addr v7, v9

    .line 545
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$dimen;->auto_macro_switch_expand_bottom_margin_90:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 546
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_123

    if-eq v2, v7, :cond_123

    goto :goto_124

    :cond_123
    move v10, v5

    .line 547
    :goto_124
    iget v11, v6, Landroid/graphics/Rect;->right:I

    if-eqz v10, :cond_12a

    move v12, v2

    goto :goto_12b

    :cond_12a
    move v12, v7

    :goto_12b
    invoke-static {v11, v12}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 548
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v9}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 549
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v6, v5

    :goto_13c
    move v8, v6

    goto/16 :goto_81

    :cond_13f
    const/4 v11, 0x4

    if-ne v7, v11, :cond_17e

    .line 578
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 579
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->auto_macro_switch_left_hover_bottom_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 580
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->auto_macro_switch_left_hover_right_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 581
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMarginOffsetInHoverForm()I

    move-result v9

    add-int/2addr v8, v9

    .line 582
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_164

    if-eq v2, v8, :cond_164

    goto :goto_165

    :cond_164
    move v10, v5

    .line 583
    :goto_165
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v7}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 584
    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-eqz v10, :cond_173

    move v9, v2

    goto :goto_174

    :cond_173
    move v9, v8

    :goto_174
    invoke-static {v6, v9}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v6, v5

    move v9, v7

    move v7, v8

    goto :goto_13c

    :cond_17e
    const/4 v8, 0x5

    if-ne v7, v8, :cond_1be

    .line 586
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 587
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->auto_macro_switch_right_hover_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 588
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->auto_macro_switch_right_hover_left_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 589
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->getMarginOffsetInHoverForm()I

    move-result v9

    add-int/2addr v8, v9

    .line 590
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1a3

    if-eq v1, v8, :cond_1a3

    goto :goto_1a4

    :cond_1a3
    move v10, v5

    .line 591
    :goto_1a4
    iget v9, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v7}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v9

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 592
    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-eqz v10, :cond_1b2

    move v9, v1

    goto :goto_1b3

    :cond_1b2
    move v9, v8

    :goto_1b3
    invoke-static {v6, v9}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move v9, v5

    move v6, v7

    move v7, v9

    goto/16 :goto_81

    :cond_1be
    const/4 v8, 0x3

    const v9, 0x800053

    if-ne v7, v8, :cond_1ee

    .line 594
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->auto_macro_switch_margin_left:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 595
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 596
    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->auto_macro_switch_hover_bottom_margin:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 595
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 597
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_217

    .line 599
    :cond_1ee
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->auto_macro_switch_margin_left:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 600
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 601
    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->auto_macro_switch_margin_bottom:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 600
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 602
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_217
    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_21b
    if-eqz v5, :cond_268

    .line 606
    const-string v5, "leftMargin"

    filled-new-array {v1, v8}, [I

    move-result-object v1

    invoke-static {v5, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 607
    const-string v5, "rightMargin"

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 608
    const-string v5, "topMargin"

    filled-new-array {v3, v6}, [I

    move-result-object v3

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 609
    const-string v5, "bottomMargin"

    filled-new-array {v4, v9}, [I

    move-result-object v4

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 610
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    filled-new-array {v1, v2, v3, v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1c2

    .line 611
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 612
    sget-object v2, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 613
    new-instance v2, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 620
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 623
    :cond_268
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mMacroToggle:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
