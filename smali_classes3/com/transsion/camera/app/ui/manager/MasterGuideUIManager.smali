.class public Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

.field private mGestureGuideView:Landroid/view/View;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

.field private mIconBubbleGuideView:Landroid/view/View;

.field private mIconBubbleMarginBottom:I

.field private mIconBubbleMarginLeft:I

.field private mIsEnterSettingFragment:Z

.field private mIsFilterUIShow:Z

.field private mIsGestureGuideInflate:Z

.field private mIsIconBubbleGuideInflate:Z

.field private mIsPopWindowGuideInflate:Z

.field private mIsPreviewCoverGuideInflate:Z

.field private mIsQrIconShow:Z

.field private mIsSelfTimerCaptureBegin:Z

.field private mIsShutterStatusChange:Z

.field private mIsSuperNightLiteAnimBegin:Z

.field private mIsTriggerGestureGuideUIShow:Z

.field private mIsTwinkleShow:Z

.field private mIsVideoRecordBegin:Z

.field private mLastMode:Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

.field private mPopWindowGuideView:Landroid/view/View;

.field private mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

.field private mPreviewCoverGuideView:Landroid/view/View;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$rTu5UfeRJzlmYls5DxpFLZOK3JA(Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zDMmYW-az_Y_BbzDFnQnk9WJjyA(Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->lambda$new$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MasterGuideUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v7, p5

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    move-object p4, v0

    .line 66
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLastMode:Ljava/lang/String;

    const/4 p0, 0x0

    .line 69
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    .line 70
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsQrIconShow:Z

    .line 71
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTwinkleShow:Z

    .line 72
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsFilterUIShow:Z

    .line 73
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsShutterStatusChange:Z

    .line 74
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    .line 75
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSelfTimerCaptureBegin:Z

    .line 77
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 78
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 79
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 80
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 81
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    .line 82
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsVideoRecordBegin:Z

    .line 84
    new-instance p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 562
    new-instance p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda1;

    invoke-direct {p0, p4}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 94
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    .line 95
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    .line 96
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 97
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    .line 98
    iput-object v7, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 99
    iput-object p1, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object p3, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 101
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 102
    invoke-interface {p3, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 103
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    iget-object p1, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method private gestureGuideUIShowCase()V
    .registers 6

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_5a

    .line 484
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    .line 485
    const-string v1, "gesture_guide_master_show_flag"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsQrIconShow:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTwinkleShow:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsFilterUIShow:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsShutterStatusChange:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSelfTimerCaptureBegin:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsVideoRecordBegin:Z

    if-nez v0, :cond_5a

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    if-nez v0, :cond_4a

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    :cond_4a
    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->showGuideView()V

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    :cond_5a
    return-void
.end method

.method private iconBubbleGuideUIShowCase(II)V
    .registers 11

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "icon_bubble_master_guide_show_flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 463
    const-string v2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 464
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 465
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 466
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 467
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    if-nez v1, :cond_4c

    .line 469
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6, v7}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    :cond_4c
    const/4 v1, 0x1

    .line 471
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 473
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 474
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 475
    :cond_67
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setIconBubbleCoordinate(II)V

    .line 477
    :cond_6c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->showGuideView()V

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->updateRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 563
    const-string p1, "begin"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string p2, "gesture_guide_master_show_flag"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 565
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    .line 566
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->resetFlag(Ljava/lang/String;)V

    .line 571
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    const-string v0, "4:3"

    if-eqz p1, :cond_37

    .line 572
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->resetParams()V

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 575
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_3e

    .line 576
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 578
    :cond_3e
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 579
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 580
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 581
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 582
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_54

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_54

    .line 583
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 584
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    .line 586
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    if-eqz p1, :cond_61

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_61

    .line 587
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 588
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    .line 590
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    if-eqz p1, :cond_6e

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6e

    .line 591
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 592
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    .line 594
    :cond_6e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    if-eqz p1, :cond_7b

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7b

    .line 595
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 596
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    :cond_7b
    return-void
.end method

.method private popWindowGuideUIShowCase()V
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "pop_window_master_guide_show_flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    .line 508
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    .line 509
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    if-nez v1, :cond_30

    .line 511
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    :cond_30
    const/4 v1, 0x1

    .line 513
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 514
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->showGuideView()V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method private previewCoverGuideUIShowCase()V
    .registers 6

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "preview_cover_master_guide_show_flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    .line 446
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    .line 447
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_20
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    .line 448
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    .line 449
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    if-nez v1, :cond_42

    .line 451
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    :cond_42
    const/4 v1, 0x1

    .line 453
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 454
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLastMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setLastMode(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->showGuideView()V

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    :cond_56
    return-void
.end method


# virtual methods
.method public currentModeSupportPreviewCover()Z
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    .line 603
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public hideMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 5

    .line 244
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object p1

    .line 245
    sget-object v0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideMasterGuide masterGuideType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_76

    goto :goto_51

    :sswitch_26
    const-string v0, " key_pop_window_guide_ui "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_51

    :cond_2f
    const/4 v1, 0x3

    goto :goto_51

    :sswitch_31
    const-string v0, " key_gesture_guide_ui "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_51

    :cond_3a
    const/4 v1, 0x2

    goto :goto_51

    :sswitch_3c
    const-string v0, " key_preview_cover_ui "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_51

    :cond_45
    const/4 v1, 0x1

    goto :goto_51

    :sswitch_47
    const-string v0, " key_icon_bubble_guide_ui "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    packed-switch v1, :pswitch_data_88

    goto :goto_74

    .line 258
    :pswitch_55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p0, :cond_74

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideGuideView()V

    return-void

    .line 263
    :pswitch_5d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p0, :cond_74

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return-void

    .line 248
    :pswitch_65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p0, :cond_74

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return-void

    .line 253
    :pswitch_6d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p0, :cond_74

    .line 254
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    :cond_74
    :goto_74
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        -0x712e16a4 -> :sswitch_47
        0x1ca5f9cd -> :sswitch_3c
        0x20da02d3 -> :sswitch_31
        0x7ae494e8 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
    .end packed-switch
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 8

    .line 273
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 274
    const-string v0, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_1e2

    goto/16 :goto_1d9

    .line 305
    :sswitch_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d9

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p1, :cond_21

    .line 307
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    .line 309
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_1d9

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d9

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void

    .line 429
    :sswitch_31
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsShutterStatusChange:Z

    .line 430
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 426
    :sswitch_37
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsShutterStatusChange:Z

    return-void

    .line 398
    :sswitch_3a
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTwinkleShow:Z

    return-void

    .line 391
    :sswitch_3d
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTwinkleShow:Z

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_1d9

    .line 393
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d9

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return-void

    .line 402
    :sswitch_4f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p0, :cond_1d9

    .line 403
    const-string p1, "gesture_guide_master_show_flag"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    return-void

    .line 315
    :sswitch_59
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 345
    :sswitch_5d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->popWindowGuideUIShowCase()V

    return-void

    .line 281
    :sswitch_61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_77

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    goto :goto_77

    .line 368
    :sswitch_71
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsQrIconShow:Z

    return-void

    .line 365
    :sswitch_74
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsQrIconShow:Z

    return-void

    .line 285
    :cond_77
    :goto_77
    :sswitch_77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_ba

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 286
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 287
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 288
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 289
    :cond_9b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    goto :goto_ba

    .line 418
    :sswitch_a1
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 415
    :sswitch_a7
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    return-void

    .line 326
    :sswitch_aa
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_110

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_110

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    goto :goto_110

    .line 293
    :cond_ba
    :goto_ba
    :sswitch_ba
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_c9

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_c9

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    .line 296
    :cond_c9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_d8

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_d8

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 300
    :cond_d8
    :sswitch_d8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p1, :cond_1d9

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d9

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return-void

    .line 371
    :sswitch_ea
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v4, :cond_163

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v4

    if-nez v4, :cond_163

    .line 372
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    goto :goto_163

    .line 321
    :sswitch_fa
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_1d9

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d9

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return-void

    .line 412
    :sswitch_10a
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsFilterUIShow:Z

    return-void

    .line 408
    :sswitch_10d
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsFilterUIShow:Z

    return-void

    .line 331
    :cond_110
    :goto_110
    :sswitch_110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_11f

    .line 332
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_11f

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 335
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_1d9

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 336
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 337
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 338
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 339
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d9

    :cond_143
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 340
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d9

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void

    .line 362
    :sswitch_151
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    return-void

    .line 357
    :sswitch_154
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    return-void

    .line 436
    :sswitch_157
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsVideoRecordBegin:Z

    return-void

    .line 433
    :sswitch_15a
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsVideoRecordBegin:Z

    return-void

    .line 422
    :sswitch_15d
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSelfTimerCaptureBegin:Z

    .line 423
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 375
    :cond_163
    :goto_163
    :sswitch_163
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSelfTimerCaptureBegin:Z

    :sswitch_165
    const/16 v4, 0x4d

    if-ne p1, v4, :cond_16b

    .line 379
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    .line 381
    :cond_16b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_1d9

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 382
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 383
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 384
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 385
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d9

    :cond_18f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 386
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d9

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void

    .line 348
    :sswitch_19d
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_picture_ratio"

    const-string v2, " 4:3"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eqz v0, :cond_1c8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c8

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 352
    :cond_1c8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_1d9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d9

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    :cond_1d9
    :goto_1d9
    return-void

    .line 277
    :sswitch_1da
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginLeft:I

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginBottom:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->iconBubbleGuideUIShowCase(II)V

    return-void

    :sswitch_data_1e2
    .sparse-switch
        0x1 -> :sswitch_1da
        0x3 -> :sswitch_1da
        0x5 -> :sswitch_19d
        0xb -> :sswitch_163
        0xc -> :sswitch_15d
        0xf -> :sswitch_15a
        0x10 -> :sswitch_157
        0x11 -> :sswitch_154
        0x12 -> :sswitch_151
        0x17 -> :sswitch_110
        0x19 -> :sswitch_110
        0x1c -> :sswitch_151
        0x30 -> :sswitch_10d
        0x31 -> :sswitch_10a
        0x4d -> :sswitch_165
        0x4e -> :sswitch_151
        0x50 -> :sswitch_fa
        0x58 -> :sswitch_fa
        0x64 -> :sswitch_ea
        0xc0 -> :sswitch_ba
        0xc2 -> :sswitch_aa
        0xcf -> :sswitch_fa
        0xdb -> :sswitch_ba
        0xed -> :sswitch_a7
        0xee -> :sswitch_a1
        0xf9 -> :sswitch_77
        0x103 -> :sswitch_d8
        0x113 -> :sswitch_165
        0x115 -> :sswitch_74
        0x116 -> :sswitch_71
        0x12f -> :sswitch_61
        0x149 -> :sswitch_61
        0x15d -> :sswitch_5d
        0x16b -> :sswitch_fa
        0x16f -> :sswitch_59
        0x170 -> :sswitch_4f
        0x171 -> :sswitch_3d
        0x172 -> :sswitch_3a
        0x17a -> :sswitch_4f
        0x17e -> :sswitch_37
        0x17f -> :sswitch_31
        0x183 -> :sswitch_10d
        0x184 -> :sswitch_10a
        0x18e -> :sswitch_12
    .end sparse-switch
.end method

.method public notifyPreviewCoverHide()V
    .registers 2

    .line 535
    const-string/jumbo v0, "value_preview_cover_guide_ui_hide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->showOrHideSettingHint(Ljava/lang/String;)V

    return-void
.end method

.method public notifyPreviewCoverShowOrHide(Ljava/lang/String;)V
    .registers 2

    .line 531
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->showOrHideSettingHint(Ljava/lang/String;)V

    return-void
.end method

.method public notifyRawActionToAppUI(I)V
    .registers 2

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return v1

    .line 551
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return v1

    .line 555
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    if-eqz v1, :cond_12

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    .line 111
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v0, :cond_24

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    if-eqz v1, :cond_24

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    .line 114
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_36

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    if-eqz v1, :cond_36

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    .line 117
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v0, :cond_48

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    if-eqz v1, :cond_48

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    .line 120
    :cond_48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onLeftSideItemClick()V
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    :cond_f
    return-void
.end method

.method public onModePause()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_e

    .line 180
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    .line 183
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v0, :cond_15

    .line 184
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideGuideView()V

    .line 187
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p0, :cond_1c

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    :cond_1c
    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 3

    .line 636
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p1, :cond_7

    .line 637
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideViewNoAnim()V

    .line 639
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p1, :cond_e

    .line 640
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideGuideView()V

    .line 642
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_15

    .line 643
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 645
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p0, :cond_1c

    .line 646
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    :cond_1c
    return-void
.end method

.method protected onSetupViews()V
    .registers 2

    .line 126
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public onTopBarItemListClick(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 4

    .line 608
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_22

    .line 609
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_color_style"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 610
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_flash_facade"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    return-void

    :cond_22
    :goto_22
    const/4 p1, 0x1

    .line 611
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 525
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 526
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 527
    const-string v0, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setSettingIconParams(IIZLjava/lang/String;)V
    .registers 5

    if-nez p3, :cond_1d

    .line 654
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 655
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->option_ui_icon_bubble_margin_left_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p1, p3

    .line 656
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 657
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->option_ui_icon_bubble_margin_bottom_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_1b
    add-int/2addr p2, p3

    goto :goto_3f

    .line 659
    :cond_1d
    const-string p3, "key_magic_sky_type"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 660
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 661
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->magic_sky_icon_bubble_margin_left_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p1, p3

    .line 662
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 663
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->magic_sky_icon_bubble_margin_bottom_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1b

    .line 666
    :cond_3f
    :goto_3f
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginLeft:I

    .line 667
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginBottom:I

    return-void
.end method

.method public setSettingResourceId(IIIILjava/lang/String;)V
    .registers 6

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p0, :cond_7

    .line 618
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->setSettingResourceId(IIIILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 7

    .line 193
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMasterGuide masterGuideType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_f0

    goto :goto_52

    :sswitch_27
    const-string v1, " key_pop_window_guide_ui "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_52

    :cond_30
    const/4 v3, 0x3

    goto :goto_52

    :sswitch_32
    const-string v1, " key_gesture_guide_ui "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_52

    :cond_3b
    const/4 v3, 0x2

    goto :goto_52

    :sswitch_3d
    const-string v1, " key_preview_cover_ui "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_52

    :cond_46
    move v3, v2

    goto :goto_52

    :sswitch_48
    const-string v1, " key_icon_bubble_guide_ui "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    packed-switch v3, :pswitch_data_102

    goto/16 :goto_ee

    .line 219
    :pswitch_57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v0, :cond_ee

    .line 220
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    if-nez v1, :cond_6b

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    .line 223
    :cond_6b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->showGuideView()V

    return-void

    .line 229
    :pswitch_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_ee

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    if-nez v1, :cond_8c

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    .line 233
    :cond_8c
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->showGuideView()V

    return-void

    .line 197
    :pswitch_99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v0, :cond_ee

    .line 198
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    if-nez v1, :cond_ad

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    .line 201
    :cond_ad
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setCurrentMode(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->showGuideView()V

    return-void

    .line 208
    :pswitch_c1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_ee

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    if-nez v1, :cond_d5

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    .line 212
    :cond_d5
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getLeftMargin()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getBottomMargin()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setIconBubbleCoordinate(II)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->showGuideView()V

    :cond_ee
    :goto_ee
    return-void

    nop

    :sswitch_data_f0
    .sparse-switch
        -0x712e16a4 -> :sswitch_48
        0x1ca5f9cd -> :sswitch_3d
        0x20da02d3 -> :sswitch_32
        0x7ae494e8 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_99
        :pswitch_78
        :pswitch_57
    .end packed-switch
.end method

.method public showOrHideSettingHint(Ljava/lang/String;)V
    .registers 3

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_d

    .line 540
    const-string v0, " key_preview_cover_ui "

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 541
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 133
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .registers 7

    .line 137
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getMasterGuideUIBean()Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    if-eqz v0, :cond_b3

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-nez p1, :cond_24

    goto/16 :goto_b3

    :cond_24
    const/4 p1, 0x0

    move v1, p1

    .line 150
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_b8

    goto :goto_6d

    :sswitch_42
    const-string v3, " key_pop_window_guide_ui "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_6d

    :cond_4b
    const/4 v4, 0x3

    goto :goto_6d

    :sswitch_4d
    const-string v3, " key_gesture_guide_ui "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    goto :goto_6d

    :cond_56
    const/4 v4, 0x2

    goto :goto_6d

    :sswitch_58
    const-string v3, " key_preview_cover_ui "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_6d

    :cond_61
    const/4 v4, 0x1

    goto :goto_6d

    :sswitch_63
    const-string v3, " key_icon_bubble_guide_ui "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move v4, p1

    :goto_6d
    packed-switch v4, :pswitch_data_ca

    goto :goto_aa

    .line 162
    :pswitch_71
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    goto :goto_aa

    .line 165
    :pswitch_7d
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    goto :goto_aa

    .line 154
    :pswitch_89
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setCurrentMode(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->previewCoverGuideUIShowCase()V

    goto :goto_aa

    .line 159
    :pswitch_9f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26

    .line 171
    :cond_ae
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLastMode:Ljava/lang/String;

    return-void

    .line 146
    :cond_b3
    :goto_b3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLastMode:Ljava/lang/String;

    return-void

    :sswitch_data_b8
    .sparse-switch
        -0x712e16a4 -> :sswitch_63
        0x1ca5f9cd -> :sswitch_58
        0x20da02d3 -> :sswitch_4d
        0x7ae494e8 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_89
        :pswitch_7d
        :pswitch_71
    .end packed-switch
.end method

.method protected updateRingScreenLight(Z)V
    .registers 2

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p0, :cond_7

    .line 630
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->updateRingScreenLight(Z)V

    :cond_7
    return-void
.end method
