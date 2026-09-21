.class public Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;
    }
.end annotation


# static fields
.field private static final ADJUST_UI_ALPHA_CHANGE:I = 0x6

.field protected static final ADJUST_UI_HIDE_ALL:I = 0xa

.field private static final ADJUST_UI_HIDE_DELAY:I = 0xbb8

.field protected static final ADJUST_UI_SHOW_FLASH_CLICK:I = 0xc

.field protected static final ADJUST_UI_SHOW_PREVIEW_STARTED:I = 0xb

.field protected static final ADJUST_UI_SHRINK_HIDE:I = 0x7

.field protected static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_END:I = 0x9

.field protected static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_START:I = 0x8

.field private static final HIGH_VIBRATE_VALUE:I = 0x64

.field private static final LOW_VIBRATE_VALUE:I = 0x0

.field protected static final LUMINANCE_HIDE_STATE:I = -0x1

.field protected static final LUMINANCE_SHRINK_STATE:I = 0x1

.field protected static final LUMINANCE_SPREAD_STATE:I = 0x0

.field private static final LUMINANCE_STATE_KEY:Ljava/lang/String; = "luminance_state_key"

.field private static final MEDIUM_VIBRATE_VALUE:I = 0x32

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdjustShrinkBarLayout:Landroid/widget/FrameLayout;

.field protected mCurrentState:I

.field private mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mHintShown:Z

.field private mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

.field private mLastProgressValue:I

.field private mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

.field protected mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mNotAllowedDisplay:Z

.field private mShrinkProgressBar:Landroid/widget/ProgressBar;

.field protected mTopBarPopupShown:Z


