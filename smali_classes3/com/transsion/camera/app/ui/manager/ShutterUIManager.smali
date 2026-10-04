.class public Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumCapturing:Z

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFlipPageShow:Z

.field private mFlipSecondaryMenuShow:Z

.field private mFloatingShutterHideEnd:Z

.field private final mFloatingShutterNotSupportMode:[Ljava/lang/String;

.field private mInEditWaterMarkFragment:Z

.field private mInFragment:Z

.field private mInMicroPanTilt:Z

.field private mInModeSwitching:Z

.field private mInOrderEditorFragment:Z

.field private mInRemoteCaptureFragment:Z

.field private mInShutterSoundOptionalFragment:Z

.field private mInSwitchingDevice:Z

.field private mIsAIGCContinuousShooting:Z

.field private mIsContinuousShooting:Z

.field private mIsIntentPhotoModeSaving:Z

.field private mIsPhotoSizeChanging:Z

.field private mIsShot2ShotCapturing:Z

.field private mIsTimelapseForceEnable:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mPendingWriting:Z

.field private mRecording:Z

.field private mResuming:Z

.field private mShutterButtonLayout:Landroid/view/View;

.field private mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

.field private final mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

.field private final mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;"
        }
    .end annotation
.end field

.field private final mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

.field private final mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

.field private mSwipeTouchUp:Z

.field private mVideoMakeupUIShow:Z

.field private mVideoPortraitUIShow:Z

.field private mWriting:Z


