.class public Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumUIShow:Z

.field private mAllModeResources:Ljava/util/List;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mArShowFlag:Z

.field private mBackCameraModeList:Ljava/util/List;

.field private mBackDefaultMode:Ljava/lang/String;

.field private mBackRestoreMode:Ljava/lang/String;

.field private mCamera:Ljava/lang/String;

.field private mChangedModeName:Ljava/lang/String;

.field private mClickGuideIconEnterMoreMode:Z

.field private mClickModeIcon:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private mFilterUIShown:Z

.field private mFlipPageShow:Z

.field private mFrontCameraModeList:Ljava/util/List;

.field private mFrontDefaultMode:Ljava/lang/String;

.field private mFrontRestoreMode:Ljava/lang/String;

.field private mHidePickerForFlip:Z

.field private mImageStyleShow:Z

.field private mInstantZoomShow:Z

.field private mIsAIGCEffectUIShow:Z

.field private mIsCameraSwitching:Z

.field private mIsCapturing:Z

.field private mIsCelebritySceneShow:Z

.field private mIsConfigurationChanging:Z

.field private mIsCurModeSupportQC:Z

.field private mIsDualDeviceItemShow:Z

.field private mIsOnCreate:Z

.field private mIsShowingGuide:Z

.field private mIsVideoRecording:Z

.field private mIsVlogSetModePickerEnable:Z

.field private mIsZoomScaling:Z

.field private mLowMemoryLimitClickTime:I

.field private mMainControlRoot:Landroid/view/ViewGroup;

.field private mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private mModePanelRoot:Landroid/view/View;

.field private final mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

.field private final mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

.field private mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

.field private final mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

.field private final mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private final mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

.field private mPMasterUIShowing:Z

.field private mPanelHintView:Landroid/widget/TextView;

.field private mPanelMaskView:Landroid/view/View;

.field private mPopSettingUIShow:Z

.field private mPortraitUIShow:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mProArrowShow:Z

.field private mQCSupportModeArray:Ljava/util/List;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSkyPanelShowing:Z

.field private mSmartBackCameraModeList:Ljava/util/List;

.field private mSmartFrontCameraModeList:Ljava/util/List;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

.field private mVIPCameraModeList:Ljava/util/List;

.field private mVideoMakeupUIShow:Z


