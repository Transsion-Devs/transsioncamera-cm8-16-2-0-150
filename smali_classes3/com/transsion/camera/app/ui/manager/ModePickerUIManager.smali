.class public Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;,
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

.field private mIsActivityPaused:Z

.field private mIsCameraSwitching:Z

.field private mIsCapturing:Z

.field private mIsCelebritySceneShow:Z

.field private mIsConfigurationChanging:Z

.field private mIsCurModeSupportQC:Z

.field private mIsDualDeviceItemShow:Z

.field private mIsVideoRecording:Z

.field private mIsVlogSetModePickerEnable:Z

.field private mIsZoomScaling:Z

.field private mLowMemoryLimitClickTime:I

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private mModePanelRoot:Landroid/view/View;

.field private final mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

.field private final mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

.field private mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

.field private final mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

.field private final mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

.field private mPMasterUIShowing:Z

.field private mPopSettingUIShow:Z

.field private mPortraitUIShow:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mProArrowShow:Z

.field private mQCSupportModeArray:Ljava/util/List;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSkyPanelShowing:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

.field private mVIPCameraModeList:Ljava/util/List;

.field private mVideoMakeupUIShow:Z


# direct methods
.method public static synthetic $r8$lambda$XIBrPMCF97Pft5uor5HyLhpr2g8(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1035
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

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

.method static bridge synthetic -$$Nest$mregisterScrollListener(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

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

    .line 100
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePickerUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 12

    move-object p8, p9

    move-object p9, p10

    move-object p10, p11

    .line 248
    invoke-direct/range {p0 .. p10}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 23

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 206
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 114
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;

    const/4 v11, 0x0

    invoke-direct {v0, p0, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MyStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 128
    iput-object v11, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    const/4 v1, 0x1

    .line 140
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    .line 152
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsActivityPaused:Z

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    .line 158
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLowMemoryLimitClickTime:I

    iput v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    .line 1312
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    .line 209
    iput-object v9, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 210
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-virtual {v9, v1, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onScreenFormChanged(IZ)V

    .line 211
    iput-object v10, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 212
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    .line 213
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-direct {v0, p0, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    .line 214
    new-instance v5, Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-object/from16 v0, p10

    invoke-direct {v5, p1, v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 215
    invoke-virtual {v5}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    .line 216
    new-instance v1, Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-direct {v1, p1, p2, v0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    .line 217
    new-instance v2, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-direct {v2, p2, v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 219
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI;

    move-object v3, p1

    move-object v6, p2

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/ModePickerUI;-><init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V

    move-object v6, v1

    move-object v8, v2

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 223
    new-instance v0, Lcom/transsion/camera/app/ui/MorePanelUI;

    move-object v1, p1

    move-object v3, p2

    move-object v4, v5

    move-object v2, v10

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/MorePanelUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    move-object v5, v4

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 225
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;

    invoke-direct {v1, p0, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V

    .line 227
    new-instance v0, Lcom/transsion/camera/app/ui/ModeScrollUI;

    move-object/from16 p7, p1

    move-object/from16 p6, p2

    move-object p3, v0

    move-object/from16 p8, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v8

    invoke-direct/range {p3 .. p8}, Lcom/transsion/camera/app/ui/ModeScrollUI;-><init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I
    .registers 1

    .line 99
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I
    .registers 1

    .line 99
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return p0
.end method

.method private checkSupportQuickCapture(Ljava/lang/String;)Z
    .registers 2

    .line 1650
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

.method private isNeedShowModeRegion()Z
    .registers 2

    .line 269
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

.method private onFinishVideoRecording(Z)V
    .registers 3

    .line 1033
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_17

    .line 1034
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1035
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 1036
    :cond_17
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v0, :cond_24

    xor-int/lit8 p1, p1, 0x1

    .line 1037
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    :cond_24
    return-void
.end method

.method private registerScrollListener()V
    .registers 4

    .line 1551
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[registerScrollListener] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1552
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->unRegisterScrollListener()V

    .line 1553
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    .line 1554
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_3e

    .line 1564
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1565
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1566
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    .line 1557
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1558
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    :cond_63
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8b

    .line 1571
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1572
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    :cond_8b
    const/4 v1, 0x4

    if-eq v0, v1, :cond_c1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_92

    goto :goto_c1

    :cond_92
    if-eqz v0, :cond_9a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ad

    .line 1582
    :cond_9a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_ad

    goto :goto_ae

    :cond_ad
    return-void

    .line 1583
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1584
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void

    .line 1577
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 1578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method private sendEmptyMessage(I)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1503
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .registers 5

    .line 1507
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz v0, :cond_c

    .line 1508
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    return-void
.end method

.method private setModeScrollerEnable(Z)V
    .registers 2

    .line 1374
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    if-eqz p0, :cond_7

    .line 1375
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method private settingUIPanelHide(I)V
    .registers 5

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCurrentModeUIAlpha(F)V

    .line 1060
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1061
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    :cond_f
    const/4 v0, 0x0

    .line 1063
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 1064
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 1065
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_31

    const/16 v1, 0x84

    if-ne v1, p1, :cond_2c

    .line 1067
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    if-eqz p1, :cond_31

    .line 1068
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 1069
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1070
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    return-void

    .line 1073
    :cond_2c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1074
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    :cond_31
    return-void
.end method

.method private settingUIPanelShow(I)V
    .registers 5

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCurrentModeUIAlpha(F)V

    const/4 v0, 0x0

    .line 1043
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 1044
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eqz v0, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    .line 1047
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 1049
    :cond_19
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x83

    const/4 v1, 0x1

    if-ne v0, p1, :cond_25

    .line 1051
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 1053
    :cond_25
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 1054
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    :cond_2a
    return-void
.end method

.method private unRegisterScrollListener()V
    .registers 3

    .line 1591
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unRegisterScrollListener] -- "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1593
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1594
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1595
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method

.method private updateHorizontalScroll()V
    .registers 3

    .line 1607
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1610
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void

    .line 1608
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

    .line 1599
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_19

    .line 1602
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object p1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void

    .line 1600
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

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortShowOrHideModePickerRootUI()V

    return-void
.end method

.method public exitModeOnMoreTab()V
    .registers 1

    .line 349
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->exitModeOnMoreTab()V

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->exitModeOnMoreTab()V

    return-void
.end method

.method public flashModeListCurrentCamera()V
    .registers 1

    return-void
.end method

.method public hide()V
    .registers 3

    .line 1228
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_26

    .line 1229
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1230
    :goto_12
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1231
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide: dismiss"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1235
    :cond_26
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 1236
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_35

    goto :goto_44

    .line 1239
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 1240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void

    :cond_44
    :goto_44
    const/4 v0, 0x0

    .line 1237
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    return-void
.end method

.method public hideModeRegion()V
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->hideModePicker()V

    return-void
.end method

.method public isModeTabScrolling()Z
    .registers 1

    .line 1271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1274
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 14

    .line 461
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

    .line 465
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v1

    .line 466
    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v3, :cond_3a

    .line 467
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v3

    invoke-static {v3, p1, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v1

    .line 469
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

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 474
    :cond_60
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setViewEnable(Z)V

    goto :goto_72

    :cond_66
    if-nez v1, :cond_72

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setViewEnable(Z)V

    .line 480
    :cond_72
    :goto_72
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    const/16 v5, 0x91

    if-eqz v1, :cond_87

    const/16 v1, 0x10

    if-eq p1, v1, :cond_85

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_85

    if-eq p1, v5, :cond_85

    goto :goto_87

    .line 485
    :cond_85
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 492
    :cond_87
    :goto_87
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    if-eqz v1, :cond_8f

    const/16 v1, 0x18

    if-eq p1, v1, :cond_92

    .line 494
    :cond_8f
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 497
    :cond_92
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v1, :cond_99

    .line 498
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyCameraOperateAction(I)V

    :cond_99
    if-eqz p1, :cond_60f

    if-eq p1, v3, :cond_5f7

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v2, :cond_5e7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5d5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5d2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5cf

    const/4 v2, 0x6

    if-eq p1, v2, :cond_5d2

    const/4 v6, 0x7

    if-eq p1, v6, :cond_5cf

    const/16 v7, 0x8

    const/16 v8, 0x24

    if-eq p1, v8, :cond_5c0

    const/16 v9, 0x25

    if-eq p1, v9, :cond_5a4

    const/16 v10, 0x58

    if-eq p1, v10, :cond_596

    const/16 v10, 0x59

    if-eq p1, v10, :cond_584

    const/16 v10, 0x90

    const/4 v11, 0x0

    if-eq p1, v10, :cond_568

    if-eq p1, v5, :cond_549

    sparse-switch p1, :sswitch_data_62c

    packed-switch p1, :pswitch_data_6fe

    packed-switch p1, :pswitch_data_70e

    packed-switch p1, :pswitch_data_71e

    packed-switch p1, :pswitch_data_728

    packed-switch p1, :pswitch_data_734

    packed-switch p1, :pswitch_data_73e

    goto/16 :goto_62a

    .line 694
    :pswitch_e0
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setEnable(Z)V

    return-void

    .line 690
    :pswitch_e8
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    .line 691
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setEnable(Z)V

    return-void

    .line 770
    :pswitch_f0
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onFinishVideoRecording(Z)V

    .line 771
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 772
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 773
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 774
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 775
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 935
    :pswitch_10a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 936
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    if-nez p1, :cond_62a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-nez p1, :cond_62a

    .line 937
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 942
    :pswitch_11c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 943
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void

    .line 503
    :pswitch_128
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsActivityPaused:Z

    .line 504
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setSelfTimerBegin(Z)V

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabIndexOnPause(Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsPopSettingShow(Z)V

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPanelShow(Z)V

    .line 509
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setProSeekUIShow(Z)V

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p1, :cond_153

    .line 512
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setIsModeSwitching(Z)V

    .line 514
    :cond_153
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 515
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 516
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 517
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    .line 518
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 519
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    .line 520
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    .line 521
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    .line 522
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_176

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    if-nez p1, :cond_16f

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    if-eqz p1, :cond_176

    .line 523
    :cond_16f
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    .line 524
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 525
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    .line 527
    :cond_176
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 528
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 529
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    .line 530
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    .line 531
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    .line 532
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 533
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_62a

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->resetRecordingUI()V

    return-void

    .line 711
    :pswitch_193
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 712
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1b1

    .line 713
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1ae

    .line 714
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setInstantZoomShow(ZZ)V

    .line 716
    :cond_1ae
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 718
    :cond_1b1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorEnable(Z)V

    return-void

    .line 707
    :pswitch_1c2
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 632
    :pswitch_1ca
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void

    .line 629
    :pswitch_1d0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void

    .line 698
    :pswitch_1d6
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    return-void

    .line 732
    :pswitch_1da
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_1f5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1eb

    goto :goto_1f0

    .line 734
    :cond_1eb
    new-instance v11, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;

    invoke-direct {v11, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    .line 740
    :goto_1f0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3, v11}, Lcom/transsion/camera/app/ui/ModePickerUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 742
    :cond_1f5
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 743
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 745
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 997
    :pswitch_207
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    return-void

    .line 613
    :pswitch_20a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setSelfTimerBegin(Z)V

    goto/16 :goto_5a4

    .line 604
    :pswitch_211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setSelfTimerBegin(Z)V

    goto/16 :goto_5c0

    .line 1015
    :sswitch_218
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 1016
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    return-void

    .line 1010
    :sswitch_221
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 1011
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    return-void

    .line 979
    :sswitch_22a
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    .line 980
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_233

    .line 981
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCelebrityUIShow(Z)V

    .line 983
    :cond_233
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    .line 984
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 971
    :sswitch_23a
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_243

    .line 973
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setCelebrityUIShow(Z)V

    .line 975
    :cond_243
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    .line 976
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    :pswitch_24a
    :sswitch_24a
    const/16 v0, 0x83

    if-ne v0, p1, :cond_24f

    goto :goto_250

    :cond_24f
    move v3, v4

    .line 669
    :goto_250
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVideoMakeupUIShow:Z

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMakeUpUIShow(Z)V

    if-eqz v3, :cond_25d

    .line 672
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    return-void

    .line 674
    :cond_25d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    return-void

    .line 947
    :sswitch_261
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    if-eqz p1, :cond_62a

    .line 948
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 932
    :sswitch_269
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 929
    :sswitch_26d
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 892
    :sswitch_271
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_62a

    .line 893
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    .line 894
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 895
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    return-void

    .line 884
    :sswitch_27e
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_62a

    .line 885
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    .line 886
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 887
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    return-void

    .line 1005
    :sswitch_28b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 1006
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    return-void

    .line 1000
    :sswitch_294
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 1001
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    return-void

    .line 875
    :sswitch_29d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_2a4

    .line 876
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    :cond_2a4
    :sswitch_2a4
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 880
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 869
    :sswitch_2ad
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_2b4

    .line 870
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2b4
    const-wide/16 v0, 0x1c2

    .line 872
    invoke-direct {p0, v6, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void

    .line 913
    :sswitch_2ba
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    goto/16 :goto_441

    .line 899
    :sswitch_2be
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    :pswitch_2c0
    const/16 v0, 0x81

    if-ne p1, v0, :cond_2c6

    .line 902
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 904
    :cond_2c6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->abortShowOrHideModePickerRootUI()V

    .line 905
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 906
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPanelShow(Z)V

    .line 907
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_62a

    .line 908
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 909
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    return-void

    .line 960
    :sswitch_2db
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    .line 961
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p1, :cond_2e4

    .line 962
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFilterUIShow(Z)V

    .line 964
    :cond_2e4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 965
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq p1, v3, :cond_2f2

    .line 966
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 968
    :cond_2f2
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 952
    :sswitch_2f6
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    .line 953
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p1, :cond_2ff

    .line 954
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFilterUIShow(Z)V

    .line 956
    :cond_2ff
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 957
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 778
    :sswitch_308
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-eqz p1, :cond_62a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_62a

    .line 779
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 780
    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 857
    :sswitch_316
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_340

    .line 858
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_340

    .line 635
    :sswitch_31e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 801
    :sswitch_324
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    return-void

    .line 798
    :sswitch_327
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    return-void

    .line 987
    :sswitch_32a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_62a

    .line 988
    invoke-interface {p0, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyWindowsHasFocus(Z)V

    return-void

    .line 992
    :sswitch_332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_62a

    .line 993
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyWindowsHasFocus(Z)V

    return-void

    .line 865
    :sswitch_33a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    return-void

    .line 861
    :cond_340
    :goto_340
    :sswitch_340
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    .line 862
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 821
    :sswitch_34b
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 822
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsPopSettingShow(Z)V

    .line 823
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->isPopSettingShow(Z)V

    .line 824
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-eqz p1, :cond_376

    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eqz p1, :cond_376

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez p1, :cond_376

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_376

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_376

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_376

    .line 828
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    .line 830
    :cond_376
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsActivityPaused:Z

    if-nez p1, :cond_62a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez p1, :cond_62a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_62a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_62a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_62a

    .line 831
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_39a

    .line 832
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-nez p1, :cond_39f

    .line 833
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    goto :goto_39f

    .line 836
    :cond_39a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 839
    :cond_39f
    :goto_39f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsDualDeviceItemShow:Z

    if-eqz p1, :cond_3a7

    .line 840
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 842
    :cond_3a7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 843
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    if-nez p1, :cond_3b7

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-nez p1, :cond_3b7

    .line 844
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 846
    :cond_3b7
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_3c4

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-nez p1, :cond_3c2

    goto :goto_3c4

    :cond_3c2
    move p1, v4

    goto :goto_3c5

    :cond_3c4
    :goto_3c4
    move p1, v3

    .line 847
    :goto_3c5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isNeedShowModeRegion()Z

    move-result v0

    if-eqz v0, :cond_3d5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isNeedShowModePickerAnim()Z

    move-result v0

    if-eqz v0, :cond_3d5

    move v0, v3

    goto :goto_3d6

    :cond_3d5
    move v0, v4

    :goto_3d6
    if-eqz p1, :cond_3dc

    if-eqz v0, :cond_3dc

    move v1, v3

    goto :goto_3dd

    :cond_3dc
    move v1, v4

    .line 848
    :goto_3dd
    invoke-virtual {p0, v3, v4, v3, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showOrHideModePickerRootUI(ZZZZ)V

    if-eqz p1, :cond_62a

    .line 851
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegion(Z)V

    return-void

    .line 810
    :sswitch_3e6
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 811
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsPopSettingShow(Z)V

    .line 814
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->isPopSettingShow(Z)V

    .line 815
    invoke-virtual {p0, v4, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    .line 816
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_62a

    .line 817
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    :sswitch_40a
    const/16 v0, 0xca

    if-ne v0, p1, :cond_40f

    goto :goto_410

    :cond_40f
    move v3, v4

    .line 658
    :goto_410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPortraitSpotUIShow(Z)V

    if-eqz v3, :cond_41b

    .line 660
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    return-void

    .line 662
    :cond_41b
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    return-void

    .line 756
    :sswitch_41f
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onFinishVideoRecording(Z)V

    return-void

    :pswitch_423
    :sswitch_423
    const/16 v0, 0x30

    if-ne v0, p1, :cond_429

    move v0, v3

    goto :goto_42a

    :cond_429
    move v0, v4

    .line 645
    :goto_42a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFilterUIShow(Z)V

    if-eqz v0, :cond_43a

    .line 648
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    .line 649
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    .line 651
    :cond_43a
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    .line 652
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    return-void

    :goto_441
    :pswitch_441
    :sswitch_441
    const/16 v0, 0x82

    if-eq p1, v0, :cond_449

    const/16 v0, 0xb5

    if-ne p1, v0, :cond_44b

    .line 918
    :cond_449
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    .line 920
    :cond_44b
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 921
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setPanelShow(Z)V

    .line 922
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v6, :cond_62a

    .line 923
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    .line 924
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    return-void

    :sswitch_45d
    const/16 v0, 0xb3

    if-ne v0, p1, :cond_463

    move v0, v3

    goto :goto_464

    :cond_463
    move v0, v4

    .line 680
    :goto_464
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setFaceBeautyUIShow(Z)V

    if-eqz v0, :cond_474

    .line 682
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelShow(I)V

    .line 683
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 685
    :cond_474
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->settingUIPanelHide(I)V

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 568
    :sswitch_47d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setVipSelfieQuiting(Z)V

    return-void

    .line 784
    :sswitch_483
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    if-lez v1, :cond_4b0

    .line 785
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    const/16 v5, 0x66

    if-gt v1, v5, :cond_4b0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v5, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 786
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b0

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_mu_monomer"

    .line 787
    invoke-interface {v1, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "f0.0"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b0

    .line 788
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mLowMemoryLimitClickTime:I

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void

    .line 792
    :cond_4b0
    :sswitch_4b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shot2shot end action need enable mode picker ui, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 793
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    .line 794
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 638
    :sswitch_4cf
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    return-void

    .line 538
    :sswitch_4d5
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsActivityPaused:Z

    .line 539
    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabIndexOnResume(Ljava/lang/String;)V

    return-void

    .line 572
    :pswitch_4e2
    :sswitch_4e2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setVipSelfieQuiting(Z)V

    .line 574
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    .line 575
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_4fe

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreGuideState(Z)V

    .line 579
    :cond_4fe
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 580
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 581
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    .line 582
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    if-eq p1, v2, :cond_516

    .line 583
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 585
    :cond_516
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 586
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 587
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-nez p1, :cond_535

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    if-nez p1, :cond_535

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSkyPanelShowing:Z

    if-nez p1, :cond_535

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_535

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 590
    :cond_535
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne p1, v3, :cond_62a

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    return-void

    .line 804
    :sswitch_53f
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVlogSetModePickerEnable:Z

    .line 805
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-eqz p1, :cond_62a

    .line 806
    invoke-virtual {p0, v4, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 760
    :cond_549
    :pswitch_549
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    .line 761
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onFinishVideoRecording(Z)V

    .line 762
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 763
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 764
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 765
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 766
    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    .line 767
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 748
    :cond_568
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_577

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p1, :cond_577

    .line 749
    invoke-virtual {p1, v3, v11}, Lcom/transsion/camera/app/ui/ModePickerUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 751
    :cond_577
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    .line 752
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    .line 753
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateRecordingState(Z)V

    return-void

    .line 722
    :cond_584
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_58c

    .line 723
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 725
    :cond_58c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setProSeekUIShow(Z)V

    .line 727
    :pswitch_591
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPMasterUIShowing:Z

    .line 728
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPortraitUIShow:Z

    return-void

    .line 701
    :cond_596
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_59e

    .line 702
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 704
    :cond_59e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setProSeekUIShow(Z)V

    return-void

    :cond_5a4
    :goto_5a4
    :pswitch_5a4
    const/16 v0, 0xe

    if-ne p1, v0, :cond_5aa

    .line 617
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    .line 619
    :cond_5aa
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    if-eqz v0, :cond_5b1

    .line 620
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    .line 622
    :cond_5b1
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    if-ne v9, p1, :cond_62a

    .line 623
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v6, p1, :cond_62a

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    return-void

    .line 606
    :cond_5c0
    :goto_5c0
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    if-ne v8, p1, :cond_62a

    .line 607
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v6, p1, :cond_62a

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeSelectorVisibility(I)V

    return-void

    .line 1025
    :cond_5cf
    :sswitch_5cf
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    return-void

    .line 1021
    :cond_5d2
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    return-void

    .line 550
    :cond_5d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p1, :cond_5dc

    .line 551
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setIsModeSwitching(Z)V

    .line 555
    :cond_5dc
    :sswitch_5dc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    return-void

    .line 543
    :cond_5e7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setAlpha(F)V

    .line 544
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_62a

    .line 546
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setIsModeSwitching(Z)V

    return-void

    .line 596
    :cond_5f7
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 598
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 599
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreGuideState(Z)V

    return-void

    .line 559
    :cond_60f
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 560
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsCameraSwitching(Z)V

    .line 562
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->abortShowOrHideModePickerRootUI(Z)V

    .line 563
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_62a

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreGuideState(Z)V

    :cond_62a
    :goto_62a
    return-void

    nop

    :sswitch_data_62c
    .sparse-switch
        0x7 -> :sswitch_5cf
        0x8 -> :sswitch_53f
        0x9 -> :sswitch_4e2
        0x20 -> :sswitch_4d5
        0x36 -> :sswitch_5dc
        0x54 -> :sswitch_4cf
        0x6d -> :sswitch_5dc
        0x9c -> :sswitch_483
        0x9d -> :sswitch_4b0
        0xa7 -> :sswitch_47d
        0xb3 -> :sswitch_45d
        0xb5 -> :sswitch_441
        0xb6 -> :sswitch_423
        0xb7 -> :sswitch_45d
        0xc9 -> :sswitch_41f
        0xca -> :sswitch_40a
        0xcb -> :sswitch_40a
        0xcf -> :sswitch_3e6
        0xd0 -> :sswitch_34b
        0xd2 -> :sswitch_340
        0xd3 -> :sswitch_33a
        0xd4 -> :sswitch_332
        0xd5 -> :sswitch_32a
        0xd7 -> :sswitch_327
        0xd8 -> :sswitch_324
        0xdc -> :sswitch_31e
        0xe9 -> :sswitch_316
        0xea -> :sswitch_308
        0xf2 -> :sswitch_2f6
        0xf3 -> :sswitch_2db
        0xf7 -> :sswitch_2be
        0xf8 -> :sswitch_2ba
        0xfe -> :sswitch_2ad
        0xff -> :sswitch_29d
        0x103 -> :sswitch_294
        0x104 -> :sswitch_28b
        0x109 -> :sswitch_27e
        0x10a -> :sswitch_271
        0x10b -> :sswitch_27e
        0x10c -> :sswitch_271
        0x111 -> :sswitch_26d
        0x112 -> :sswitch_269
        0x119 -> :sswitch_261
        0x11a -> :sswitch_26d
        0x124 -> :sswitch_2ad
        0x125 -> :sswitch_2a4
        0x132 -> :sswitch_24a
        0x133 -> :sswitch_423
        0x183 -> :sswitch_23a
        0x184 -> :sswitch_22a
        0x18e -> :sswitch_221
        0x18f -> :sswitch_218
    .end sparse-switch

    :pswitch_data_6fe
    .packed-switch 0xb
        :pswitch_211
        :pswitch_20a
        :pswitch_207
        :pswitch_5a4
        :pswitch_1da
        :pswitch_549
    .end packed-switch

    :pswitch_data_70e
    .packed-switch 0x13
        :pswitch_591
        :pswitch_1d6
        :pswitch_1d0
        :pswitch_1ca
        :pswitch_1c2
        :pswitch_193
    .end packed-switch

    :pswitch_data_71e
    .packed-switch 0x1c
        :pswitch_128
        :pswitch_11c
        :pswitch_10a
    .end packed-switch

    :pswitch_data_728
    .packed-switch 0x2e
        :pswitch_1da
        :pswitch_f0
        :pswitch_423
        :pswitch_423
    .end packed-switch

    :pswitch_data_734
    .packed-switch 0x63
        :pswitch_4e2
        :pswitch_e8
        :pswitch_e0
    .end packed-switch

    :pswitch_data_73e
    .packed-switch 0x81
        :pswitch_2c0
        :pswitch_441
        :pswitch_24a
        :pswitch_24a
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 405
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

    .line 1279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_11

    .line 1280
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 1281
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModePicker()V

    .line 1283
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->onConfigurationChanged()V

    .line 1285
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1194
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

    .line 1184
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

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 437
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 438
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    if-eq v0, p1, :cond_21

    .line 439
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentOrientation:I

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->onOrientationChanged(IZ)V

    .line 442
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-nez p1, :cond_1e

    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_21

    .line 443
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    :cond_21
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 1189
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

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setupViews()V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setupViews()V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMoreTabChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setOnMoreTabChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;)V

    .line 389
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_43

    goto :goto_4d

    .line 392
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_50

    .line 390
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    .line 394
    :goto_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setNotifyClickMoreModeGuideIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;)V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_67

    .line 396
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 398
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_74

    .line 399
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    :cond_74
    return-void
.end method

.method public onSwitchModeByAppUI(Ljava/lang/String;)V
    .registers 4

    .line 1485
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->onSwitchModeByAppUI(Ljava/lang/String;)V

    .line 1486
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    goto :goto_13

    .line 1489
    :cond_f
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll(Ljava/lang/String;)V

    goto :goto_16

    .line 1487
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    .line 1491
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->selectMoreTabView(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_22

    .line 1494
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1496
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabSellingPointState()V

    .line 1497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabFeatureName()V

    .line 1498
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMode(Ljava/lang/String;)V

    .line 1499
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->showMode(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 415
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->pause()V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_a

    .line 417
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->pause()V

    .line 419
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 420
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyNeedSwitchMode(Z)V

    .line 422
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mInstantZoomShow:Z

    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_13

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->performTouchEvent(Landroid/view/MotionEvent;)V

    :cond_13
    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_7

    .line 166
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->resetMoreModeToNormal()V

    .line 168
    :cond_7
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p0, :cond_13

    .line 169
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyNeedSwitchMode(Z)V

    :cond_13
    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .registers 2

    if-nez p1, :cond_5

    .line 1646
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

    .line 428
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz v0, :cond_10

    .line 430
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyListTypeUpdate()V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->isPopSettingShow(Z)V

    :cond_10
    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 1142
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

    .line 1152
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

    .line 1155
    :cond_7d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsZoomScaling:Z

    if-nez v0, :cond_8f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_8f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-eqz v0, :cond_90

    :cond_8f
    move p1, v1

    .line 1158
    :cond_90
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsConfigurationChanging:Z

    if-eqz v0, :cond_9f

    goto :goto_a0

    :cond_9f
    move v1, p1

    .line 1161
    :cond_a0
    :goto_a0
    invoke-super {p0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 1162
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_b8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-eqz p1, :cond_b8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCapturing:Z

    if-nez p1, :cond_b8

    .line 1163
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    goto :goto_bd

    .line 1165
    :cond_b8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    .line 1168
    :goto_bd
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setSupportQC(Z)V

    .line 1169
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setEnable(Z)V

    .line 1170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .registers 7

    .line 1250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModePolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 1251
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    .line 1252
    const-string v0, "0"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    .line 1253
    const-string v1, "1"

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1254
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1255
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    .line 1256
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1258
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    .line 1259
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    .line 1260
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeList: backCameraModeList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frontCameraModeList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    .line 1261
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1260
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    .line 1263
    const-string p3, "quick_capture_mode"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1264
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mQCSupportModeArray:Ljava/util/List;

    .line 1265
    const-string/jumbo p3, "vip_mode"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1266
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    return-void
.end method

.method public setModeOpaque()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModePickerOpaque()V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideRightRootOpaque()V

    return-void
.end method

.method public setModeUnOpaque()V
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->setModePickerUnOpaque()V

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    .line 1658
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setPreviewSize(II)V

    .line 1659
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    if-eqz v0, :cond_a

    .line 1660
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->onPreviewSizeChanged(II)V

    .line 1662
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    if-eqz p0, :cond_11

    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->onPreviewSizeChanged(II)V

    :cond_11
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 1086
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_2b

    .line 1088
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2b

    .line 1091
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 1092
    const-string v0, "key_wide_camera_item_seleccted"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1093
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_restore_settings_notify_ui"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1094
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

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->shouldExitCameraOnBackPressed()Z

    move-result p0

    return p0
.end method

.method public show()V
    .registers 4

    .line 1210
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz v0, :cond_f

    .line 1211
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->resetRecordingUI()V

    .line 1213
    :cond_f
    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_35

    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 1214
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_35

    .line 1216
    :cond_25
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v1, v0, :cond_31

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mHidePickerForFlip:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFlipPageShow:Z

    if-nez v0, :cond_3b

    .line 1217
    :cond_31
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    goto :goto_3b

    .line 1215
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerFromUnderwater(Z)V

    .line 1219
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

    .line 1220
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeScrollerEnable(Z)V

    return-void

    .line 1222
    :cond_4e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    return-void
.end method

.method public showModeRegion()V
    .registers 2

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isNeedShowModeRegion()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegion(Z)V

    return-void
.end method

.method public showModeRegion(Z)V
    .registers 2

    if-eqz p1, :cond_13

    .line 260
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModePickerFromTBox()V

    return-void

    .line 263
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModePicker()V

    :cond_13
    return-void
.end method

.method public showModeRegionOnSinked()V
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFilterUIShown:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->showModeRegionOnSinked(Z)V

    return-void
.end method

.method public showMoreModeGuideAnim()V
    .registers 5

    .line 1099
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1100
    const-string v1, "0"

    .line 1101
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1100
    const-string v3, "key_more_mode_guide_click_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1e

    const/4 v0, 0x5

    .line 1104
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    :cond_1e
    return-void
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    .line 343
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerFromUnderwater(Z)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerFromUnderwater(Z)V

    return-void
.end method

.method public showOrHideModePickerRootUI(ZZZZ)V
    .registers 6

    .line 322
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsAIGCEffectUIShow:Z

    if-eqz v0, :cond_1a

    .line 324
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_1a

    .line 325
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showOrHideModePickerRootUI] return for AIGCEffectUI show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAIArtMuseumUIShow:Z

    if-eqz v0, :cond_34

    .line 330
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_34

    .line 331
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showOrHideModePickerRootUI] return for AIArtMuseumUI show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_34
    if-eqz p1, :cond_42

    .line 334
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPopSettingUIShow:Z

    if-eqz v0, :cond_42

    .line 335
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showOrHideModePickerRootUI] block show=true: PopSettingUI is showing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->showOrHideModePickerRootUI(ZZZZ)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 1175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_instant_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->unInit()V

    .line 1179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->unInit()V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .registers 7

    .line 1338
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1339
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    .line 1340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1343
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1344
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1345
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1346
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1347
    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getRestoreMode()Ljava/lang/String;

    move-result-object p0

    .line 1346
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1350
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1352
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1353
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1354
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1355
    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getRestoreMode()Ljava/lang/String;

    move-result-object p0

    .line 1354
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;ZZZ)V
    .registers 6

    .line 1291
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    .line 1292
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentMode(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentMode(Ljava/lang/String;)V

    if-nez p2, :cond_42

    .line 1297
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->setVal(Landroid/content/Context;Ljava/lang/String;)V

    .line 1298
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->selectMoreTabView(Ljava/lang/String;)V

    .line 1299
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabSellingPointState()V

    .line 1300
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabFeatureName()V

    .line 1301
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/IModePanelUI;->refreshModePanelView()V

    .line 1302
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p2, p1, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentMode(Ljava/lang/String;ZZ)V

    .line 1303
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p2

    if-nez p2, :cond_3f

    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 p3, 0x7

    if-ne p2, p3, :cond_3b

    goto :goto_3f

    .line 1306
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    goto :goto_42

    .line 1304
    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->registerScrollListener()V

    .line 1309
    :cond_42
    :goto_42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .registers 6

    .line 1621
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    .line 1622
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1623
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {v1, p1, v2, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1625
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_36

    .line 1628
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1631
    :goto_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public updateGuideRightRootVisibleState(I)V
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    if-eqz p0, :cond_7

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateGuideRightRootVisibleState(I)V

    :cond_7
    return-void
.end method

.method public updateMoreEditMode(Z)V
    .registers 2

    .line 1641
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public updatePanelItemClickable(Z)V
    .registers 2

    .line 1081
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateItemClickable(Z)V

    return-void
.end method