# direct methods
.method public static synthetic $r8$lambda$x3WiZ-JkQrGW9PamO7lKmYLjmZ8(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSpreadBarSwitchDelay(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLevelIcon(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLevelIcon(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LuminanceAdjustUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 3

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    .line 573
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method private facingFront()Z
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 604
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVerticalDirection()Z
    .registers 2

    .line 659
    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    if-eqz p0, :cond_b

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    goto :goto_38

    .line 579
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    .line 581
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    if-eqz v1, :cond_c

    goto :goto_38

    .line 585
    :cond_c
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    if-eqz v1, :cond_11

    goto :goto_38

    .line 588
    :cond_11
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    .line 589
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "torch"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_31

    .line 591
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    return-void

    .line 593
    :cond_31
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    if-nez p1, :cond_38

    .line 594
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    :cond_38
    :goto_38
    return-void
.end method

.method private removeSpreadBarSwitchDelay()V
    .registers 2

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 619
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    return-void
.end method

.method private updateLevelIcon(I)V
    .registers 6

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    if-eqz v0, :cond_41

    .line 641
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v0, v1

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    mul-int/lit8 v2, v1, 0x3

    sub-int v2, v0, v2

    .line 644
    div-int/lit8 v2, v2, 0x2

    if-lt p1, v2, :cond_26

    .line 645
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_luminance_medium_selected:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2d

    .line 647
    :cond_26
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_luminance_medium_unselected:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2d
    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3a

    .line 651
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_luminance_high_selected:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 653
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_luminance_high_unselected:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_41
    return-void
.end method


# virtual methods
.method protected doHideAnimation()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_11
    return-void
.end method

.method protected doOnUp()V
    .registers 1

    return-void
.end method

.method protected doShowAnimation()V
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_9
    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLuminanceValue()I
    .registers 3

    .line 196
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result v0

    .line 197
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method protected handlerMsgExt(Landroid/os/Message;)V
    .registers 5

    .line 123
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    return-void

    .line 125
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected hideAdjustUI()V
    .registers 1

    .line 478
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    .line 479
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method public hideEntryView()V
    .registers 3

    .line 471
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideEntryView()V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return-void
.end method

.method protected hideShrinkUI()V
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 437
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected hideSpreadUI()V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_f

    const/16 v1, 0x8

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    .line 446
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "luminance_spread_ui_visible"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "luminance_spread_ui_hide"

    .line 447
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected initHandler()V
    .registers 3

    .line 500
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 103
    sget v0, Lcom/transsion/camera/R$layout;->flash_luminance_flash_view_new_interaction:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    sget p2, Lcom/transsion/camera/R$id;->flash_luminance_adjust_view_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 105
    sget p2, Lcom/transsion/camera/R$id;->flash_luminance_adjust_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    .line 106
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI-IA;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->addProgressChangeListener(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;)V

    .line 107
    sget p2, Lcom/transsion/camera/R$id;->adjust_progress_bar_shrink:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    .line 108
    sget p2, Lcom/transsion/camera/R$id;->adjust_shrink_bar_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mAdjustShrinkBarLayout:Landroid/widget/FrameLayout;

    .line 109
    sget p2, Lcom/transsion/camera/R$id;->low_rotation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 110
    sget p2, Lcom/transsion/camera/R$id;->medium_rotation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 111
    sget p2, Lcom/transsion/camera/R$id;->high_rotation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 112
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mAdjustShrinkBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected loadViewMarginParam()V
    .registers 3

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->flash_new_luminance_adjust_view_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginTop:I

    :cond_1e
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 202
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_116

    const/16 v2, 0x12

    if-eq p1, v2, :cond_fd

    const/16 v2, 0x4b

    if-eq p1, v2, :cond_e7

    const/16 v1, 0x24

    const/4 v2, 0x1

    if-eq p1, v1, :cond_c8

    const/16 v1, 0x25

    if-eq p1, v1, :cond_bc

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_9b

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_8d

    const/16 v1, 0x90

    if-eq p1, v1, :cond_9b

    const/16 v1, 0x91

    if-eq p1, v1, :cond_8d

    const/16 v1, 0x99

    if-eq p1, v1, :cond_c8

    const/16 v1, 0x9a

    if-eq p1, v1, :cond_bc

    const/16 v1, 0x136

    if-eq p1, v1, :cond_8d

    const/16 v1, 0x137

    if-eq p1, v1, :cond_9b

    packed-switch p1, :pswitch_data_150

    packed-switch p1, :pswitch_data_160

    packed-switch p1, :pswitch_data_16a

    goto/16 :goto_14f

    .line 274
    :pswitch_44
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "All ui manager loaded."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_5c

    .line 277
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    .line 282
    :cond_5c
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-nez p1, :cond_14f

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    return-void

    .line 230
    :pswitch_66
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    .line 231
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_14f

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 232
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideAdjustUI()V

    .line 235
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_14f

    .line 237
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    return-void

    .line 243
    :pswitch_88
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    .line 244
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    return-void

    .line 316
    :cond_8d
    :pswitch_8d
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    .line 317
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-ne p1, v2, :cond_14f

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-nez p1, :cond_14f

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    return-void

    .line 299
    :cond_9b
    :pswitch_9b
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_a4

    .line 301
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 304
    :cond_a4
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_14f

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-nez p1, :cond_b2

    goto/16 :goto_14f

    .line 307
    :cond_b2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 309
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    return-void

    .line 224
    :cond_bc
    :pswitch_bc
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-ne p1, v2, :cond_14f

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-nez p1, :cond_14f

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    return-void

    .line 208
    :cond_c8
    :pswitch_c8
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_cf

    .line 209
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 212
    :cond_cf
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_14f

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-nez p1, :cond_dd

    goto/16 :goto_14f

    .line 216
    :cond_dd
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 218
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    return-void

    .line 288
    :cond_e7
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_14f

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 289
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-nez p1, :cond_14f

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 248
    :cond_fd
    :pswitch_fd
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_14f

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showAdjustUI()V

    .line 251
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-eqz p1, :cond_14f

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    return-void

    .line 257
    :cond_116
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Preview started."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_135

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_135

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_13e

    const/16 v0, 0xb

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_13e

    .line 264
    :cond_135
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_13e

    const/16 v0, 0xa

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :cond_13e
    :goto_13e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_14f

    .line 269
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_14f
    :goto_14f
    return-void

    :pswitch_data_150
    .packed-switch 0xb
        :pswitch_9b
        :pswitch_8d
        :pswitch_c8
        :pswitch_bc
        :pswitch_9b
        :pswitch_8d
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x1c
        :pswitch_88
        :pswitch_66
        :pswitch_fd
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x6d
        :pswitch_44
        :pswitch_c8
        :pswitch_bc
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 2

    .line 354
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-nez v0, :cond_11

    .line 355
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    if-nez v0, :cond_f

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    const/4 p0, 0x1

    return p0

    .line 360
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 466
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->processLuminanceFlashClick()V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onLongPress(FF)Z
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 493
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 495
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 161
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateOrientation()V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_1f
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 485
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method protected processAnimationComplete()V
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    const/16 v0, 0x9

    .line 327
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method protected processLuminanceFlashClick()V
    .registers 3

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showAdjustUI()V

    .line 387
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showSpreadUI()V

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->setHintRevealBlocked()V

    .line 390
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->doShowAnimation()V

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 392
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLevelIcon(I)V

    .line 393
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected processLuminancePreviewStart()V
    .registers 3

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showAdjustUI()V

    .line 366
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 367
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-eqz v0, :cond_13

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 369
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    return-void

    .line 371
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    .line 372
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    return-void

    .line 376
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 377
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showSpreadUI()V

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->setHintRevealBlocked()V

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 381
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLevelIcon(I)V

    .line 382
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected refreshAdjustUI(I)V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setPercentage(F)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 345
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luminance_state_key"

    const-string v2, "-1"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    :cond_34
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected setHintRevealBlocked()V
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_d

    .line 625
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    :cond_d
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 155
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method protected setShrinkUIProgress()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected showAdjustUI()V
    .registers 3

    .line 133
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 134
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->getLuminanceValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 135
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->refreshAdjustUI(I)V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setAdjustUIOrientation(I)V

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 138
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    .line 143
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method protected showShrinkUI()V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 420
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_16

    .line 424
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_16
    return-void
.end method

.method protected showSpreadUI()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    .line 455
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "luminance_spread_ui_visible"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "luminance_spread_ui_show"

    .line 456
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 172
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->unInit()V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_a

    .line 174
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->unRegisterHintStateListener()V

    :cond_a
    return-void
.end method

.method protected updateLuminanceUIState(I)V
    .registers 5

    .line 680
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    .line 681
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 682
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "luminance_state_key"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_35
    return-void
.end method

.method protected updateLuminanceValue(I)V
    .registers 5

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_26

    .line 688
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 689
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    sub-int/2addr p0, v1

    add-int/2addr p1, p0

    .line 690
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "torch,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method protected updateOrientation()V
    .registers 3

    .line 664
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    if-eqz v0, :cond_5

    goto :goto_19

    .line 668
    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 669
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-eqz v0, :cond_12

    .line 670
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    return-void

    .line 672
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    if-nez v0, :cond_19

    .line 673
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    :cond_19
    :goto_19
    return-void
.end method

.method protected updateSpreadBarDelay()V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    .line 612
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    return-void
.end method

.method protected updateVibrate(I)V
    .registers 6

    if-nez p1, :cond_6

    .line 631
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    if-nez v0, :cond_16

    :cond_6
    const/16 v0, 0x32

    if-ne p1, v0, :cond_e

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    if-ne v1, v0, :cond_16

    :cond_e
    const/16 v0, 0x64

    if-ne p1, v0, :cond_23

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    if-eq v1, v0, :cond_23

    .line 634
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 636
    :cond_23
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    return-void
.end method