# direct methods
.method public static synthetic $r8$lambda$D0-GJxuegIasljHfOKYyC2B_slw(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->lambda$setupModePanelGuideView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIBrPMCF97Pft5uor5HyLhpr2g8(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1128
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackDefaultMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackRestoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCamera(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangedModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mChangedModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickGuideIconEnterMoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickGuideIconEnterMoreMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickModeIcon(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickModeIcon:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontDefaultMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontRestoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstantZoomShow(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCameraSwitching(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowingGuide(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZoomScaling(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowMemoryLimitClickTime(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModeOrderProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerConfig(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModePickerConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBackCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChangedModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mChangedModeName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClickGuideIconEnterMoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickGuideIconEnterMoreMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClickModeIcon(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickModeIcon:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrontCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInstantZoomShow(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCapturing(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowingGuide(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterScrollListener(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEmptyMessageDelayed(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHorizontalScroll(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 107
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePickerUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 13

    move-object p9, p10

    move-object p10, p11

    move-object p11, p12

    .line 287
    invoke-direct/range {p0 .. p11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 25

    move-object/from16 v9, p7

    move-object/from16 v10, p10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 231
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    move-object v3, v1

    .line 131
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;

    const/4 v11, 0x0

    invoke-direct {v0, p0, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 151
    iput-object v11, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 161
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 168
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    .line 169
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    .line 175
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    .line 181
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    .line 182
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLowMemoryLimitClickTime:I

    iput v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    .line 1425
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    .line 234
    iput-object v9, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 235
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-virtual {v9, v1, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onScreenFormChanged(IZ)V

    .line 236
    iput-object v10, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 237
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    .line 238
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-direct {v0, p0, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    .line 239
    new-instance v4, Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-object/from16 v0, p11

    invoke-direct {v4, p1, v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 240
    invoke-virtual {v4}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v12

    iput-object v12, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    .line 241
    new-instance v1, Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-direct {v1, p1, p2, v12}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    .line 242
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    move-object/from16 v0, p6

    invoke-direct {v2, p1, p2, v0, v12}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 243
    new-instance v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-direct {v0, p2, v12}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    move-object v3, v0

    .line 245
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI;

    move-object v8, p2

    move-object/from16 v6, p8

    move-object v7, v4

    move-object v5, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/ModePickerUI;-><init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V

    move-object v8, v3

    move-object v4, v7

    move-object v7, v1

    move-object v1, v2

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    .line 247
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 250
    invoke-virtual {v12}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 251
    new-instance v0, Lcom/transsion/camera/app/ui/MorePanelUI;

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/MorePanelUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    goto :goto_ca

    .line 253
    :cond_ba
    new-instance v0, Lcom/transsion/camera/app/ui/ModePanelUI;

    move-object v2, p1

    move-object/from16 v5, p8

    move-object/from16 v3, p10

    move-object v6, v4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/ModePanelUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    move-object v4, v6

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    .line 256
    :goto_ca
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;

    invoke-direct {v1, p0, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V

    .line 259
    new-instance v0, Lcom/transsion/camera/app/ui/ModeScrollUI;

    move-object v3, p2

    move-object v5, v4

    move-object v1, v7

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/ModeScrollUI;-><init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->increaseStartTimes()V

    if-eqz p8, :cond_f7

    .line 263
    invoke-interface/range {p8 .. p8}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->getInitialModesNumberInTab()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    :cond_f7
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I
    .registers 1

    .line 106
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I
    .registers 1

    .line 106
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method private checkSupportQuickCapture(Ljava/lang/String;)Z
    .registers 2

    .line 2022
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mQCSupportModeArray:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private hideModePickerGuide()V
    .registers 3

    .line 1684
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    .line 1685
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 1688
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private increaseStartTimes()V
    .registers 5

    const/4 v0, 0x1

    .line 1640
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    .line 1641
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePanelGuideSupported()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1642
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1643
    const-string p0, "0"

    .line 1644
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1643
    const-string v3, "key_camera_guide_usage"

    invoke-virtual {v1, v3, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    .line 1646
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1645
    invoke-virtual {v1, v3, p0, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2f
    return-void
.end method

.method private isNeedShowModeRegion()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    if-nez v0, :cond_1e

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setupModePanelGuideView$1(Landroid/view/View;)V
    .registers 2

    .line 1845
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    return-void
.end method

.method private onFinishVideoRecording(Z)V
    .registers 3

    .line 1126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_17

    .line 1127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1128
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 1129
    :cond_17
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v0, :cond_24

    xor-int/lit8 p1, p1, 0x1

    .line 1130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    :cond_24
    return-void
.end method

.method private registerScrollListener()V
    .registers 4

    .line 1766
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[registerScrollListener] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1767
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->unRegisterScrollListener()V

    .line 1768
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    .line 1769
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_3e

    .line 1779
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1780
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1781
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    .line 1772
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1773
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    :cond_63
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8b

    .line 1786
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1787
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1788
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    :cond_8b
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_92

    goto :goto_d0

    :cond_92
    if-eqz v0, :cond_9a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_cf

    .line 1797
    :cond_9a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1798
    :cond_ac
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1799
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1802
    :cond_be
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormal()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1803
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    :cond_cf
    return-void

    .line 1792
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1793
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method private sendEmptyMessage(I)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1693
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .registers 5

    .line 1697
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz v0, :cond_c

    .line 1698
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1699
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    return-void
.end method

.method private setModeScrollerEnable(Z)V
    .registers 2

    .line 1511
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    if-eqz p0, :cond_7

    .line 1512
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method private settingUIPanelHide(I)V
    .registers 5

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCurrentModeUIAlpha(F)V

    .line 1153
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1154
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    :cond_f
    const/4 v0, 0x0

    .line 1156
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 1157
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 1158
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_31

    const/16 v1, 0x84

    if-ne v1, p1, :cond_2c

    .line 1160
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    if-eqz p1, :cond_31

    .line 1161
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 1162
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1163
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    return-void

    .line 1166
    :cond_2c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1167
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    :cond_31
    return-void
.end method

.method private settingUIPanelShow(I)V
    .registers 5

    .line 1135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCurrentModeUIAlpha(F)V

    const/4 v0, 0x0

    .line 1136
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 1137
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eqz v0, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    .line 1140
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 1142
    :cond_19
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x83

    const/4 v1, 0x1

    if-ne v0, p1, :cond_25

    .line 1144
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 1146
    :cond_25
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1147
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    :cond_2a
    return-void
.end method

.method private setupModePanelGuideView()V
    .registers 8

    .line 1834
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, -0x1

    if-nez v0, :cond_3f

    .line 1835
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    .line 1836
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1838
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1839
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 1841
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1843
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 1844
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1845
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    new-instance v4, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1848
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePanelMask(Landroid/view/View;)V

    .line 1849
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1850
    const-string v4, "0"

    .line 1851
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 1850
    const-string v6, "key_camera_guide_usage"

    invoke-virtual {v0, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-gt v0, v4, :cond_96

    .line 1853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-nez v0, :cond_8f

    .line 1854
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    .line 1855
    sget v4, Lcom/transsion/camera/R$string;->mode_panel_hint:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1856
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1858
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1859
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1862
    :cond_8f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelHintView(Landroid/view/View;)V

    :cond_96
    return-void
.end method

.method private unRegisterScrollListener()V
    .registers 3

    .line 1810
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unRegisterScrollListener] -- "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1812
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1814
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method

.method private updateHorizontalScroll()V
    .registers 3

    .line 1826
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1829
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void

    .line 1827
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method private updateHorizontalScroll(Ljava/lang/String;)V
    .registers 3

    .line 1818
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_19

    .line 1821
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object p1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void

    .line 1819
    :cond_19
    :goto_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method


# virtual methods
.method public abortShowOrHideModePickerRootUI()V
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortShowOrHideModePickerRootUI()V

    return-void
.end method

.method public exitModeOnMoreTab()V
    .registers 1

    .line 384
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->exitModeOnMoreTab()V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitModeOnMoreTab()V

    return-void
.end method

.method public flashModeListCurrentCamera()V
    .registers 1

    .line 1890
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_7

    .line 1891
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->flashModeListCurrentCamera()V

    :cond_7
    return-void
.end method

.method public hide()V
    .registers 3

    .line 1332
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_26

    .line 1333
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1334
    :goto_12
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1335
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide: dismiss"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1339
    :cond_26
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 1340
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_35

    goto :goto_44

    .line 1343
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void

    :cond_44
    :goto_44
    const/4 v0, 0x0

    .line 1341
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    return-void
.end method

.method public hideModeRegion()V
    .registers 1

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->hideModePicker()V

    return-void
.end method

.method public isModeTabScrolling()Z
    .registers 1

    .line 1384
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1387
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 13

    .line 501
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCameraSwitching = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsZoomScaling = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 505
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v1

    .line 506
    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v3, :cond_3a

    .line 507
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v3

    invoke-static {v3, p1, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v1

    .line 509
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", respond = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_66

    if-eq p1, v2, :cond_60

    .line 512
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 514
    :cond_60
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setViewEnable(Z)V

    goto :goto_72

    :cond_66
    if-nez v1, :cond_72

    .line 516
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 517
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setViewEnable(Z)V

    .line 520
    :cond_72
    :goto_72
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_87

    const/16 v1, 0x10

    if-eq p1, v1, :cond_85

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_85

    const/16 v1, 0x91

    if-eq p1, v1, :cond_85

    goto :goto_87

    .line 525
    :cond_85
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 532
    :cond_87
    :goto_87
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    if-eqz v1, :cond_8f

    const/16 v1, 0x18

    if-eq p1, v1, :cond_92

    .line 534
    :cond_8f
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 537
    :cond_92
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v1, :cond_99

    .line 538
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyCameraOperateAction(I)V

    :cond_99
    if-eqz p1, :cond_69e

    if-eq p1, v3, :cond_683

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v2, :cond_670

    const/4 v5, 0x3

    if-eq p1, v5, :cond_65e

    const/4 v5, 0x4

    if-eq p1, v5, :cond_65b

    const/4 v5, 0x5

    if-eq p1, v5, :cond_658

    const/4 v5, 0x6

    if-eq p1, v5, :cond_65b

    const/4 v6, 0x7

    if-eq p1, v6, :cond_658

    const/16 v7, 0x24

    const/16 v8, 0x8

    if-eq p1, v7, :cond_643

    const/16 v9, 0x25

    if-eq p1, v9, :cond_61b

    const/16 v10, 0x38

    if-eq p1, v10, :cond_613

    const/16 v10, 0x39

    if-eq p1, v10, :cond_60b

    const/16 v10, 0x58

    if-eq p1, v10, :cond_5f8

    const/16 v10, 0x59

    if-eq p1, v10, :cond_5e1

    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_6c0

    packed-switch p1, :pswitch_data_7ae

    packed-switch p1, :pswitch_data_7c0

    packed-switch p1, :pswitch_data_7d2

    packed-switch p1, :pswitch_data_7dc

    packed-switch p1, :pswitch_data_7e8

    packed-switch p1, :pswitch_data_7f2

    goto/16 :goto_682

    .line 770
    :pswitch_e2
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    .line 771
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setEnable(Z)V

    .line 772
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setDisableVerticalScroll(Z)V

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 764
    :pswitch_f4
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    .line 765
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setEnable(Z)V

    .line 766
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setDisableVerticalScroll(Z)V

    .line 767
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 687
    :pswitch_106
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 688
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_682

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_682

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowState(ZZ)V

    const-wide/16 v0, 0xce4

    .line 691
    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void

    .line 684
    :pswitch_123
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    return-void

    .line 681
    :pswitch_127
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    return-void

    .line 863
    :pswitch_12b
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onFinishVideoRecording(Z)V

    .line 864
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 865
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 866
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 867
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 1028
    :pswitch_145
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 1029
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    if-nez p1, :cond_682

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-nez p1, :cond_682

    .line 1030
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 1035
    :pswitch_157
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 1036
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void

    .line 543
    :pswitch_163
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    .line 544
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setSelfTimerBegin(Z)V

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabIndexOnPause(Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v10}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelHintView(Landroid/view/View;)V

    .line 547
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsPopSettingShow(Z)V

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPanelShow(Z)V

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setProSeekUIShow(Z)V

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 551
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p1, :cond_191

    .line 552
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setIsModeSwitching(Z)V

    .line 554
    :cond_191
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 555
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 556
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 557
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    .line 558
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 559
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    .line 560
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    .line 561
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    .line 562
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_1b4

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    if-nez p1, :cond_1ad

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    if-eqz p1, :cond_1b4

    .line 563
    :cond_1ad
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    .line 564
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 565
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    .line 567
    :cond_1b4
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 568
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 569
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    .line 570
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    .line 571
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    .line 572
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 573
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_682

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->resetRecordingUI()V

    return-void

    .line 799
    :pswitch_1d1
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 800
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1ef

    .line 801
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1ec

    .line 802
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setInstantZoomShow(ZZ)V

    .line 804
    :cond_1ec
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 806
    :cond_1ef
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 807
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorEnable(Z)V

    return-void

    .line 792
    :pswitch_200
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 793
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-eqz p0, :cond_682

    .line 795
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 701
    :pswitch_20f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void

    .line 698
    :pswitch_215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void

    .line 776
    :pswitch_21b
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 777
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setDisableVerticalScroll(Z)V

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 825
    :pswitch_229
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_244

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_244

    const/16 v0, 0xf

    if-eq p1, v0, :cond_23a

    goto :goto_23f

    .line 827
    :cond_23a
    new-instance v10, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;

    invoke-direct {v10, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    .line 833
    :goto_23f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3, v10}, Lcom/transsion/camera/app/ui/ModePickerUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 835
    :cond_244
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 836
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 837
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 838
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 1090
    :pswitch_256
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    return-void

    .line 661
    :pswitch_259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setSelfTimerBegin(Z)V

    goto/16 :goto_61b

    .line 650
    :pswitch_260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setSelfTimerBegin(Z)V

    goto/16 :goto_643

    .line 1108
    :sswitch_267
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 1109
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    return-void

    .line 1103
    :sswitch_270
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 1104
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    return-void

    .line 1072
    :sswitch_279
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_282

    .line 1074
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCelebrityUIShow(Z)V

    .line 1076
    :cond_282
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    .line 1077
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 1064
    :sswitch_289
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_292

    .line 1066
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCelebrityUIShow(Z)V

    .line 1068
    :cond_292
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    .line 1069
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 1040
    :sswitch_299
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    if-eqz p1, :cond_682

    .line 1041
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 1025
    :sswitch_2a1
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 1022
    :sswitch_2a5
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 985
    :sswitch_2a9
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_682

    .line 986
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    .line 987
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 988
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    return-void

    .line 977
    :sswitch_2b6
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_682

    .line 978
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    .line 979
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 980
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    return-void

    .line 1098
    :sswitch_2c3
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 1099
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    return-void

    .line 1093
    :sswitch_2cc
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 1094
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    return-void

    .line 968
    :sswitch_2d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_2dc

    .line 969
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    :cond_2dc
    :sswitch_2dc
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 973
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 962
    :sswitch_2e5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_2ec

    .line 963
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2ec
    const-wide/16 v0, 0x1c2

    .line 965
    invoke-direct {p0, v6, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void

    .line 1006
    :sswitch_2f2
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    goto/16 :goto_524

    .line 992
    :sswitch_2f6
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    goto/16 :goto_540

    .line 1053
    :sswitch_2fa
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    .line 1054
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p1, :cond_303

    .line 1055
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFilterUIShow(Z)V

    .line 1057
    :cond_303
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 1058
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq p1, v3, :cond_311

    .line 1059
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 1061
    :cond_311
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 1045
    :sswitch_315
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    .line 1046
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p1, :cond_31e

    .line 1047
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFilterUIShow(Z)V

    .line 1049
    :cond_31e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 1050
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 871
    :sswitch_327
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-eqz p1, :cond_682

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_682

    .line 872
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 873
    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 950
    :sswitch_335
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_35f

    .line 951
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_35f

    .line 704
    :sswitch_33d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 894
    :sswitch_343
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    return-void

    .line 891
    :sswitch_346
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    return-void

    .line 1080
    :sswitch_349
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_682

    .line 1081
    invoke-interface {p0, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyWindowsHasFocus(Z)V

    return-void

    .line 1085
    :sswitch_351
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_682

    .line 1086
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyWindowsHasFocus(Z)V

    return-void

    .line 958
    :sswitch_359
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    return-void

    .line 954
    :cond_35f
    :goto_35f
    :sswitch_35f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 914
    :sswitch_36a
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 915
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsPopSettingShow(Z)V

    .line 916
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->isPopSettingShow(Z)V

    .line 917
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-eqz p1, :cond_395

    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eqz p1, :cond_395

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez p1, :cond_395

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_395

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_395

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_395

    .line 921
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    .line 923
    :cond_395
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez p1, :cond_682

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_682

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_682

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_682

    .line 924
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_3b5

    .line 925
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-nez p1, :cond_3ba

    .line 926
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    goto :goto_3ba

    .line 929
    :cond_3b5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 932
    :cond_3ba
    :goto_3ba
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    if-eqz p1, :cond_3c2

    .line 933
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 935
    :cond_3c2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 936
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    if-nez p1, :cond_3d2

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-nez p1, :cond_3d2

    .line 937
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 939
    :cond_3d2
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_3df

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-nez p1, :cond_3dd

    goto :goto_3df

    :cond_3dd
    move p1, v4

    goto :goto_3e0

    :cond_3df
    :goto_3df
    move p1, v3

    .line 940
    :goto_3e0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isNeedShowModeRegion()Z

    move-result v0

    if-eqz v0, :cond_3f0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isNeedShowModePickerAnim()Z

    move-result v0

    if-eqz v0, :cond_3f0

    move v0, v3

    goto :goto_3f1

    :cond_3f0
    move v0, v4

    :goto_3f1
    if-eqz p1, :cond_3f7

    if-eqz v0, :cond_3f7

    move v1, v3

    goto :goto_3f8

    :cond_3f7
    move v1, v4

    .line 941
    :goto_3f8
    invoke-virtual {p0, v3, v4, v3, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showOrHideModePickerRootUI(ZZZZ)V

    if-eqz p1, :cond_682

    .line 944
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegion(Z)V

    return-void

    .line 903
    :sswitch_401
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 904
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 905
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v8}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    .line 906
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsPopSettingShow(Z)V

    .line 907
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->isPopSettingShow(Z)V

    .line 908
    invoke-virtual {p0, v4, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    .line 909
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_682

    .line 910
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    :sswitch_425
    const/16 v0, 0xca

    if-ne v0, p1, :cond_42a

    goto :goto_42b

    :cond_42a
    move v3, v4

    .line 727
    :goto_42b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPortraitSpotUIShow(Z)V

    if-eqz v3, :cond_436

    .line 729
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    return-void

    .line 731
    :cond_436
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    return-void

    .line 849
    :sswitch_43a
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onFinishVideoRecording(Z)V

    return-void

    :pswitch_43e
    :sswitch_43e
    const/16 v0, 0x30

    if-ne v0, p1, :cond_444

    move v0, v3

    goto :goto_445

    :cond_444
    move v0, v4

    .line 714
    :goto_445
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 715
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFilterUIShow(Z)V

    if-eqz v0, :cond_455

    .line 717
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    .line 718
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 720
    :cond_455
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    .line 721
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    :sswitch_45c
    const/16 v0, 0xb3

    if-ne v0, p1, :cond_462

    move v0, v3

    goto :goto_463

    :cond_462
    move v0, v4

    .line 749
    :goto_463
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFaceBeautyUIShow(Z)V

    if-eqz v0, :cond_473

    .line 751
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 754
    :cond_473
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 612
    :sswitch_47c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setVipSelfieQuiting(Z)V

    return-void

    .line 877
    :sswitch_482
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    if-lez v1, :cond_4af

    .line 878
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    const/16 v2, 0x66

    if-gt v1, v2, :cond_4af

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 879
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4af

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_mu_monomer"

    .line 880
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "f0.0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4af

    .line 881
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    int-to-long v0, p1

    invoke-direct {p0, v5, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void

    .line 885
    :cond_4af
    :sswitch_4af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shot2shot end action need enable mode picker ui, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 886
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    .line 887
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 853
    :pswitch_4ce
    :sswitch_4ce
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 854
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onFinishVideoRecording(Z)V

    .line 855
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 856
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 857
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 858
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 859
    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    .line 860
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 841
    :sswitch_4ed
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_4fc

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p1, :cond_4fc

    .line 842
    invoke-virtual {p1, v3, v10}, Lcom/transsion/camera/app/ui/ModePickerUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 844
    :cond_4fc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 845
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 761
    :pswitch_509
    :sswitch_509
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    return-void

    :sswitch_50d
    const/16 v0, 0x83

    if-ne v0, p1, :cond_512

    goto :goto_513

    :cond_512
    move v3, v4

    .line 738
    :goto_513
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMakeUpUIShow(Z)V

    if-eqz v3, :cond_520

    .line 741
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    return-void

    .line 743
    :cond_520
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    return-void

    :goto_524
    :sswitch_524
    const/16 v0, 0x82

    if-eq p1, v0, :cond_52c

    const/16 v0, 0xb5

    if-ne p1, v0, :cond_52e

    .line 1011
    :cond_52c
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 1013
    :cond_52e
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 1014
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPanelShow(Z)V

    .line 1015
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_682

    .line 1016
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1017
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    return-void

    :goto_540
    :sswitch_540
    const/16 v0, 0x81

    if-ne p1, v0, :cond_546

    .line 995
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 997
    :cond_546
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->abortShowOrHideModePickerRootUI()V

    .line 998
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 999
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPanelShow(Z)V

    .line 1000
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_682

    .line 1001
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1002
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    return-void

    .line 707
    :sswitch_55b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    return-void

    .line 578
    :sswitch_561
    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    .line 579
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 580
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabIndexOnResume(Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 616
    :pswitch_577
    :sswitch_577
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 617
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setVipSelfieQuiting(Z)V

    .line 618
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    .line 619
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_593

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreGuideState(Z)V

    .line 623
    :cond_593
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 624
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-eqz p1, :cond_682

    .line 625
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 626
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    .line 627
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-eq p1, v5, :cond_5ae

    .line 628
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 630
    :cond_5ae
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 632
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_5cd

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    if-nez p1, :cond_5cd

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    if-nez p1, :cond_5cd

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_5cd

    .line 633
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 635
    :cond_5cd
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v3, :cond_682

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    return-void

    .line 897
    :sswitch_5d7
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    .line 898
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-eqz p1, :cond_682

    .line 899
    invoke-virtual {p0, v4, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 814
    :cond_5e1
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_5e9

    .line 815
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 817
    :cond_5e9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setProSeekUIShow(Z)V

    .line 819
    :pswitch_5ee
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    .line 820
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 821
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 785
    :cond_5f8
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_605

    .line 786
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 787
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    .line 789
    :cond_605
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setProSeekUIShow(Z)V

    return-void

    .line 810
    :cond_60b
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    .line 811
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    .line 781
    :cond_613
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    return-void

    :cond_61b
    :goto_61b
    :pswitch_61b
    const/16 v0, 0xe

    if-ne p1, v0, :cond_621

    .line 665
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    .line 667
    :cond_621
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-eqz v0, :cond_628

    .line 668
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 670
    :cond_628
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 671
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 672
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    if-nez v0, :cond_637

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    :cond_637
    if-ne v9, p1, :cond_682

    .line 675
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v6, p1, :cond_682

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    return-void

    .line 652
    :cond_643
    :goto_643
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 653
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 654
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    if-ne v7, p1, :cond_682

    .line 655
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v6, p1, :cond_682

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    return-void

    .line 1118
    :cond_658
    :sswitch_658
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    return-void

    .line 1114
    :cond_65b
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    return-void

    .line 592
    :cond_65e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p1, :cond_665

    .line 593
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setIsModeSwitching(Z)V

    .line 597
    :cond_665
    :sswitch_665
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    return-void

    .line 584
    :cond_670
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    .line 586
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_682

    .line 588
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setIsModeSwitching(Z)V

    :cond_682
    :goto_682
    return-void

    .line 641
    :cond_683
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 642
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 643
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 644
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_69a

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreGuideState(Z)V

    .line 647
    :cond_69a
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    return-void

    .line 601
    :cond_69e
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 602
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortShowOrHideModePickerRootUI(Z)V

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_6b9

    .line 606
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreGuideState(Z)V

    .line 608
    :cond_6b9
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    return-void

    :sswitch_data_6c0
    .sparse-switch
        0x7 -> :sswitch_658
        0x8 -> :sswitch_5d7
        0x9 -> :sswitch_577
        0x20 -> :sswitch_561
        0x36 -> :sswitch_665
        0x54 -> :sswitch_55b
        0x6d -> :sswitch_665
        0x81 -> :sswitch_540
        0x82 -> :sswitch_524
        0x83 -> :sswitch_50d
        0x84 -> :sswitch_50d
        0x8e -> :sswitch_509
        0x90 -> :sswitch_4ed
        0x91 -> :sswitch_4ce
        0x9c -> :sswitch_482
        0x9d -> :sswitch_4af
        0xa7 -> :sswitch_47c
        0xb3 -> :sswitch_45c
        0xb5 -> :sswitch_524
        0xb6 -> :sswitch_43e
        0xb7 -> :sswitch_45c
        0xc9 -> :sswitch_43a
        0xca -> :sswitch_425
        0xcb -> :sswitch_425
        0xcf -> :sswitch_401
        0xd0 -> :sswitch_36a
        0xd2 -> :sswitch_35f
        0xd3 -> :sswitch_359
        0xd4 -> :sswitch_351
        0xd5 -> :sswitch_349
        0xd7 -> :sswitch_346
        0xd8 -> :sswitch_343
        0xdc -> :sswitch_33d
        0xe9 -> :sswitch_335
        0xea -> :sswitch_327
        0xf2 -> :sswitch_315
        0xf3 -> :sswitch_2fa
        0xf7 -> :sswitch_2f6
        0xf8 -> :sswitch_2f2
        0xfe -> :sswitch_2e5
        0xff -> :sswitch_2d5
        0x103 -> :sswitch_2cc
        0x104 -> :sswitch_2c3
        0x109 -> :sswitch_2b6
        0x10a -> :sswitch_2a9
        0x10b -> :sswitch_2b6
        0x10c -> :sswitch_2a9
        0x111 -> :sswitch_2a5
        0x112 -> :sswitch_2a1
        0x119 -> :sswitch_299
        0x11a -> :sswitch_2a5
        0x124 -> :sswitch_2e5
        0x125 -> :sswitch_2dc
        0x132 -> :sswitch_50d
        0x133 -> :sswitch_43e
        0x183 -> :sswitch_289
        0x184 -> :sswitch_279
        0x18e -> :sswitch_270
        0x18f -> :sswitch_267
    .end sparse-switch

    :pswitch_data_7ae
    .packed-switch 0xb
        :pswitch_260
        :pswitch_259
        :pswitch_256
        :pswitch_61b
        :pswitch_229
        :pswitch_4ce
        :pswitch_509
    .end packed-switch

    :pswitch_data_7c0
    .packed-switch 0x13
        :pswitch_5ee
        :pswitch_21b
        :pswitch_215
        :pswitch_20f
        :pswitch_200
        :pswitch_1d1
        :pswitch_509
    .end packed-switch

    :pswitch_data_7d2
    .packed-switch 0x1c
        :pswitch_163
        :pswitch_157
        :pswitch_145
    .end packed-switch

    :pswitch_data_7dc
    .packed-switch 0x2e
        :pswitch_229
        :pswitch_12b
        :pswitch_43e
        :pswitch_43e
    .end packed-switch

    :pswitch_data_7e8
    .packed-switch 0x4a
        :pswitch_127
        :pswitch_123
        :pswitch_106
    .end packed-switch

    :pswitch_data_7f2
    .packed-switch 0x63
        :pswitch_577
        :pswitch_f4
        :pswitch_e2
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1306
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged()Z
    .registers 4

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_11

    .line 1393
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 1394
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModePicker()V

    .line 1396
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->onConfigurationChanged()V

    .line 1398
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1295
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 1285
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 477
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 478
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    if-eq v0, p1, :cond_21

    .line 479
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->onOrientationChanged(IZ)V

    .line 482
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-nez p1, :cond_1e

    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_21

    .line 483
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    :cond_21
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 1290
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method protected onSetupViews()V
    .registers 5

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setupViews()V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setupViews()V

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setOnMoreTabChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;)V

    .line 425
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_43

    goto :goto_5e

    .line 428
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormal()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 432
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_61

    .line 426
    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    .line 434
    :goto_61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setNotifyClickMoreModeGuideIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_78

    .line 436
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 438
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_85

    .line 439
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    :cond_85
    return-void
.end method

.method public onSwitchModeByAppUI(Ljava/lang/String;)V
    .registers 4

    .line 1622
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->onSwitchModeByAppUI(Ljava/lang/String;)V

    .line 1623
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    goto :goto_13

    .line 1626
    :cond_f
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll(Ljava/lang/String;)V

    goto :goto_16

    .line 1624
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    .line 1628
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->selectMoreTabView(Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_22

    .line 1631
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1633
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabSellingPointState()V

    .line 1634
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabFeatureName()V

    .line 1635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMode(Ljava/lang/String;)V

    .line 1636
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->showMode(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 455
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->pause()V

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_a

    .line 457
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->pause()V

    .line 459
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 460
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyNeedSwitchMode(Z)V

    .line 462
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_13

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->performTouchEvent(Landroid/view/MotionEvent;)V

    :cond_13
    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_7

    .line 190
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->resetMoreModeToNormal()V

    .line 192
    :cond_7
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p0, :cond_13

    .line 193
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyNeedSwitchMode(Z)V

    :cond_13
    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .registers 2

    if-nez p1, :cond_5

    .line 2018
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    :goto_7
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public resume()V
    .registers 2

    .line 468
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_10

    .line 470
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyListTypeUpdate()V

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->isPopSettingShow(Z)V

    :cond_10
    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 1242
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModePickUI setEnable enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCameraSwitching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPopSettingUIShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPMasterUIShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPortraitUIShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVideoRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsZoomScaling\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsConfigurationChanging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1252
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-nez v0, :cond_7c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    if-nez v0, :cond_7c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    if-eqz v0, :cond_7d

    :cond_7c
    move p1, v1

    .line 1255
    :cond_7d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-nez v0, :cond_91

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_91

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-eqz v0, :cond_90

    goto :goto_91

    :cond_90
    move v1, p1

    .line 1258
    :cond_91
    :goto_91
    invoke-super {p0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 1259
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-eqz p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    if-nez p1, :cond_a9

    .line 1260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    goto :goto_ae

    .line 1262
    :cond_a9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    .line 1265
    :goto_ae
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setSupportQC(Z)V

    .line 1266
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    .line 1267
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .registers 9

    .line 1354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModePolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 1355
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    .line 1356
    const-string v0, "0"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    .line 1357
    const-string v1, "1"

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1358
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1359
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    .line 1360
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1361
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1362
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    .line 1363
    invoke-virtual {p0, v3, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    .line 1364
    sget-object v2, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setModeList: backCameraModeList size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frontCameraModeList size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    .line 1365
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1364
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    goto :goto_8d

    .line 1368
    :cond_71
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz v2, :cond_79

    .line 1369
    invoke-virtual {v2, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    goto :goto_8d

    .line 1371
    :cond_79
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1372
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1373
    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    .line 1374
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    .line 1376
    :goto_8d
    const-string p3, "quick_capture_mode"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1377
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mQCSupportModeArray:Ljava/util/List;

    .line 1378
    const-string/jumbo p3, "vip_mode"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1379
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    return-void
.end method

.method public setModeOpaque()V
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModePickerOpaque()V

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideRightRootOpaque()V

    return-void
.end method

.method public setModeUnOpaque()V
    .registers 1

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModePickerUnOpaque()V

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    .line 2030
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setPreviewSize(II)V

    .line 2031
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    if-eqz v0, :cond_a

    .line 2032
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->onPreviewSizeChanged(II)V

    .line 2034
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    if-eqz p0, :cond_11

    .line 2035
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->onPreviewSizeChanged(II)V

    :cond_11
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 1184
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_2b

    .line 1186
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2b

    .line 1189
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 1190
    const-string v0, "key_wide_camera_item_seleccted"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1191
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_restore_settings_notify_ui"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_instant_zoom_ui_state"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->shouldExitCameraOnBackPressed()Z

    move-result p0

    return p0
.end method

.method public show()V
    .registers 4

    .line 1311
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_f

    .line 1312
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->resetRecordingUI()V

    .line 1314
    :cond_f
    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_35

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 1315
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_35

    .line 1317
    :cond_25
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v1, v0, :cond_31

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    if-nez v0, :cond_3b

    .line 1318
    :cond_31
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    goto :goto_3b

    .line 1316
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerFromUnderwater(Z)V

    .line 1320
    :cond_3b
    :goto_3b
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_4e

    :cond_45
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    .line 1321
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    return-void

    .line 1323
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormal()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1326
    :cond_5f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    return-void
.end method

.method public showModePickerGuide()V
    .registers 8

    .line 1652
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1653
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setupModePanelGuideView()V

    .line 1655
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModePanelGuideSupported()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    if-nez v0, :cond_6d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    if-eqz v0, :cond_6d

    .line 1656
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1658
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 1657
    const-string v2, "key_camera_guide_usage"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-le v1, v5, :cond_46

    .line 1660
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    const/16 v4, 0x20

    if-lt v1, v4, :cond_6b

    .line 1662
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6b

    .line 1665
    :cond_46
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1666
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    return-void

    .line 1669
    :cond_51
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mIsSecureCamera:Z

    if-eqz v3, :cond_68

    if-gt v1, v5, :cond_64

    add-int/lit8 v1, v1, -0x1

    .line 1672
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 1671
    invoke-virtual {v0, v2, v1, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1674
    :cond_64
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    goto :goto_6b

    .line 1676
    :cond_68
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    .line 1679
    :cond_6b
    :goto_6b
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    :cond_6d
    return-void
.end method

.method public showModeRegion()V
    .registers 2

    .line 293
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isNeedShowModeRegion()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegion(Z)V

    return-void
.end method

.method public showModeRegion(Z)V
    .registers 2

    if-eqz p1, :cond_13

    .line 299
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModePickerFromTBox()V

    return-void

    .line 302
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModePicker()V

    :cond_13
    return-void
.end method

.method public showModeRegionOnSinked()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModeRegionOnSinked(Z)V

    return-void
.end method

.method public showMoreModeGuideAnim()V
    .registers 5

    .line 1197
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1198
    const-string v1, "0"

    .line 1199
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1198
    const-string v3, "key_more_mode_guide_click_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1e

    const/4 v0, 0x5

    .line 1202
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    :cond_1e
    return-void
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    .line 378
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerFromUnderwater(Z)V

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerFromUnderwater(Z)V

    return-void
.end method

.method public showOrHideModePickerRootUI(ZZZZ)V
    .registers 6

    .line 361
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    if-eqz v0, :cond_1a

    .line 363
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_1a

    .line 364
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showOrHideModePickerRootUI] return for AIGCEffectUI show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    if-eqz v0, :cond_34

    .line 369
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_34

    .line 370
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showOrHideModePickerRootUI] return for AIArtMuseumUI show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 373
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerRootUI(ZZZZ)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 1272
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 1273
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1276
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_instant_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->unInit()V

    .line 1280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->unInit()V

    return-void
.end method

.method public updateArrowEnableState(Z)V
    .registers 2

    .line 1174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateArrowEnableState(Z)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .registers 7

    .line 1451
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1452
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    .line 1453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1457
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1458
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1459
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1460
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1461
    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getRestoreMode()Ljava/lang/String;

    move-result-object p0

    .line 1460
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1464
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1467
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1468
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1469
    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getRestoreMode()Ljava/lang/String;

    move-result-object p0

    .line 1468
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1470
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz v0, :cond_96

    .line 1471
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void

    .line 1473
    :cond_96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1474
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1475
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1476
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1477
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1480
    :cond_c3
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ee

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1483
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1484
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1485
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1487
    :cond_ee
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1488
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1489
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1490
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;ZZZ)V
    .registers 6

    .line 1404
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    .line 1405
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 1406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentMode(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentMode(Ljava/lang/String;)V

    if-nez p2, :cond_42

    .line 1410
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->setVal(Landroid/content/Context;Ljava/lang/String;)V

    .line 1411
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->selectMoreTabView(Ljava/lang/String;)V

    .line 1412
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabSellingPointState()V

    .line 1413
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabFeatureName()V

    .line 1414
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/IModePanelUI;->refreshModePanelView()V

    .line 1415
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2, p1, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentMode(Ljava/lang/String;ZZ)V

    .line 1416
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p2

    if-nez p2, :cond_3f

    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 p3, 0x7

    if-ne p2, p3, :cond_3b

    goto :goto_3f

    .line 1419
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    goto :goto_42

    .line 1417
    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    .line 1422
    :cond_42
    :goto_42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .registers 6

    .line 1875
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    .line 1876
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1877
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {v1, p1, v2, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1879
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_36

    .line 1882
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1885
    :goto_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .registers 4

    .line 1868
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_7

    .line 1869
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateGuideRightRootVisibleState(I)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p0, :cond_7

    .line 200
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateGuideRightRootVisibleState(I)V

    :cond_7
    return-void
.end method

.method public updateMoreEditMode(Z)V
    .registers 2

    .line 1897
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public updatePanelItemClickable(Z)V
    .registers 2

    .line 1179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateItemClickable(Z)V

    return-void
.end method
