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

.field private mZoomScaling:Z


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

    .line 93
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

    .line 83
    iput-boolean p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mZoomScaling:Z

    .line 85
    new-instance p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 565
    new-instance p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda1;

    invoke-direct {p0, p4}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 95
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    .line 96
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    .line 97
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 98
    new-instance p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p0, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    .line 99
    iput-object v7, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 100
    iput-object p1, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p3, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 102
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 103
    invoke-interface {p3, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 104
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    iget-object p1, p4, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method private gestureGuideUIShowCase()V
    .registers 6

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_5a

    .line 487
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    .line 488
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

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    if-nez v0, :cond_4a

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    :cond_4a
    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->showGuideView()V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    :cond_5a
    return-void
.end method

.method private iconBubbleGuideUIShowCase(II)V
    .registers 11

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "icon_bubble_master_guide_show_flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 466
    const-string v2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 467
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 468
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 469
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 470
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    if-nez v1, :cond_4c

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, v6, v7}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    :cond_4c
    const/4 v1, 0x1

    .line 474
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 476
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 477
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 478
    :cond_67
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setIconBubbleCoordinate(II)V

    .line 480
    :cond_6c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->showGuideView()V

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->updateRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 566
    const-string p1, "begin"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 567
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string p2, "gesture_guide_master_show_flag"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 568
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    .line 569
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    .line 570
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mZoomScaling:Z

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->resetFlag(Ljava/lang/String;)V

    .line 575
    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    const-string v0, "4:3"

    if-eqz p1, :cond_39

    .line 576
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->resetParams()V

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 579
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_40

    .line 580
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 582
    :cond_40
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 583
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 584
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 585
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 586
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_56

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_56

    .line 587
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 588
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    .line 590
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_63

    .line 591
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 592
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    .line 594
    :cond_63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    if-eqz p1, :cond_70

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_70

    .line 595
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 596
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    .line 598
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    if-eqz p1, :cond_7d

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7d

    .line 599
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 600
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    :cond_7d
    return-void
.end method