# direct methods
.method public static synthetic $r8$lambda$cg1cj6HDb90PkB-eoj4noEOF01A(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->lambda$notifyCameraOperateActionToUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAIArtMuseumCapturing(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAIArtMuseumCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingShutterHideEnd(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterHideEnd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingShutterNotSupportMode(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterNotSupportMode:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInFragment(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAIGCContinuousShooting(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsAIGCContinuousShooting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsContinuousShooting(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsContinuousShooting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsIntentPhotoModeSaving(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsIntentPhotoModeSaving:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterHook(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterListeners(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/ui/IShutterUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFloatingShutterHideEnd(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterHideEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwipeTouchUp(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mSwipeTouchUp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    .line 110
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 72
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mMainHandler:Landroid/os/Handler;

    .line 73
    new-instance p0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 p0, 0x0

    .line 80
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 81
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    .line 82
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    .line 83
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    .line 84
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInShutterSoundOptionalFragment:Z

    .line 85
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 89
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    .line 90
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    .line 91
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    .line 93
    const-string p3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object p3, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 96
    iput-boolean p2, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterHideEnd:Z

    .line 97
    iput-boolean p2, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mSwipeTouchUp:Z

    .line 104
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsPhotoSizeChanging:Z

    .line 105
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsIntentPhotoModeSaving:Z

    .line 472
    new-instance p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    .line 111
    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mContext:Landroid/content/Context;

    .line 112
    iput-object v3, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 113
    new-instance p0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 114
    invoke-virtual {v0, p1, v1, v3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/ShutterUINew;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    .line 115
    new-instance p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Lcom/transsion/camera/app/ui/manager/ShutterUIManager-IA;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$array;->floating_shutter_not_support_mode_category:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterNotSupportMode:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private isShutterEnable()Z
    .registers 8

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isTZServiceSupport()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4b

    .line 938
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->getActionTriggerTime(I)J

    move-result-wide v2

    .line 939
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionTriggerTime(I)J

    move-result-wide v4

    .line 940
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShutterEnable: captureBeginTime = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", captureEndTime = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    cmp-long p0, v4, v2

    if-gtz p0, :cond_4b

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 p0, 0x0

    return p0

    :cond_4b
    :goto_4b
    return v1
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$0()V
    .registers 2

    .line 774
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsQuickVideoRecording(Z)V

    return-void
.end method


# virtual methods
.method protected createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/ShutterUINew;
    .registers 4

    .line 1020
    new-instance p0, Lcom/transsion/camera/app/ui/ShutterUINew;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ShutterUINew;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object p0
.end method

.method public getCShotButtonViewVisible()I
    .registers 1

    .line 953
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getCShotButtonViewVisible()I

    move-result p0

    return p0
.end method

.method public getQVButtonViewVisible()I
    .registers 1

    .line 957
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getQVideoButtonViewVisible()I

    move-result p0

    return p0
.end method

.method public getShutterButtonLayout()Landroid/view/View;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterButtonLayout:Landroid/view/View;

    return-object p0
.end method

.method public getShutterTypeSelftimerOff()I
    .registers 1

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .registers 1

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public hideCShotNumber()V
    .registers 5

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hideShutterButton()V
    .registers 1

    .line 992
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_7

    .line 993
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->hideShutterButton()V

    :cond_7
    return-void
.end method

.method public isRecordingAndOrientation(ZI)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v0, :cond_9

    .line 122
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mRecording:Z

    .line 123
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->isRecordingAndOrientation(ZI)V

    :cond_9
    return-void
.end method

.method public isUIProcessingAndOrientation(ZI)V
    .registers 3

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_7

    .line 129
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->isUIProcessingAndOrientation(ZI)V

    :cond_7
    return-void
.end method

.method public loadAfterPreviewStarted()V
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->loadAfterPreviewStarted()V

    return-void
.end method

.method public notifyCSNotSupport()V
    .registers 3

    .line 247
    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 248
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->notifyCSNotSupport()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_261

    if-eq p1, v1, :cond_259

    const/4 v3, 0x2

    if-eq p1, v3, :cond_24f

    const/4 v3, 0x3

    if-eq p1, v3, :cond_248

    const/4 v3, 0x4

    if-eq p1, v3, :cond_240

    if-eq p1, v0, :cond_238

    const/16 v3, 0x11

    if-eq p1, v3, :cond_230

    const/16 v3, 0x12

    if-eq p1, v3, :cond_228

    const/16 v3, 0x30

    const/4 v4, 0x7

    if-eq p1, v3, :cond_21c

    const/16 v3, 0x31

    if-eq p1, v3, :cond_20c

    const/16 v3, 0x4d

    if-eq p1, v3, :cond_230

    const/16 v3, 0x4e

    if-eq p1, v3, :cond_228

    const/16 v3, 0x55

    if-eq p1, v3, :cond_209

    const/16 v3, 0x56

    if-eq p1, v3, :cond_205

    sparse-switch p1, :sswitch_data_402

    packed-switch p1, :pswitch_data_4e0

    packed-switch p1, :pswitch_data_4ec

    packed-switch p1, :pswitch_data_4f8

    packed-switch p1, :pswitch_data_502

    goto/16 :goto_26f

    .line 843
    :pswitch_44
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsIntentPhotoModeSaving:Z

    goto/16 :goto_26f

    .line 794
    :pswitch_48
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v3, v4, :cond_26f

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoMakeupUIShow:Z

    if-eqz v3, :cond_26f

    .line 795
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoMakeupUIShow:Z

    .line 796
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 797
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mRecording:Z

    xor-int/2addr v4, v1

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    goto/16 :goto_26f

    .line 787
    :pswitch_5e
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v3, v4, :cond_26f

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoMakeupUIShow:Z

    if-nez v3, :cond_26f

    .line 788
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoMakeupUIShow:Z

    .line 789
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 790
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    goto/16 :goto_26f

    .line 801
    :pswitch_71
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v3, v4, :cond_26f

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoPortraitUIShow:Z

    if-nez v3, :cond_26f

    .line 802
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoPortraitUIShow:Z

    .line 803
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 804
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    goto/16 :goto_26f

    .line 665
    :pswitch_84
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    goto/16 :goto_26f

    .line 748
    :pswitch_88
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsContinuousShooting(Z)V

    .line 749
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 750
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsContinuousShooting:Z

    goto/16 :goto_26f

    .line 739
    :pswitch_96
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsContinuousShooting(Z)V

    .line 740
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 741
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsContinuousShooting:Z

    goto/16 :goto_26f

    .line 671
    :pswitch_a4
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setPanoramaCaptureBegin(Z)V

    goto/16 :goto_26f

    .line 668
    :pswitch_ab
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setPanoramaCaptureBegin(Z)V

    goto/16 :goto_26f

    .line 753
    :pswitch_b2
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 754
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    goto/16 :goto_26f

    .line 744
    :pswitch_bb
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 745
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    goto/16 :goto_26f

    .line 760
    :pswitch_c4
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setSelfTimerBegin(Z)V

    goto/16 :goto_26f

    .line 757
    :pswitch_cb
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setSelfTimerBegin(Z)V

    goto/16 :goto_26f

    .line 783
    :sswitch_d2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    .line 784
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->show()V

    goto/16 :goto_26f

    .line 778
    :sswitch_d9
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    .line 779
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    goto/16 :goto_26f

    .line 836
    :sswitch_e0
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsAIGCContinuousShooting:Z

    .line 837
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAIArtMuseumCapturing:Z

    goto/16 :goto_26f

    .line 832
    :sswitch_e6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsAIGCContinuousShooting:Z

    .line 833
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAIArtMuseumCapturing:Z

    goto/16 :goto_26f

    .line 733
    :sswitch_ec
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInShutterSoundOptionalFragment:Z

    goto/16 :goto_26f

    .line 730
    :sswitch_f0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInShutterSoundOptionalFragment:Z

    goto/16 :goto_26f

    .line 849
    :sswitch_f4
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setSuperNightLiteCaptureState(Z)V

    goto/16 :goto_26f

    .line 846
    :sswitch_fb
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setSuperNightLiteCaptureState(Z)V

    goto/16 :goto_26f

    .line 774
    :sswitch_102
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_26f

    .line 771
    :sswitch_110
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsQuickVideoRecording(Z)V

    goto/16 :goto_26f

    .line 658
    :sswitch_117
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->stopQuickVideo()V

    goto/16 :goto_26f

    .line 585
    :sswitch_11e
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mSwipeTouchUp:Z

    if-eqz v3, :cond_26f

    .line 586
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterHideEnd:Z

    goto/16 :goto_26f

    .line 582
    :sswitch_126
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterHideEnd:Z

    goto/16 :goto_26f

    .line 763
    :sswitch_12a
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->getCShotButtonViewVisible()I

    move-result v3

    if-nez v3, :cond_26f

    .line 764
    sget-object v3, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "camera activity lose focus, stop continuous shot"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 765
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->notifyLoseFocus()V

    .line 766
    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v3

    const-string v4, "key_continuous_shot_action"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v3

    const-string v5, "key_stop_continuous_shot_action"

    .line 767
    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_26f

    .line 724
    :sswitch_151
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    if-eqz v3, :cond_15d

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->getIsCapturing()Z

    move-result v3

    if-nez v3, :cond_26f

    .line 725
    :cond_15d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto/16 :goto_26f

    .line 719
    :sswitch_162
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    if-nez v3, :cond_26f

    .line 720
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto/16 :goto_26f

    .line 713
    :sswitch_16b
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto/16 :goto_26f

    .line 809
    :pswitch_170
    :sswitch_170
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v3, v4, :cond_26f

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoPortraitUIShow:Z

    if-eqz v3, :cond_26f

    .line 810
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoPortraitUIShow:Z

    .line 811
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 812
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mRecording:Z

    xor-int/2addr v4, v1

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    goto/16 :goto_26f

    .line 840
    :sswitch_186
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsIntentPhotoModeSaving:Z

    goto/16 :goto_26f

    .line 691
    :sswitch_18a
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    goto/16 :goto_26f

    .line 688
    :sswitch_18e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    goto/16 :goto_26f

    .line 685
    :sswitch_192
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    goto/16 :goto_26f

    .line 682
    :sswitch_196
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    goto/16 :goto_26f

    .line 662
    :pswitch_19a
    :sswitch_19a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    goto/16 :goto_26f

    .line 678
    :sswitch_19e
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    goto/16 :goto_26f

    .line 675
    :sswitch_1a2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    goto/16 :goto_26f

    .line 736
    :sswitch_1a6
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    goto/16 :goto_26f

    .line 626
    :sswitch_1aa
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 627
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 628
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    .line 629
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    .line 630
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    .line 631
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    .line 632
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    .line 633
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    .line 634
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v4, v3, :cond_1d2

    .line 635
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    if-eqz v3, :cond_1c9

    .line 636
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 637
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    .line 639
    :cond_1c9
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    if-eqz v3, :cond_1d2

    .line 640
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    .line 641
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->show()V

    .line 644
    :cond_1d2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mRecording:Z

    .line 645
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoMakeupUIShow:Z

    .line 646
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mVideoPortraitUIShow:Z

    .line 647
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 648
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInShutterSoundOptionalFragment:Z

    .line 649
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    if-eqz v3, :cond_1e5

    .line 650
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->stopQuickVideo()V

    .line 652
    :cond_1e5
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->notifyContinuousShotStop()V

    .line 653
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCameraSwitching(Z)V

    .line 654
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsPhotoSizeChanging(Z)V

    .line 655
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/CameraUtil;->putFbCameraState(Landroid/content/Context;I)V

    goto/16 :goto_26f

    .line 695
    :pswitch_1fb
    :sswitch_1fb
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    .line 696
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    .line 697
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mPendingWriting:Z

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    goto/16 :goto_26f

    .line 623
    :cond_205
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto/16 :goto_26f

    .line 620
    :cond_209
    :sswitch_209
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto :goto_26f

    .line 826
    :cond_20c
    :sswitch_20c
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v3, v4, :cond_26f

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    if-eqz v3, :cond_26f

    .line 827
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 828
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    goto :goto_26f

    .line 818
    :cond_21c
    :sswitch_21c
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v3, v4, :cond_26f

    .line 819
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipSecondaryMenuShow:Z

    .line 820
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->updateFlipSecondaryMenuState(ZZ)V

    goto :goto_26f

    .line 594
    :cond_228
    :sswitch_228
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 595
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/CameraUtil;->putFbCameraState(Landroid/content/Context;I)V

    goto :goto_26f

    .line 577
    :cond_230
    :sswitch_230
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 578
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->putFbCameraState(Landroid/content/Context;I)V

    goto :goto_26f

    .line 615
    :cond_238
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsPhotoSizeChanging:Z

    .line 616
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsPhotoSizeChanging(Z)V

    goto :goto_26f

    .line 611
    :cond_240
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsPhotoSizeChanging:Z

    .line 612
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsPhotoSizeChanging(Z)V

    goto :goto_26f

    .line 705
    :cond_248
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mPendingWriting:Z

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    .line 706
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    goto :goto_26f

    .line 700
    :cond_24f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 701
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    .line 702
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    goto :goto_26f

    .line 606
    :cond_259
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCameraSwitching(Z)V

    .line 607
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    goto :goto_26f

    .line 599
    :cond_261
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCameraSwitching(Z)V

    .line 600
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 601
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 602
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    .line 855
    :cond_26f
    :goto_26f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v3, :cond_401

    const/16 v4, 0x1f

    if-ne p1, v4, :cond_2ef

    .line 857
    invoke-interface {v3}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterType()I

    move-result v3

    .line 858
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result v4

    .line 859
    sget-object v5, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shot2shot end action need enable shutter button, shutterPriority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 860
    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUI;->getShutterPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shutterType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selfTimerShutterType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 859
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v3, v4, :cond_2b1

    add-int/lit16 v5, v4, 0x2710

    if-ne v3, v5, :cond_2bb

    .line 862
    :cond_2b1
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v5

    if-eqz v5, :cond_2df

    .line 863
    :cond_2bb
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCapturingAddProcessing:Z

    if-eqz p1, :cond_2db

    .line 865
    const-string p1, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    const-string v0, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 866
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_401

    .line 868
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    .line 871
    :cond_2db
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_2df
    if-ne v3, v4, :cond_2ef

    .line 874
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 875
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getShutterPriority()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2ef

    .line 876
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_2ef
    const/16 v3, 0x3e9

    .line 880
    invoke-static {v3, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondUIManagerEvent(II)I

    move-result v3

    .line 881
    iget-object v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v4, :cond_39b

    const/16 v4, 0x26

    if-ne p1, v4, :cond_306

    .line 883
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isMultiTouchSupport()Z

    move-result v3

    if-eqz v3, :cond_305

    move v3, v2

    goto :goto_306

    :cond_305
    move v3, v1

    .line 889
    :cond_306
    :goto_306
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    if-eqz v5, :cond_32d

    if-nez v3, :cond_32d

    const/16 v5, 0x18

    if-eq p1, v5, :cond_316

    if-eq p1, v4, :cond_316

    const/16 v4, 0x27

    if-ne p1, v4, :cond_32d

    .line 893
    :cond_316
    sget-object v3, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shot2shot do not enable shutter button action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v3, v1

    .line 896
    :cond_32d
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsPhotoSizeChanging:Z

    if-eqz v4, :cond_34c

    if-eq p1, v0, :cond_34c

    if-nez v3, :cond_34c

    .line 897
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photo size change do not enable shutter button action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v3, v1

    .line 900
    :cond_34c
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    if-nez v0, :cond_35a

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result v0

    if-eqz v0, :cond_391

    :cond_35a
    const/16 v0, 0xe

    if-ne p1, v0, :cond_391

    if-nez v3, :cond_391

    .line 903
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do not enable shutter button action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mInModeSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isPostAlgoShot2Shoting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v3, v1

    .line 907
    :cond_391
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v0

    invoke-static {v0, p1, v3}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v3

    :cond_39b
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3a3

    const/16 v0, 0x35

    if-ne p1, v0, :cond_3a3

    move v3, v1

    .line 919
    :cond_3a3
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCameraOperateActionToUI: setEnable action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", respond = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v3, v1, :cond_3c7

    .line 922
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_3c7
    if-nez v3, :cond_3eb

    .line 923
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    if-nez p1, :cond_3eb

    .line 924
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isShutterEnable()Z

    move-result p1

    if-eqz p1, :cond_3eb

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    if-nez p1, :cond_3eb

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    if-nez p1, :cond_3eb

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    if-nez p1, :cond_3eb

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    if-nez p1, :cond_3eb

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInShutterSoundOptionalFragment:Z

    if-nez p1, :cond_3eb

    .line 927
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    .line 929
    :cond_3eb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInFragment: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_401
    return-void

    :sswitch_data_402
    .sparse-switch
        0x9 -> :sswitch_1fb
        0x14 -> :sswitch_228
        0x1c -> :sswitch_1aa
        0x1f -> :sswitch_1a6
        0x66 -> :sswitch_1a2
        0x67 -> :sswitch_19e
        0x68 -> :sswitch_1a2
        0x69 -> :sswitch_209
        0x6a -> :sswitch_230
        0x6b -> :sswitch_230
        0x6c -> :sswitch_19a
        0x89 -> :sswitch_196
        0x8a -> :sswitch_192
        0x8b -> :sswitch_196
        0x90 -> :sswitch_18e
        0x91 -> :sswitch_18a
        0x95 -> :sswitch_186
        0xb0 -> :sswitch_230
        0xb1 -> :sswitch_228
        0xb2 -> :sswitch_230
        0xb5 -> :sswitch_170
        0xb8 -> :sswitch_16b
        0xb9 -> :sswitch_162
        0xba -> :sswitch_16b
        0xbb -> :sswitch_162
        0xbc -> :sswitch_16b
        0xbd -> :sswitch_151
        0xbe -> :sswitch_16b
        0xbf -> :sswitch_162
        0xd5 -> :sswitch_12a
        0xe4 -> :sswitch_126
        0xe5 -> :sswitch_11e
        0xe6 -> :sswitch_117
        0xe9 -> :sswitch_110
        0xea -> :sswitch_102
        0xed -> :sswitch_fb
        0xee -> :sswitch_f4
        0xef -> :sswitch_f0
        0xf0 -> :sswitch_ec
        0xf1 -> :sswitch_f0
        0xf4 -> :sswitch_230
        0xf5 -> :sswitch_228
        0xf6 -> :sswitch_230
        0xf7 -> :sswitch_21c
        0xf8 -> :sswitch_20c
        0x101 -> :sswitch_e6
        0x102 -> :sswitch_e0
        0x109 -> :sswitch_d9
        0x10a -> :sswitch_d2
        0x10b -> :sswitch_d9
        0x10c -> :sswitch_d2
        0x132 -> :sswitch_21c
        0x133 -> :sswitch_20c
        0x189 -> :sswitch_16b
        0x18a -> :sswitch_162
    .end sparse-switch

    :pswitch_data_4e0
    .packed-switch 0xb
        :pswitch_cb
        :pswitch_c4
        :pswitch_bb
        :pswitch_b2
    .end packed-switch

    :pswitch_data_4ec
    .packed-switch 0x22
        :pswitch_ab
        :pswitch_a4
        :pswitch_96
        :pswitch_88
    .end packed-switch

    :pswitch_data_4f8
    .packed-switch 0x61
        :pswitch_19a
        :pswitch_84
        :pswitch_1fb
    .end packed-switch

    :pswitch_data_502
    .packed-switch 0x81
        :pswitch_71
        :pswitch_170
        :pswitch_5e
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method

.method public onConfigurationChanged()Z
    .registers 2

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 563
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method public onContinuousShotProgress(II)V
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_7

    .line 235
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->onContinuousShotProgress(II)V

    :cond_7
    return-void
.end method

.method public onContinuousShotStop()V
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_7

    .line 242
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->onContinuousShotStop()V

    :cond_7
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterButtonLayout:Landroid/view/View;

    return-object p1
.end method

.method public onOrientationChanged(IZ)V
    .registers 5

    .line 190
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 191
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 p2, 0x0

    .line 194
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 985
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 986
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_a

    .line 987
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->onScreenFormChanged(IZ)V

    :cond_a
    return-void
.end method

.method protected onSetupViews()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setupViews()V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IShutterUI;->setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IShutterUI;->setSwipeOperationListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    const/4 v1, 0x1

    .line 154
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFloatingShutterHideEnd:Z

    .line 155
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mSwipeTouchUp:Z

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsContinuousShooting:Z

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsShot2ShotCapturing:Z

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsPhotoSizeChanging:Z

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v1, :cond_27

    .line 160
    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IShutterUI;->onPause()V

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsCapturing(Z)V

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsQuickVideoRecording(Z)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setIsContinuousShooting(Z)V

    :cond_27
    return-void
.end method

.method public registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
    .registers 3

    if-nez p1, :cond_a

    .line 203
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .registers 2

    .line 141
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mAIArtMuseumCapturing:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsAIGCContinuousShooting:Z

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_12

    .line 146
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->onResume()V

    :cond_12
    return-void
.end method

.method public setContinuousShotEnd(Z)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setContinuousShotEnd(Z)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 962
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    if-eqz v0, :cond_d

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_5c

    const/4 p1, 0x1

    .line 964
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void

    .line 967
    :cond_d
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 968
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isDebugLogEnable()Z

    move-result v0

    const-string v1, "notifyAction setEnable:"

    if-eqz v0, :cond_23

    .line 969
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 971
    :cond_23
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 973
    :goto_37
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    if-eqz v0, :cond_55

    .line 974
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "but watermark writing return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 977
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_5c

    .line 978
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_5c
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 222
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_17

    .line 223
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_17

    .line 226
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_17

    .line 228
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .registers 2

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .registers 2

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public setWritingState(Z)V
    .registers 5

    .line 1004
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mPendingWriting:Z

    .line 1005
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IShutterUI;->isPressed()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1006
    :goto_c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    if-nez v1, :cond_3b

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    if-nez v1, :cond_3b

    if-eqz v0, :cond_17

    goto :goto_3b

    .line 1011
    :cond_17
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    .line 1012
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction mWriting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1013
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_3a

    xor-int/lit8 p1, p1, 0x1

    .line 1014
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_3a
    return-void

    .line 1007
    :cond_3b
    :goto_3b
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction setWritingState return, mResuming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInModeSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", pressed:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .registers 3

    const/4 v0, 0x7

    .line 946
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    if-eqz v0, :cond_a

    return-void

    .line 949
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void
.end method

.method public showCShotNumber()V
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_7

    .line 254
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->showCShotNumber()V

    :cond_7
    return-void
.end method

.method public showShutterButton()V
    .registers 1

    .line 998
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_7

    .line 999
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->showShutterButton()V

    :cond_7
    return-void
.end method

.method public transitionToIdle()V
    .registers 2

    const/4 v0, 0x1

    .line 519
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle(Z)V

    return-void
.end method

.method public transitionToIdle(Z)V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToIdle()V

    if-nez p1, :cond_d

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_d
    return-void
.end method

.method public transitionToPressed(Z)V
    .registers 2

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToPressed(Z)V

    return-void
.end method

.method public transitionToProcessing()V
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToProcessing()V

    return-void
.end method

.method public transitionToSmile()V
    .registers 1

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToSmile()V

    return-void
.end method

.method public transitionToVoice()V
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToVoice()V

    return-void
.end method

.method public triggerShutterClick(II)V
    .registers 5

    const/4 v0, 0x7

    .line 542
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    if-eqz v0, :cond_11

    .line 543
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[triggerShutterClick] interrupted, SCREEN_FORM_TYPE_FLIP"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 546
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterClick(II)V

    return-void
.end method

.method public triggerShutterLongClick(II)V
    .registers 5

    const/4 v0, 0x7

    .line 550
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mFlipPageShow:Z

    if-eqz v0, :cond_a

    return-void

    .line 553
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterLongClick(II)V

    return-void
.end method

.method public triggerShutterUp()V
    .registers 2

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterUp(I)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->unInit()V

    return-void
.end method

.method public unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .registers 3

    if-nez p1, :cond_b

    .line 211
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unRegisterOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateShutterType(IZ)V
    .registers 3

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->updateShutterType(IZ)V

    return-void
.end method
