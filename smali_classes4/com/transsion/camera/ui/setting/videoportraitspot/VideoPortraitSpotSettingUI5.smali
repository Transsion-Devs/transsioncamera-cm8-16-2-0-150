.class public Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;
.super Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_POP_SETTING_NAME:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLowLight:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mPopSettingTitleContainer:Landroid/view/View;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$7Dbl63twBIIgvJEy4nx8TCEbf6Y(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$V0LyEyoySEwXrrm87CZhd8vQp-A(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->hidePopSettingTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhidePopSettingTitle(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->hidePopSettingTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPortraitSpotSettingUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 40
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 49
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;

    return-void
.end method

.method private hidePopSettingTitle()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mLowLight:Z

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mLowLight:Z

    if-eqz p0, :cond_9

    const/high16 p0, -0x1000000

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private showPopSettingTitle()V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleContainer:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2e

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mUIHandler:Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$UIHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setItemClickCallback(Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;)V

    .line 100
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutId()I
    .registers 1

    .line 54
    sget p0, Lcom/transsion/camera/R$layout;->video_portrait_spot_panel_layout_ui5:I

    return p0
.end method

.method protected hideSettingUI(ZZ)V
    .registers 3

    .line 106
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->hidePopSettingTitle()V

    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleContainer:Landroid/view/View;

    .line 61
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 62
    sget p2, Lcom/transsion/camera/R$string;->video_portrait_spot_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mLowLight:Z

    if-eqz p0, :cond_25

    const/high16 p0, -0x1000000

    goto :goto_26

    :cond_25
    const/4 p0, -0x1

    :goto_26
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

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
    .registers 3

    .line 149
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->onOrientationChanged(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 153
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 112
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2f

    .line 116
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_2f

    .line 121
    :cond_23
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getCurrentItemSelected()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2f

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->showPopSettingTitle()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 182
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->unInit()V

    .line 183
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateSettingUILayout(Z)V
    .registers 5

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_c

    .line 69
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateSettingUILayout, mSelectRootContainer is null return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v1, 0x53

    .line 75
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->isAnimatorRunning()Z

    move-result v1

    if-nez v1, :cond_35

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_35

    const/4 v2, 0x1

    .line 79
    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 82
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_portrait_spot_thumbnail_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_item_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr v2, v0

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI5;->mPopSettingTitleContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->updateItemLayout(II)V

    return-void
.end method