.method private popWindowGuideUIShowCase()V
    .registers 6

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "pop_window_master_guide_show_flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    .line 511
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    .line 512
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 513
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    if-nez v1, :cond_30

    .line 514
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    :cond_30
    const/4 v1, 0x1

    .line 516
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 517
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->showGuideView()V

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method private previewCoverGuideUIShowCase()V
    .registers 6

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "preview_cover_master_guide_show_flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    .line 449
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    .line 450
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_20
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    .line 451
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    .line 452
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->showFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 453
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    if-nez v1, :cond_42

    .line 454
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    :cond_42
    const/4 v1, 0x1

    .line 456
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLastMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setLastMode(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->showGuideView()V

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    :cond_56
    return-void
.end method


# virtual methods
.method public currentModeSupportPreviewCover()Z
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    .line 607
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

    .line 245
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object p1

    .line 246
    sget-object v0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideMasterGuide masterGuideType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
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

    .line 259
    :pswitch_55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p0, :cond_74

    .line 260
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideGuideView()V

    return-void

    .line 264
    :pswitch_5d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p0, :cond_74

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return-void

    .line 249
    :pswitch_65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p0, :cond_74

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return-void

    .line 254
    :pswitch_6d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p0, :cond_74

    .line 255
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

    .line 274
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 275
    const-string v0, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_1dc

    goto/16 :goto_1d2

    .line 306
    :sswitch_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d2

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p1, :cond_21

    .line 308
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    .line 310
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_1d2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d2

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void

    .line 432
    :sswitch_31
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsShutterStatusChange:Z

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 429
    :sswitch_37
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsShutterStatusChange:Z

    return-void

    .line 401
    :sswitch_3a
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTwinkleShow:Z

    return-void

    .line 394
    :sswitch_3d
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTwinkleShow:Z

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_1d2

    .line 396
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d2

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return-void

    .line 405
    :sswitch_4f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p0, :cond_1d2

    .line 406
    const-string p1, "gesture_guide_master_show_flag"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->updateFlag(Ljava/lang/String;)V

    return-void

    .line 316
    :sswitch_59
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 347
    :sswitch_5d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->popWindowGuideUIShowCase()V

    return-void

    .line 282
    :sswitch_61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_77

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    goto :goto_77

    .line 371
    :sswitch_71
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsQrIconShow:Z

    return-void

    .line 368
    :sswitch_74
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsQrIconShow:Z

    return-void

    .line 286
    :cond_77
    :goto_77
    :sswitch_77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_aa

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 287
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 288
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 289
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 290
    :cond_9b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    goto :goto_aa

    .line 421
    :sswitch_a1
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    .line 422
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 418
    :sswitch_a7
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    return-void

    .line 294
    :cond_aa
    :goto_aa
    :sswitch_aa
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_b9

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    .line 297
    :cond_b9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_c8

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_c8

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 301
    :cond_c8
    :sswitch_c8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p1, :cond_1d2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d2

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return-void

    .line 374
    :sswitch_da
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v5, :cond_15c

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v5

    if-nez v5, :cond_15c

    .line 375
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    goto/16 :goto_15c

    .line 322
    :sswitch_eb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_1d2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d2

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return-void

    .line 415
    :sswitch_fb
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsFilterUIShow:Z

    return-void

    .line 411
    :sswitch_fe
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsFilterUIShow:Z

    return-void

    .line 362
    :sswitch_101
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mZoomScaling:Z

    goto :goto_14a

    .line 344
    :sswitch_104
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mZoomScaling:Z

    return-void

    .line 328
    :sswitch_107
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mZoomScaling:Z

    .line 330
    :sswitch_109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_118

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_118

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 333
    :cond_118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_1d2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 334
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 335
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 336
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 337
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d2

    :cond_13c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 338
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d2

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void

    .line 365
    :goto_14a
    :sswitch_14a
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    return-void

    .line 359
    :sswitch_14d
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    return-void

    .line 439
    :sswitch_150
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsVideoRecordBegin:Z

    return-void

    .line 436
    :sswitch_153
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsVideoRecordBegin:Z

    return-void

    .line 425
    :sswitch_156
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSelfTimerCaptureBegin:Z

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->gestureGuideUIShowCase()V

    return-void

    .line 378
    :cond_15c
    :goto_15c
    :sswitch_15c
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsSelfTimerCaptureBegin:Z

    :sswitch_15e
    const/16 v5, 0x4d

    if-ne p1, v5, :cond_164

    .line 382
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsEnterSettingFragment:Z

    .line 384
    :cond_164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p1, :cond_1d2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 385
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_188

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 386
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_188

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 387
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_188

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 388
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d2

    :cond_188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    .line 389
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result p1

    if-nez p1, :cond_1d2

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void

    .line 350
    :sswitch_196
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

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c1

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 354
    :cond_1c1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d2

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    :cond_1d2
    :goto_1d2
    return-void

    .line 278
    :sswitch_1d3
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginLeft:I

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginBottom:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->iconBubbleGuideUIShowCase(II)V

    return-void

    nop

    :sswitch_data_1dc
    .sparse-switch
        0x1 -> :sswitch_1d3
        0x3 -> :sswitch_1d3
        0x5 -> :sswitch_196
        0xb -> :sswitch_15c
        0xc -> :sswitch_156
        0xf -> :sswitch_153
        0x10 -> :sswitch_150
        0x11 -> :sswitch_14d
        0x12 -> :sswitch_14a
        0x17 -> :sswitch_107
        0x18 -> :sswitch_104
        0x19 -> :sswitch_107
        0x1a -> :sswitch_104
        0x1c -> :sswitch_101
        0x30 -> :sswitch_fe
        0x31 -> :sswitch_fb
        0x4d -> :sswitch_15e
        0x4e -> :sswitch_14a
        0x50 -> :sswitch_eb
        0x58 -> :sswitch_eb
        0x64 -> :sswitch_da
        0xc0 -> :sswitch_aa
        0xc2 -> :sswitch_109
        0xcf -> :sswitch_eb
        0xdb -> :sswitch_aa
        0xed -> :sswitch_a7
        0xee -> :sswitch_a1
        0xf9 -> :sswitch_77
        0x103 -> :sswitch_c8
        0x113 -> :sswitch_15e
        0x115 -> :sswitch_74
        0x116 -> :sswitch_71
        0x12f -> :sswitch_61
        0x149 -> :sswitch_61
        0x15d -> :sswitch_5d
        0x16b -> :sswitch_eb
        0x16f -> :sswitch_59
        0x170 -> :sswitch_4f
        0x171 -> :sswitch_3d
        0x172 -> :sswitch_3a
        0x17a -> :sswitch_4f
        0x17e -> :sswitch_37
        0x17f -> :sswitch_31
        0x183 -> :sswitch_fe
        0x184 -> :sswitch_fb
        0x18e -> :sswitch_12
    .end sparse-switch
.end method

.method public notifyPreviewCoverHide()V
    .registers 2

    .line 538
    const-string/jumbo v0, "value_preview_cover_guide_ui_hide"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->showOrHideSettingHint(Ljava/lang/String;)V

    return-void
.end method

.method public notifyPreviewCoverShowOrHide(Ljava/lang/String;)V
    .registers 2

    .line 534
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->showOrHideSettingHint(Ljava/lang/String;)V

    return-void
.end method

.method public notifyRawActionToAppUI(I)V
    .registers 2

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    return v1

    .line 554
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    return v1

    .line 558
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    if-eqz v1, :cond_12

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    .line 112
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v0, :cond_24

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    if-eqz v1, :cond_24

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    .line 115
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_36

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    if-eqz v1, :cond_36

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    .line 118
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v0, :cond_48

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    if-eqz v1, :cond_48

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    .line 121
    :cond_48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onLeftSideItemClick()V
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    :cond_f
    return-void
.end method

.method public onModePause()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideView()V

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    .line 184
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v0, :cond_15

    .line 185
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideGuideView()V

    .line 188
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p0, :cond_1c

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    :cond_1c
    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 3

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p1, :cond_7

    .line 641
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->hideGuideViewNoAnim()V

    .line 643
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p1, :cond_e

    .line 644
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideGuideView()V

    .line 646
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz p1, :cond_15

    .line 647
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 649
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz p0, :cond_1c

    .line 650
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    :cond_1c
    return-void
.end method

.method protected onSetupViews()V
    .registers 2

    .line 127
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public onTopBarItemListClick(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 4

    .line 612
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_22

    .line 613
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_color_style"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 614
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

    .line 615
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsTriggerGestureGuideUIShow:Z

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 528
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 529
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 530
    const-string v0, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setSettingIconParams(IIZLjava/lang/String;)V
    .registers 5

    if-nez p3, :cond_1d

    .line 658
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 659
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->option_ui_icon_bubble_margin_left_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p1, p3

    .line 660
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 661
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->option_ui_icon_bubble_margin_bottom_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_1b
    add-int/2addr p2, p3

    goto :goto_3f

    .line 663
    :cond_1d
    const-string p3, "key_magic_sky_type"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 664
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 665
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->magic_sky_icon_bubble_margin_left_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p1, p3

    .line 666
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->magic_sky_icon_bubble_margin_bottom_offset:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1b

    .line 670
    :cond_3f
    :goto_3f
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginLeft:I

    .line 671
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleMarginBottom:I

    return-void
.end method

.method public setSettingResourceId(IIIILjava/lang/String;)V
    .registers 6

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz p0, :cond_7

    .line 622
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->setSettingResourceId(IIIILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public showMasterGuide(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 7

    .line 194
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMasterGuide masterGuideType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_f4

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
    packed-switch v3, :pswitch_data_106

    goto/16 :goto_f2

    .line 220
    :pswitch_57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    if-eqz v0, :cond_f2

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    if-nez v1, :cond_6b

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideView:Landroid/view/View;

    .line 224
    :cond_6b
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPopWindowGuideInflate:Z

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->showGuideView()V

    return-void

    .line 230
    :pswitch_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    if-eqz v0, :cond_f2

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    if-nez v1, :cond_8c

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideView:Landroid/view/View;

    .line 234
    :cond_8c
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsGestureGuideInflate:Z

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->showGuideView()V

    return-void

    .line 198
    :pswitch_99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz v0, :cond_f2

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    if-nez v1, :cond_ad

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideView:Landroid/view/View;

    .line 202
    :cond_ad
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsPreviewCoverGuideInflate:Z

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setCurrentMode(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->showGuideView()V

    return-void

    .line 209
    :pswitch_c1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    if-eqz v0, :cond_f2

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mZoomScaling:Z

    if-nez v1, :cond_f2

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    if-nez v1, :cond_d9

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideView:Landroid/view/View;

    .line 213
    :cond_d9
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIsIconBubbleGuideInflate:Z

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getLeftMargin()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getBottomMargin()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->setIconBubbleCoordinate(II)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->showGuideView()V

    :cond_f2
    :goto_f2
    return-void

    nop

    :sswitch_data_f4
    .sparse-switch
        -0x712e16a4 -> :sswitch_48
        0x1ca5f9cd -> :sswitch_3d
        0x20da02d3 -> :sswitch_32
        0x7ae494e8 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_99
        :pswitch_78
        :pswitch_57
    .end packed-switch
.end method

.method public showOrHideSettingHint(Ljava/lang/String;)V
    .registers 3

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_d

    .line 543
    const-string v0, " key_preview_cover_ui "

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 544
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 134
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .registers 7

    .line 138
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getMasterGuideUIBean()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    if-eqz v0, :cond_b3

    .line 142
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

    .line 151
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object v2

    .line 153
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

    .line 163
    :pswitch_71
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPopWindowGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    goto :goto_aa

    .line 166
    :pswitch_7d
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mGestureGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    goto :goto_aa

    .line 155
    :pswitch_89
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->setCurrentMode(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->previewCoverGuideUIShowCase()V

    goto :goto_aa

    .line 160
    :pswitch_9f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mIconBubbleGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V

    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26

    .line 172
    :cond_ae
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mLastMode:Ljava/lang/String;

    return-void

    .line 147
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

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->mPreviewCoverGuideUI:Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-eqz p0, :cond_7

    .line 634
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->updateRingScreenLight(Z)V

    :cond_7
    return-void
.end method
