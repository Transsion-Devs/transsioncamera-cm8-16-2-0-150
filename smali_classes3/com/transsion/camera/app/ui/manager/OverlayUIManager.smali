.class public Lcom/transsion/camera/app/ui/manager/OverlayUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field protected mCommonSettingUIs:Ljava/util/List;

.field private mCurrentModeName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field private mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field protected mModeSettingUIs:Ljava/util/List;

.field private mOnTouchSeekBarSwitchCam:Z

.field private mOverlayRootLayout:Landroid/view/ViewGroup;

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OverlayUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .registers 10

    .line 83
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 69
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOnTouchSeekBarSwitchCam:Z

    .line 85
    iput-object p8, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 86
    iput-object p9, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2f

    .line 524
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2f

    .line 528
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_e

    .line 529
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p3, :cond_e

    const/4 p0, 0x1

    :cond_2f
    :goto_2f
    return p0
.end method

.method private initCommonSettingUI(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 5

    if-nez p1, :cond_4

    goto/16 :goto_c1

    .line 543
    :cond_4
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_18

    .line 546
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 549
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_1f

    .line 550
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 553
    :cond_1f
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2d

    .line 556
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 559
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v0, :cond_34

    .line 560
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 563
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_3d

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 567
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_44

    .line 568
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 571
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_4b

    .line 572
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 575
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    if-eqz v0, :cond_52

    .line 576
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V

    .line 579
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v0, :cond_59

    .line 580
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    .line 583
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    if-eqz v0, :cond_60

    .line 584
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 587
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_67

    .line 588
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 591
    :cond_67
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    const-string v0, "key_camera_zoom"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 592
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    :cond_82
    const-string/jumbo v0, "wide_camera"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 595
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    :cond_97
    const-string v0, "front_wide_camera"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 599
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    :cond_ab
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    if-eqz p0, :cond_c1

    .line 605
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method private isSettingViewExist(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p2, :cond_15

    move v0, p0

    .line 693
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 694
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return p0
.end method

.method private removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_21

    .line 614
    :cond_3
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_21

    .line 618
    :cond_a
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 620
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_21

    .line 625
    :cond_14
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOnTouchSeekBarSwitchCam:Z

    if-eqz p0, :cond_21

    .line 626
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->isEntryViewRetained()Z

    move-result p0

    if-nez p0, :cond_21

    .line 627
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_21
    :goto_21
    return-void
.end method

.method private unInitOverlaySettingUIs(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_1f

    .line 470
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 473
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 474
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    :cond_1f
    return-void
.end method

.method private updateCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 6

    if-nez p1, :cond_4

    goto/16 :goto_b4

    .line 637
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_40

    .line 639
    instance-of v0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    if-eqz v0, :cond_27

    .line 640
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->isEntryViewCreated()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_b4

    .line 643
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraZoomLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_40

    .line 645
    :cond_27
    instance-of v0, p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    if-eqz v0, :cond_36

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraFlashLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_40

    .line 648
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 653
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_50

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_55

    .line 654
    :cond_50
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_55
    if-nez v0, :cond_72

    .line 658
    sget-object p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEntryView null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 662
    :cond_72
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setupEntryView()V

    .line 663
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 665
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOnTouchSeekBarSwitchCam:Z

    if-eqz v1, :cond_b4

    .line 666
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_9e

    const/4 v2, 0x0

    .line 668
    :goto_85
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_9e

    .line 669
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v0, :cond_9b

    .line 670
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->isEntryViewRetained()Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_b4

    .line 673
    :cond_98
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_9e
    if-nez v1, :cond_a1

    goto :goto_b4

    .line 681
    :cond_a1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->isEntryViewRetained()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 682
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->isSettingViewExist(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_b4

    .line 683
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 686
    :cond_b1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method private updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V
    .registers 6

    if-eqz p1, :cond_2b

    .line 495
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 497
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    if-eqz v1, :cond_c

    .line 499
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 501
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    :cond_2b
    if-eqz p2, :cond_6b

    .line 506
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 507
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_52

    .line 508
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 509
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->initCommonSettingUI(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 511
    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_67

    if-eqz v0, :cond_67

    .line 512
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 513
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 515
    :cond_67
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    goto :goto_37

    .line 518
    :cond_6b
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_74

    const/16 p1, 0x13d

    .line 519
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_74
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraZoomLayout:Landroid/view/ViewGroup;

    if-nez p0, :cond_c

    .line 100
    sget-object p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide mCameraZoomLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x4

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 340
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_10

    .line 343
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 345
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_30

    :cond_40
    const/16 v0, 0xeb

    if-ne p1, v0, :cond_48

    const/4 p1, 0x0

    .line 349
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOnTouchSeekBarSwitchCam:Z

    return-void

    :cond_48
    const/16 v0, 0xec

    if-eq p1, v0, :cond_52

    const/16 v0, 0xc6

    if-ne p1, v0, :cond_51

    goto :goto_52

    :cond_51
    return-void

    :cond_52
    :goto_52
    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOnTouchSeekBarSwitchCam:Z

    return-void
.end method

.method public notifyCameraStateToUI(I)V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 298
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCameraState(I)V

    goto :goto_8

    .line 301
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_30

    .line 302
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 303
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCameraState(I)V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 6

    .line 310
    sget-object v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed, pressBackKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 313
    instance-of v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    if-eqz v3, :cond_36

    .line 314
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed(Z)Z

    move-result v3

    if-eqz v3, :cond_36

    return v1

    .line 316
    :cond_36
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    .line 321
    :cond_3d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_6e

    .line 322
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 323
    instance-of v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    if-eqz v2, :cond_5c

    .line 324
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_5c

    return v1

    .line 326
    :cond_5c
    instance-of v2, v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    if-eqz v2, :cond_67

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_67

    return v1

    .line 328
    :cond_67
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_45

    return v1

    :cond_6e
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_23

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 361
    invoke-interface {v0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    goto :goto_13

    .line 364
    :cond_23
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_43

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 366
    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    goto :goto_33

    :cond_43
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 483
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_8

    .line 486
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_30

    .line 487
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 488
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_20

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 278
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 284
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 286
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    .line 291
    :cond_37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    sget v0, Lcom/transsion/camera/R$layout;->overlay_ui_layer_root_layout:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    sget v0, Lcom/transsion/camera/R$id;->overlay_ui_root_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onLongPress(FF)Z
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 259
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 264
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 266
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    .line 271
    :cond_37
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 131
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onModePanelDistanceChanged(FZ)V

    goto :goto_8

    .line 134
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_30

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onModePanelDistanceChanged(FZ)V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 143
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p2, :cond_1b

    .line 145
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 146
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_b

    .line 149
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_33

    .line 150
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 151
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_23

    :cond_33
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 8

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 160
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_3c

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_2a

    .line 169
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_56

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_44

    :cond_56
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 229
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_8

    .line 232
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 234
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_20

    .line 237
    :cond_30
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 214
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_8

    .line 217
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 219
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_20

    .line 222
    :cond_30
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 244
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_8

    .line 247
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 249
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_20

    .line 252
    :cond_30
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 375
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 381
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 383
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    .line 388
    :cond_37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSetupViews()V
    .registers 1

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .registers 7

    .line 193
    sget-object v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 196
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 197
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v2, :cond_31

    .line 198
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 199
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    goto :goto_21

    .line 202
    :cond_31
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v2, :cond_49

    .line 203
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 204
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    goto :goto_39

    .line 207
    :cond_49
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 180
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_8

    .line 183
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 185
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_20

    .line 188
    :cond_30
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 4

    .line 426
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_25

    .line 430
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 431
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    goto :goto_13

    :cond_25
    :goto_25
    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 393
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_12

    .line 395
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 398
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_12
    :goto_12
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 409
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    .line 410
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setZoomOffsetPadding(I)V
    .registers 4

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 457
    instance-of v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz v1, :cond_6

    .line 458
    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setZoomOffsetPadding(I)V

    :cond_1b
    return-void
.end method

.method public show()V
    .registers 2

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraZoomLayout:Landroid/view/ViewGroup;

    if-nez p0, :cond_f

    .line 110
    sget-object p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "show mCameraZoomLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->unInitOverlaySettingUIs(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->unInitOverlaySettingUIs(Ljava/util/List;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 5

    .line 465
    sget-object v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCurrentMode] modeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V
    .registers 5

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 437
    instance-of v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz v2, :cond_6

    .line 438
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-nez v0, :cond_26

    .line 439
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-eqz v0, :cond_4c

    :cond_26
    const-string v0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 440
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 441
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 442
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 443
    :cond_44
    move-object v0, v1

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setCurrentModeName(Ljava/lang/String;)V

    .line 445
    :cond_4c
    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setCurrentModeName(Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method public updateZoomInfoList(Ljava/util/List;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method
