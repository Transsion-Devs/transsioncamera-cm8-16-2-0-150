.class public Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected static SINK_ANIM_DURATION:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mBlurBootomSwitchRoot:Landroid/widget/FrameLayout;

.field protected mBlurBottomSwitch:Landroid/widget/ImageView;

.field protected mBlurTopSwitch:Landroid/widget/ImageView;

.field protected mCurrentBlurValue:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected final mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

.field protected mEntryRootView:Landroid/view/ViewGroup;

.field protected mEntryView:Landroid/view/View;

.field protected mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mIsBlurOn:Z

.field protected mLowLight:Z

.field protected final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field protected final mScrollerFadingLength:I

.field protected mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field protected mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

.field protected mSelfTimerCapturing:Z

.field protected mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected final mTranslateEnd:F

.field protected final mTranslateStart:F


# direct methods
.method public static synthetic $r8$lambda$BxsBOuMFi8v44pO00eFFZCH-Z14(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wg728ZVHpCn1jmhsygpFz4W3jQQ(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0xc8

    .line 49
    sput v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->SINK_ANIM_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mSelfTimerCapturing:Z

    .line 405
    new-instance v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    .line 423
    new-instance v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 73
    sget v0, Lcom/transsion/camera/R$dimen;->stblur_level_translate_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    .line 74
    sget v0, Lcom/transsion/camera/R$dimen;->stblur_level_translate_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateEnd:F

    .line 75
    sget v0, Lcom/transsion/camera/R$dimen;->stblur_scroller_fading_edge_length:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerFadingLength:I

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 424
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 425
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    .line 426
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 3

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 434
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    if-eqz v1, :cond_b

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_blur_lowlight:I

    goto :goto_d

    :cond_b
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_blur:I

    .line 435
    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    if-eqz v0, :cond_17

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch_lowlight:I

    goto :goto_19

    :cond_17
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch:I

    .line 437
    :goto_19
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBottomSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    :cond_25
    return-void
.end method

.method private onBlurButtonSwitch(Z)V
    .registers 5

    .line 300
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBlurButtonSwitch] , mCurrentBlurValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , turnBlurOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsBlurOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    if-ne p1, v0, :cond_2f

    return-void

    .line 305
    :cond_2f
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    if-eqz p1, :cond_38

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->getLastFeatureValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 313
    :cond_38
    const-string v0, "f0.0"

    .line 316
    :goto_3a
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBottomSwitch:Landroid/widget/ImageView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 8

    .line 82
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createEntryView+]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mLowLight:Z

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 87
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 89
    sget p3, Lcom/transsion/camera/R$layout;->stblur_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    .line 91
    sget p2, Lcom/transsion/camera/R$id;->blur_top_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    .line 92
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->ringScreenLightUpdateUI()V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 96
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p3, p2

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 97
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    const p3, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->blur_level_view_root:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 105
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->blur_bottom_switch:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBottomSwitch:Landroid/widget/ImageView;

    .line 108
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->blur_bottom_switch_root:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBootomSwitchRoot:Landroid/widget/FrameLayout;

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBootomSwitchRoot:Landroid/widget/FrameLayout;

    invoke-static {p1, p3, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/R$id;->blur_level_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 116
    invoke-virtual {p1, v3}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerFadingLength:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    xor-int/2addr p3, v3

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[createEntryView-] mScrollerFadingLength:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerFadingLength:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " , bottomRegionHeight:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsBlurOn\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDurationDataList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 162
    new-instance v4, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    invoke-direct {v4, v3, v3}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

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

    .line 208
    const-string p0, "key_st_blur"

    return-object p0
.end method

.method protected getLastFeatureValue()Ljava/lang/String;
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_st_blur_feature"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_19

    .line 327
    :cond_10
    const-string v1, "\\+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    .line 328
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const-string p0, "f2.8"

    goto :goto_2a

    :cond_28
    const-string p0, "f4.0"

    :goto_2a
    if-eqz v3, :cond_34

    .line 329
    const-string v1, "null"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_34
    move-object v3, p0

    .line 330
    :cond_35
    sget-object p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastFeatureValue,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 180
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 181
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_18

    .line 184
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->destroy()V

    .line 186
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->resetUI()V

    return-void
.end method

.method protected initScrollerView()V
    .registers 4

    .line 168
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initScrollerView] mIsBlurOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCurrentBlurValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_4e

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->getDurationDataList()Ljava/util/List;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;I)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    goto :goto_46

    :cond_42
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->getLastFeatureValue()Ljava/lang/String;

    move-result-object v1

    :goto_46
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4e
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
    .registers 3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_11

    const/16 v0, 0xc

    if-eq p1, v0, :cond_d

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_d

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mSelfTimerCapturing:Z

    return-void

    :cond_11
    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mSelfTimerCapturing:Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 237
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onBackPressed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 242
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 246
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 247
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->showOrHideSTblurLevel(Z)V

    const/4 p0, 0x1

    return p0

    :cond_27
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/camera/R$id;->blur_top_switch:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_39

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    .line 274
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onClick]  blur_top_switch, rootAlpha:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2e

    .line 276
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->showOrHideSTblurLevel(Z)V

    return-void

    :cond_2e
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6c

    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->showOrHideSTblurLevel(Z)V

    return-void

    .line 281
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/camera/R$id;->blur_bottom_switch_root:I

    if-ne v0, v1, :cond_6c

    .line 282
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onClick] blur_bottom_switch_root"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_6c

    .line 286
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_6c

    :cond_58
    const-wide/16 v3, 0xfa

    .line 290
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 291
    const-string p0, "fast click, return !"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 294
    :cond_66
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->onBlurButtonSwitch(Z)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected resetUI()V
    .registers 2

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->updateSTblurLevelVisibility(Z)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_b

    .line 337
    invoke-interface {p0, v0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_b
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 432
    new-instance v1, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 219
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_14

    .line 221
    sget-object p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_14
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    .line 226
    const-string v0, "f0.0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    .line 227
    sget-object p1, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDeviceSetting] mCurrentBlurValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 200
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result v0

    if-nez v0, :cond_25

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_25
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
    .registers 3

    .line 150
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 151
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setupEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->resetUI()V

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->initScrollerView()V

    return-void
.end method

.method protected showOrHideSTblurLevel(Z)V
    .registers 11

    .line 353
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideLevelLayout] show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 360
    const-string v1, "translationY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "alpha"

    if-eqz p1, :cond_4b

    .line 361
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    iget v7, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateEnd:F

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v7, v8, v3

    invoke-static {v5, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 362
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    new-array v6, v0, [F

    fill-array-data v6, :array_9e

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 363
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    new-array v7, v0, [F

    fill-array-data v7, :array_a6

    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 365
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v3, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_76

    .line 367
    :cond_4b
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateEnd:F

    iget v7, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v7, v8, v3

    invoke-static {v5, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 368
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    new-array v6, v0, [F

    fill-array-data v6, :array_ae

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 369
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    new-array v7, v0, [F

    fill-array-data v7, :array_b6

    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 371
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v2, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 375
    :goto_76
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 376
    sget-object v7, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 377
    sget v7, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->SINK_ANIM_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    .line 378
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v2

    aput-object v5, v7, v3

    aput-object v4, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 379
    new-instance v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$1;-><init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;Z)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_ae
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .registers 3

    .line 191
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 192
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSTblurLevelVisibility(Z)V
    .registers 8

    .line 343
    sget-object v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLevelVisibility visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, v1

    :goto_20
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v3

    :goto_2d
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerViewRoot:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mTranslateStart:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move v3, v4

    :goto_46
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
