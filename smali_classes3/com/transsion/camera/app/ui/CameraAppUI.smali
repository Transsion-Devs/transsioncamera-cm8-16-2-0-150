.class public Lcom/transsion/camera/app/ui/CameraAppUI;
.super Lcom/transsion/camera/app/ui/BaseAppUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;


# direct methods
.method public static synthetic $r8$lambda$5EtQkTehrcssR4zDQdqLaOKtnXE(Lcom/transsion/camera/app/ui/CameraAppUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Imo5rzbDJpk15_eQJ52oWFYbmUA(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lzDNOFYvt1C77q31YDmDIn6M4QU(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->lambda$init$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraAppUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/CameraSettingControl;)V
    .registers 6

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V

    .line 358
    new-instance p1, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 75
    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 76
    iput-object p5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->settingPicked()V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->settingPicked()V

    return-void
.end method

.method private updateNavBar(Z)V
    .registers 3

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x10

    if-eqz p1, :cond_17

    .line 369
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    .line 371
    invoke-interface {p0, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void

    .line 375
    :cond_17
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    const/4 p1, 0x0

    .line 377
    invoke-interface {p0, p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method private updateRingScreenLight(Z)V
    .registers 2

    .line 361
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateNavBar(Z)V

    return-void
.end method


# virtual methods
.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p7

    .line 83
    invoke-super/range {p0 .. p8}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 88
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_ui_layer_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 89
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_above_layer_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 90
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->below_main_control_layer_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 91
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_ui_scroll_layer_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    .line 92
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_picker_layout_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->shutter_panel_layout_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    .line 94
    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    .line 95
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->hint_layer_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->main_control_ui_layer_parent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    .line 97
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->mode_panel_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePanelRootParent:Landroid/view/ViewGroup;

    .line 99
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->go_pro_activity_cover:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoProActivityCoverLayout:Landroid/widget/FrameLayout;

    .line 100
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->interactive_ui_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveLayout:Landroid/widget/FrameLayout;

    .line 101
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->toast_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    .line 102
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->floating_shutter_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    .line 103
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePanelRootParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateRootLayoutDisplaySize()V

    .line 111
    iget v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v2, v9}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 114
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 117
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v11, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.app.ui.manager.factory.PreviewUI5ManagerFactory"

    .line 118
    invoke-virtual {v0, v11, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda1;-><init>()V

    new-array v3, v9, [Ljava/lang/Object;

    .line 119
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/factory/PreviewUIManagerFactory;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    const/4 v5, 0x0

    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v21

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;->createPreviewUIManager(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object v0

    move-object v1, v3

    check-cast v0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    .line 121
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/R$id;->preview_layer_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    .line 122
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v12}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setIntentParser(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 123
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 124
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 125
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-eqz v0, :cond_169

    .line 128
    new-instance v0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v6, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;)V

    move-object v1, v3

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    .line 129
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_169
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    const-string v2, "com.transsion.camera.app.ui.manager.factory.TopBarUI5ManagerFactory"

    .line 133
    invoke-virtual {v0, v11, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda2;-><init>()V

    new-array v3, v9, [Ljava/lang/Object;

    .line 134
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/factory/TopBarUIManagerFactory;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v6, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v21

    .line 135
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;->createTopBarUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object v0

    move-object v1, v3

    check-cast v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    .line 136
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 137
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 138
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 139
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 142
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$1;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$1;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V

    .line 164
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz v0, :cond_1f3

    .line 167
    new-instance v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v4, v3

    iget-object v3, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v5, v7

    iget-object v7, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v8, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    move-object v6, v5

    move-object/from16 v5, p0

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    move-object/from16 v19, v4

    move-object v4, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v18

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;Z)V

    move-object v1, v4

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSellingPointGuideUIManager:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    .line 169
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f5

    :cond_1f3
    move-object/from16 v19, v7

    .line 172
    :goto_1f5
    iget-boolean v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUISupport:Z

    if-eqz v0, :cond_23b

    .line 173
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    const-string v2, "com.transsion.camera.app.ui.manager.factory.PopSettingUI5ManagerFactory"

    .line 174
    invoke-virtual {v0, v11, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda4;-><init>()V

    new-array v3, v9, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/factory/PopSettingUIManagerFactory;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v21

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;->createPopSettingUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object v0

    move-object v1, v3

    check-cast v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    .line 177
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 178
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 179
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 184
    :cond_23b
    sget v0, Lcom/transsion/camera/R$bool;->ring_screen_light_support:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_251

    .line 185
    new-instance v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object/from16 v5, v19

    invoke-direct {v0, v5, v2}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    .line 186
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 189
    :cond_251
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    instance-of v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v2, :cond_25e

    .line 190
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 192
    :cond_25e
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v2, :cond_26b

    .line 193
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 196
    :cond_26b
    sget v0, Lcom/transsion/camera/R$bool;->edit_watermark_support:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_285

    .line 197
    new-instance v0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    .line 198
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 200
    :cond_285
    sget v0, Lcom/transsion/camera/R$bool;->gold_watermark_support:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 201
    new-instance v0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    .line 202
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 204
    :cond_29f
    sget v0, Lcom/transsion/camera/R$bool;->pro_watermark_support:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2b9

    .line 205
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    .line 206
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 209
    :cond_2b9
    new-instance v0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    .line 210
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 212
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    sget v3, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    .line 213
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 215
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_2f3

    .line 216
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    iget-object v3, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;Landroid/content/Context;ILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    .line 217
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    :cond_2f3
    if-nez p1, :cond_342

    move-object/from16 v0, p6

    .line 221
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->initThumbnailUIManager(Landroid/content/ContentResolver;)Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    .line 222
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v7, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-object v8, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    move-object v4, v11

    iget-object v11, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object v5, v4

    move-object/from16 v4, p0

    move-object v6, v5

    move-object/from16 v5, p0

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    move/from16 v19, v9

    move-object/from16 v9, p0

    move-object/from16 v20, v10

    move-object/from16 v10, p0

    move-object/from16 p3, v3

    move-object v3, v1

    move-object/from16 v1, p3

    move-wide/from16 p3, v14

    move-object/from16 v15, v18

    move/from16 v12, v19

    move-object/from16 v14, v20

    invoke-direct/range {v0 .. v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    move-object v1, v3

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    .line 226
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 227
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    iget-boolean v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setSecureCamera(Z)V

    .line 228
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    goto :goto_347

    :cond_342
    move v12, v9

    move-wide/from16 p3, v14

    move-object v14, v10

    move-object v15, v11

    .line 231
    :goto_347
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->initCameraSwitcherUIManager(Z)Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_352

    .line 233
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 236
    :cond_352
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    const-string v2, "com.transsion.camera.app.ui.manager.factory.ShutterUI5ManagerFactory"

    .line 237
    invoke-virtual {v0, v15, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda6;-><init>()V

    new-array v3, v12, [Ljava/lang/Object;

    .line 238
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/factory/ShutterUIManagerFactory;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v4, 0x0

    .line 239
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;->createShutterUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    .line 240
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 241
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 243
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-nez v0, :cond_39d

    sget v0, Lcom/transsion/camera/R$bool;->support_help_guide:I

    .line 244
    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_39d

    move-object/from16 v2, p5

    .line 245
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->initHelpGuideUIManager(Landroid/app/FragmentManager;)Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    goto :goto_39f

    :cond_39d
    move-object/from16 v2, p5

    .line 248
    :goto_39f
    sget v0, Lcom/transsion/camera/R$bool;->is_show_full_zoom_ui:I

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3bb

    .line 249
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_3bb

    .line 250
    new-instance v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v3, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v1, v4}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    .line 252
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 255
    :cond_3bb
    invoke-virtual {v1, v13}, Lcom/transsion/camera/app/ui/CameraAppUI;->initOverlayUIManager(Lcom/transsion/camera/utils/sound/IActionSound;)Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    .line 257
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->initFoldFlipUIManagers(Landroid/view/ViewGroup;)V

    .line 259
    new-instance v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    sget v2, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v3, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v4, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    iget-object v5, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    iget-object v6, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    iget-object v7, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    iget-object v8, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mTuningFeatureManager:Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    iget-object v10, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object v9, v1

    move-object/from16 v1, p5

    invoke-direct/range {v0 .. v10}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;-><init>(Landroid/app/FragmentManager;ILcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    move-object v1, v9

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    .line 262
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 263
    sget v0, Lcom/transsion/camera/R$bool;->edit_watermark_support:I

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3f3

    .line 264
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    .line 266
    :cond_3f3
    sget v0, Lcom/transsion/camera/R$bool;->gold_watermark_support:I

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_402

    .line 267
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    .line 269
    :cond_402
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    .line 270
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterSoundOptionalManager:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    .line 271
    sget-object v8, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init all UI Manager. cost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object v0, v1, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSettingControl:Lcom/transsion/camera/app/common/mode/CameraSettingControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-nez p1, :cond_464

    .line 275
    iget-boolean v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUINewStyleSupport:Z

    if-eqz v2, :cond_464

    .line 278
    const-string v2, "com.transsion.camera.ui.setting.floatingshutter.FloatingShutterSettingUIEntry"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUI(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v6

    .line 279
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingGuideItemUI(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    move-result-object v7

    if-eqz v6, :cond_464

    .line 281
    new-instance v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v3, v2

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object/from16 v5, p0

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;)V

    move-object v1, v3

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    .line 283
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 286
    :cond_464
    invoke-virtual {v1, v14}, Lcom/transsion/camera/app/ui/CameraAppUI;->initThermalThrottleUIManager(Landroid/content/res/Resources;)Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    .line 288
    invoke-virtual {v1, v13}, Lcom/transsion/camera/app/ui/CameraAppUI;->initInteractiveUIManager(Lcom/transsion/camera/utils/sound/IActionSound;)Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    .line 289
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 290
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 292
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_482

    .line 293
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_482
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_4b5

    .line 302
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_4b5
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mFloatingShutterUIManager:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    if-eqz v0, :cond_4be

    .line 306
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_4be
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_4c7

    .line 309
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_4c7
    iget-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz v0, :cond_4d0

    .line 312
    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_4d0
    new-instance v0, Lcom/transsion/camera/app/SpecifyModePolicy;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v4, p2

    invoke-direct {v0, v2, v3, v4}, Lcom/transsion/camera/app/SpecifyModePolicy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/transsion/camera/app/intent/IntentParser;)V

    iput-object v0, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    .line 316
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v2, v1, Lcom/transsion/camera/app/ui/CameraAppUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 317
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v2, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->setDataStore(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 318
    invoke-direct {v1, v12}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateRingScreenLight(Z)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init. cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected initCameraSwitcherUIManager(Z)Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;
    .registers 3

    .line 326
    new-instance p1, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-object p1
.end method

.method protected initFoldFlipUIManagers(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method protected initHelpGuideUIManager(Landroid/app/FragmentManager;)Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
    .registers 9

    .line 349
    new-instance v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    sget v2, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v6, p0

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;ILandroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-object v0
.end method

.method protected initInteractiveUIManager(Lcom/transsion/camera/utils/sound/IActionSound;)Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
    .registers 12

    .line 339
    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p0

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/utils/sound/IActionSound;)V

    return-object v0
.end method

.method protected initOverlayUIManager(Lcom/transsion/camera/utils/sound/IActionSound;)Lcom/transsion/camera/app/ui/manager/OverlayUIManager;
    .registers 12

    .line 344
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object v7, p0

    move-object v8, p0

    move-object v9, p0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    return-object v0
.end method

.method protected initThermalThrottleUIManager(Landroid/content/res/Resources;)Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;
    .registers 2

    .line 335
    new-instance p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;-><init>(Landroid/content/res/Resources;)V

    return-object p0
.end method

.method protected initThumbnailUIManager(Landroid/content/ContentResolver;)Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;
    .registers 10

    .line 330
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object v4, p0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;ZLcom/transsion/camera/app/common/storage/DataStore;)V

    return-object v0
.end method

.method public unInit()V
    .registers 2

    .line 354
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unInit()V

    .line 355
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method
