.class public Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;
.super Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.source "SourceFile"


# instance fields
.field private mPopSettingTitleContainer:Landroid/view/ViewGroup;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$muVq7dN0Y78AdSsErzhcrGs5gC8(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->lambda$updateSettingUILayout$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$0()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->setOrientation(I)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateSettingUILayout(I)V

    return-void
.end method

.method private updatePopSettingTitleLayout()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 91
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x51

    .line 93
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 40
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 41
    sget p2, Lcom/transsion/camera/R$string;->video_portrait_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hidePopSettingTitle()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    const/16 v1, 0x64

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    goto :goto_1b

    .line 123
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_1b
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

    .line 130
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0xd

    if-eq p1, v0, :cond_14

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_14

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_14

    const/16 v0, 0x149

    if-eq p1, v0, :cond_14

    return-void

    .line 136
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->hidePopSettingTitle()V

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 144
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->onBackPressed()Z

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

    .line 72
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->onOrientationChanged(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 76
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

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

.method protected showPopSettingTitle()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 104
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateRingScreenLight(Z)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateRingScreenLight(Z)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    if-eqz p1, :cond_c

    const/high16 p1, -0x1000000

    goto :goto_d

    :cond_c
    const/4 p1, -0x1

    .line 83
    :goto_d
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 5

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v1, 0x51

    .line 54
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 55
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 56
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_41

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoRecording:Z

    if-nez v1, :cond_41

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_41

    const/4 v2, 0x1

    .line 59
    invoke-interface {v1, v2, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 62
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI5;->updatePopSettingTitleLayout()V

    return-void
.end method
