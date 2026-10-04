.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.super Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MySurfaceTextureListener;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;
    }
.end annotation


# instance fields
.field private mArrayDualDevice:[Ljava/lang/String;

.field private mCurrentPosition:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDualDeviceGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDualDeviceSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

.field private mFoldFrontID:Ljava/lang/String;

.field private mIfNeedShowDualDeviceButton:Z

.field private mIsActivityPaused:Z

.field private mIsCameraSwitching:Z

.field private mIsModeSwitching:Z

.field private mMainSplitValue:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field protected mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

.field private mRecordingFlag:Z

.field private mSlaveDeviceIsFront:Z

.field private mSplitStyleValue:Ljava/lang/String;

.field private mSwitchScreenListener:Landroid/view/View$OnClickListener;

.field private mSwitchScreenSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mSwitchScreenSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThermalThrottleListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;

.field private mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field private mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

.field private onShutterClickedTime:J


# direct methods
.method public static synthetic $r8$lambda$MDfk3tMafXGPVFCfPtDHcX02DPc(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Landroid/util/Size;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->lambda$updatePreviewSize$0(Landroid/util/Size;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmArrayDualDevice(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualVideoRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldFrontID(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoUI(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLongCameraID(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getLongCameraID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWideCameraID(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getWideCameraID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveJpegToFile(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;[BLandroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToNextScreenValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->switchToNextScreenValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    const/4 p2, 0x2

    .line 96
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    const/4 p2, 0x0

    .line 97
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 104
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    .line 110
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    .line 111
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsActivityPaused:Z

    .line 114
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    .line 116
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;

    .line 589
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 601
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 611
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private convert2SupportedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 659
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 661
    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method

.method private convertJpegOrientation(I)I
    .registers 2

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_13

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_11

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/16 p0, 0x8

    return p0

    :cond_11
    const/4 p0, 0x3

    return p0

    :cond_13
    const/4 p0, 0x6

    return p0
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 4

    .line 722
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 723
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 724
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 725
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 726
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setExtClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private doActionWithStorageUnmounted()V
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage UNMOUNTED doActionWithStorageUnmounted, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-nez v0, :cond_1d

    return-void

    .line 528
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz v0, :cond_24

    .line 529
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->leave()V

    .line 531
    :cond_24
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getMainAndSlaveRatio()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowCutRatio(F)V

    .line 532
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->dualVideo(I)V

    .line 534
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private getConvertDualDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1238
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "key_transfer_camera_combination"

    if-eqz v0, :cond_7d

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7d

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->isFrontID(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_7d

    .line 1246
    :cond_15
    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    if-eqz v2, :cond_6d

    if-eqz v0, :cond_6d

    .line 1248
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_6d

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1250
    iget v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-nez v4, :cond_5f

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    :cond_5f
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 1255
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_6c

    .line 1256
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    :cond_6c
    move-object p2, v2

    .line 1260
    :cond_6d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_7c

    .line 1261
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 1262
    invoke-virtual {p0, v1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7c
    return-object p2

    .line 1239
    :cond_7d
    :goto_7d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_8c

    .line 1240
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 1241
    invoke-virtual {p0, v1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8c
    return-object p2
.end method

.method private getDualDeviceGroupList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 956
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDualDeviceGroupList dualDeviceSupportList is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 959
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDualDeviceGroupList dualDeviceSupportList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 960
    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a1

    .line 961
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 962
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 963
    aget-object v4, v3, v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getWideCameraID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 964
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    sget v5, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_front_wide:I

    sget v6, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_device_group_front_wide:I

    invoke-direct {v4, v5, v2, v6}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 965
    :cond_53
    aget-object v4, v3, v0

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 966
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    sget v5, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_front_main:I

    sget v6, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_device_group_front_main:I

    invoke-direct {v4, v5, v2, v6}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 967
    :cond_6c
    aget-object v4, v3, v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getLongCameraID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const/4 v4, 0x1

    .line 968
    aget-object v3, v3, v4

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 969
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    sget v5, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_main_tele:I

    sget v6, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_device_group_main_Tele:I

    invoke-direct {v4, v5, v2, v6}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 971
    :cond_90
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    sget v5, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_wide_tele:I

    sget v6, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_device_group_wide_Tele:I

    invoke-direct {v4, v5, v2, v6}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9e
    :goto_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_a1
    return-void
.end method

.method private getIndex(Ljava/util/List;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 625
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, p0, :cond_b

    return p1

    :cond_b
    return p0
.end method

.method private getLongCameraID()Ljava/lang/String;
    .registers 1

    .line 918
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1a

    .line 920
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object p0

    :cond_1a
    return-object p0
.end method

.method private getNextIndex(Ljava/util/List;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 637
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, p0, :cond_d

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_d
    return p0
.end method

.method private getPreviewMarginInfo(III)Landroid/graphics/Rect;
    .registers 11

    .line 1201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    int-to-double v1, p2

    const-wide v3, 0x3ffc71c720000000L    # 1.7777777910232544

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1a

    if-ge p2, p3, :cond_14

    if-le v1, p3, :cond_1a

    :cond_14
    int-to-double v5, p3

    div-double/2addr v5, v3

    double-to-int v1, v5

    move v3, v1

    move v1, p3

    goto :goto_1b

    :cond_1a
    move v3, p2

    :goto_1b
    const/4 v4, 0x0

    if-ne p1, v2, :cond_27

    sub-int p0, p2, v3

    .line 1225
    div-int/lit8 p0, p0, 0x2

    move p1, p0

    move v1, v4

    move v4, p1

    move p0, v1

    goto :goto_32

    .line 1228
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p0

    sub-int p1, p3, v1

    sub-int/2addr p1, p0

    move v1, p1

    move p1, v4

    :goto_32
    sub-int/2addr p2, p1

    sub-int/2addr p3, v1

    .line 1232
    invoke-virtual {v0, v4, p0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getWideCameraID()Ljava/lang/String;
    .registers 1

    .line 926
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideDualDeviceItem(Z)V
    .registers 2

    .line 943
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_7

    .line 944
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->hideDualDeviceItem(Z)V

    :cond_7
    return-void
.end method

.method private initDualDeviceSetting()V
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    instance-of v1, v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_18

    .line 682
    check-cast v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v1, "key_dual_device"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_18

    .line 684
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    :cond_18
    return-void
.end method

.method private initSwitchScreenSetting()V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    instance-of v1, v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_18

    .line 691
    check-cast v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v1, "key_dual_cam_switch_screen"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_18

    .line 693
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    :cond_18
    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 10

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v4

    .line 713
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v6, v5

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    .line 714
    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 715
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 716
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_fold_switch_preview"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->setScreenFormType(II)V

    return-void
.end method

.method private synthetic lambda$updatePreviewSize$0(Landroid/util/Size;)V
    .registers 3

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateSurfaceSize(II)V

    return-void
.end method

.method private needChangeSize()Z
    .registers 3

    .line 879
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private onFinishVideoRecording(I)V
    .registers 7

    .line 1160
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_36

    if-eq p1, v2, :cond_36

    const/16 v1, 0xc9

    if-eq p1, v1, :cond_15

    goto :goto_49

    .line 1173
    :cond_15
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v1, :cond_49

    .line 1174
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    if-eqz v1, :cond_30

    .line 1175
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v1, :cond_2d

    .line 1176
    invoke-virtual {v1, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 1177
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1179
    :cond_2d
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->showOrHideDualDeviceButton(Z)V

    .line 1181
    :cond_30
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onHideRecordingUI()V

    goto :goto_49

    .line 1164
    :cond_36
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_3d

    .line 1165
    invoke-interface {v1, v4, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1167
    :cond_3d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v1, :cond_49

    .line 1168
    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 1169
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    :cond_49
    :goto_49
    if-eqz v0, :cond_62

    if-eq p1, v2, :cond_62

    .line 1188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    .line 1189
    invoke-virtual {p1, v4, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 1191
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_62

    .line 1192
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getDualVideoPreviewUI()Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 1194
    invoke-virtual {p0, v4, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_62
    return-void
.end method

.method private saveJpegToFile([BLandroid/graphics/Bitmap;)V
    .registers 12

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_5

    return-void

    .line 852
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 853
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 854
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->needChangeSize()Z

    move-result v8

    move-object v4, p1

    move-object v5, p2

    .line 853
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 855
    new-instance p2, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {p2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 856
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_flash_facade"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 859
    const-string/jumbo v3, "torch"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_48

    :cond_46
    const/4 v1, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v1, 0x1

    .line 862
    :goto_49
    invoke-virtual {p2, v1}, Lcom/transsion/camera/adapter/CameraResults;->setFlash(S)V

    .line 863
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->convertJpegOrientation(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 864
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 865
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v5, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 866
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 867
    invoke-static {v1, v2, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p2

    .line 868
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private setSCurrentPosition()V
    .registers 5

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_device"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "error! curDeviceValue is null! set to default value: 0_1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    const-string v0, "0_1"

    .line 650
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSCurrentPosition curDeviceValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->convert2SupportedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSCurrentPosition convert2SupportedValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mDualDeviceSupportList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 655
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mCurrentPosition:I

    return-void
.end method

.method private showOrHideDualDeviceButton(Z)V
    .registers 2

    .line 949
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_7

    .line 950
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    :cond_7
    return-void
.end method

.method private switchToNextScreenValue()Ljava/lang/String;
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_cam_switch_screen"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getNextIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    return-object v0

    .line 704
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 705
    rem-int/2addr v1, v0

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateMainParametersDevice(Ljava/lang/String;)V
    .registers 6

    .line 546
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMainParametersDevice DualDevice id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 549
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    .line 550
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    array-length v3, v1

    if-le v3, v2, :cond_48

    aget-object v1, v1, v2

    const-string v3, "1"

    .line 551
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    .line 552
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 553
    :cond_46
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    .line 556
    :cond_48
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    if-eqz v1, :cond_63

    array-length v3, v1

    if-le v3, v2, :cond_63

    aget-object v1, v1, v2

    .line 557
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getLongCameraID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 558
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v2, "device_slave"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    goto :goto_6a

    .line 560
    :cond_63
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v2, "device_main"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    .line 562
    :goto_6a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoCameraIds(Ljava/lang/String;)V

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    :goto_76
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_8e

    .line 565
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 567
    :cond_8e
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoCameraNames(Ljava/lang/String;)V

    return-void
.end method

.method private updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 13

    .line 571
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    .line 572
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_UP_DOWN:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    .line 573
    const-string/jumbo v1, "up_down"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    const-string/jumbo v2, "up_small"

    if-eqz p1, :cond_1d

    const/4 p1, 0x2

    .line 574
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    .line 575
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 576
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    goto :goto_35

    .line 578
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    const-string v3, "pip"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 579
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_PIP:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const/4 p1, 0x3

    .line 580
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    .line 581
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x4

    .line 582
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    :cond_35
    :goto_35
    move-object v3, v0

    .line 585
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    xor-int/lit8 v5, p0, 0x1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setSplitStyleAndValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;IZZZ)V

    return-void
.end method


# virtual methods
.method protected configProfile(Landroid/media/CamcorderProfile;)V
    .registers 2

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz p0, :cond_7

    .line 506
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :cond_7
    return-void
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 6

    .line 1287
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    .line 1291
    new-instance v3, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    const/16 v4, 0x8

    .line 1292
    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz v2, :cond_45

    .line 1293
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1294
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    const v1, 0x402ccccd    # 2.7f

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_38

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_38

    .line 1295
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    goto :goto_3d

    .line 1296
    :cond_38
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 1297
    :goto_3d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackMaxZoomRatio()I

    move-result p0

    invoke-virtual {v3, v0, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v3

    :cond_45
    if-eqz v1, :cond_5e

    .line 1298
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 1299
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float p0, p0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 1300
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    invoke-virtual {v3, p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v3

    .line 1302
    :cond_5e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez p0, :cond_77

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz p0, :cond_6f

    goto :goto_77

    .line 1305
    :cond_6f
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    invoke-virtual {v3, p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v3

    .line 1303
    :cond_77
    :goto_77
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    invoke-virtual {v3, p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v3
.end method

.method public getDataFlowType()I
    .registers 1

    .line 325
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result p0

    return p0
.end method

.method protected getFlashKey()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    .line 368
    :cond_f
    const-string p0, "key_flash"

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 335
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    const-string v0, "key_dual_video"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v0, "key_dual_device"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v0, "key_fingerprint_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v0, "key_secondary_screen"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSupportAntiVideo:Z

    if-eqz v0, :cond_2b

    .line 341
    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_2b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModeFeatures, modeFeatures:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    const-string v1, "com.transsion.camera.ui.setting.flash.VideoFlashSettingUIEntry"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "not support luminance djust"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    const-string p0, "nonsupport_luminance_adjust"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 351
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 5

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$bool;->dual_video_support_720:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$bool;->dual_video_support_720_not_support_1080:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 361
    invoke-static {v2, p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->getRelation(ZZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 410
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 411
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    .line 410
    const-string p4, "key_dual_device"

    const-string p5, "0_1"

    invoke-virtual {p1, p4, p5, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    iput p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 413
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getConvertDualDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCameraIdForOpen cameraId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public getRecordingDuration()J
    .registers 3

    .line 801
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz p0, :cond_9

    .line 802
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->getRecordingDuration()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 330
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 23

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    .line 127
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getShutterTypeSelftimerOff()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getShutterTypeSelftimerOff()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 131
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 132
    invoke-interface/range {p2 .. p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 133
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-interface/range {p3 .. p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move-object v3, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    .line 134
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->init()V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->setDualVideoCB(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initDualDeviceSetting()V

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->setSCurrentPosition()V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_device"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getDualDeviceGroupList(Ljava/util/List;)V

    .line 141
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-interface/range {p3 .. p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v8

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    iget v11, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mCurrentPosition:I

    iget-object v12, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v13, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move/from16 v14, p7

    invoke-virtual/range {v4 .. v14}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;ILcom/transsion/camera/app/common/preview/IPreviewOperator;Landroid/view/ViewGroup;Ljava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MySurfaceTextureListener;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setSurfaceTextureListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setVideoRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setVideoPictureCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setVideoMsgCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode-IA;)V

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v4, 0x5

    invoke-interface {v0, v2, v4}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d9

    .line 153
    const-string v0, "0_1"

    :cond_d9
    move-object/from16 v2, p1

    .line 155
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getConvertDualDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v4, :cond_f0

    .line 158
    iput-boolean v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    .line 161
    :cond_f0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    .line 163
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getDualSwitchButtonVisible()Z

    move-result v4

    .line 164
    const-string v5, "key_camera_dual_switch_button_visible"

    if-eqz v4, :cond_10f

    .line 165
    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    const-string v4, "camera_dual_switch_button_show"

    invoke-virtual {v2, v5, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_118

    .line 167
    :cond_10f
    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    const-string v4, "camera_dual_switch_button_hide"

    invoke-virtual {v2, v5, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    :goto_118
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateMainParametersDevice(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init DualDevice id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", support dual device list:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    const-string v0, "key_dual_cam_switch_screen"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 175
    const-string v0, "key_dual_cam_split_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 177
    const-string v0, "key_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 178
    const-string v0, "key_restore_settings"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 179
    const-string v0, "key_transfer_camera_combination"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 180
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    move-object/from16 v0, p3

    .line 181
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 183
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    return-void
.end method

.method protected isFrontID(Ljava/lang/String;)Z
    .registers 3

    .line 538
    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 539
    array-length p1, p0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x1

    .line 542
    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .registers 5

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_182

    if-eq p1, v1, :cond_173

    const/4 v2, 0x3

    if-eq p1, v2, :cond_170

    const/4 v2, 0x6

    if-eq p1, v2, :cond_16c

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_148

    const/16 v2, 0x20

    if-eq p1, v2, :cond_142

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_12e

    const/16 v2, 0x63

    if-eq p1, v2, :cond_10a

    const/16 v2, 0xc9

    if-eq p1, v2, :cond_144

    const/16 v2, 0xf

    if-eq p1, v2, :cond_184

    const/16 v2, 0x10

    if-eq p1, v2, :cond_144

    const/16 v2, 0x17

    if-eq p1, v2, :cond_e0

    const/16 v2, 0x18

    if-eq p1, v2, :cond_a1

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_19e

    const/16 v2, 0x2f

    if-eq p1, v2, :cond_144

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_84

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_7c

    const/16 v2, 0xf9

    if-eq p1, v2, :cond_6f

    const/16 v2, 0xfa

    if-eq p1, v2, :cond_62

    packed-switch p1, :pswitch_data_1be

    packed-switch p1, :pswitch_data_1c8

    goto/16 :goto_1bd

    .line 1086
    :pswitch_50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1082
    :pswitch_56
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1078
    :pswitch_5c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    return-void

    .line 1102
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1103
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    return-void

    .line 1131
    :cond_6f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1132
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    return-void

    .line 1126
    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_1bd

    .line 1127
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->isPopSettingShow(Z)V

    return-void

    .line 1116
    :cond_84
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-nez p1, :cond_8a

    goto/16 :goto_1bd

    .line 1119
    :cond_8a
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->isPopSettingShow(Z)V

    .line 1120
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getItemVisibility()I

    move-result p1

    if-nez p1, :cond_1bd

    .line 1121
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceGroupRootVisibility(I)V

    .line 1122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->hideDualDeviceItem(Z)V

    return-void

    .line 1050
    :cond_a1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz p1, :cond_a8

    .line 1051
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->setSwitchScreenButtonEnable(Z)V

    .line 1053
    :cond_a8
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsCameraSwitching:Z

    .line 1054
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1055
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_be

    .line 1056
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    if-nez p1, :cond_c3

    .line 1057
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    goto :goto_c3

    .line 1060
    :cond_be
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1062
    :cond_c3
    :goto_c3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 1063
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1bd

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupList:Ljava/util/List;

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_1bd

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-nez p1, :cond_1bd

    .line 1066
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    return-void

    .line 1034
    :cond_e0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_102

    .line 1035
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1037
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getDualVideoPreviewUI()Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    move-result-object p1

    if-eqz p1, :cond_f7

    .line 1039
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    .line 1041
    :cond_f7
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_102

    .line 1042
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    .line 1045
    :cond_102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz p0, :cond_1bd

    .line 1046
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->setSwitchScreenButtonEnable(Z)V

    return-void

    .line 1089
    :cond_10a
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_121

    .line 1090
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    if-nez p1, :cond_1bd

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1091
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1092
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    return-void

    .line 1095
    :cond_121
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1096
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1097
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    return-void

    .line 999
    :cond_12e
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    if-eqz p1, :cond_135

    .line 1000
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->showOrHideDualDeviceButton(Z)V

    .line 1002
    :cond_135
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1003
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1004
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    return-void

    .line 1108
    :cond_142
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsActivityPaused:Z

    .line 1113
    :cond_144
    :pswitch_144
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->onFinishVideoRecording(I)V

    return-void

    .line 1137
    :cond_148
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsActivityPaused:Z

    .line 1138
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_1bd

    .line 1139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz p1, :cond_15e

    .line 1140
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->resetRecordingUI()V

    .line 1141
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onHideRecordingUI()V

    .line 1143
    :cond_15e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_1bd

    .line 1144
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getDualVideoPreviewUI()Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    move-result-object p0

    if-eqz p0, :cond_1bd

    .line 1146
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->resetRecordingUI()V

    return-void

    .line 996
    :cond_16c
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->hideDualDeviceItem(Z)V

    return-void

    .line 1152
    :cond_170
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    return-void

    .line 1071
    :cond_173
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsCameraSwitching:Z

    .line 1072
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_1bd

    .line 1073
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    return-void

    .line 1008
    :cond_182
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsCameraSwitching:Z

    .line 1010
    :cond_184
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v2, :cond_197

    .line 1011
    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 1012
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 1013
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceGroupRootVisibility(I)V

    .line 1015
    :cond_197
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_19e

    .line 1016
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 1020
    :cond_19e
    :pswitch_19e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_1bd

    if-eqz p1, :cond_1bd

    .line 1022
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b0

    .line 1023
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    .line 1025
    :cond_1b0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_1bd

    .line 1026
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getDualVideoPreviewUI()Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    move-result-object p0

    if-eqz p0, :cond_1bd

    .line 1028
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_1bd
    :goto_1bd
    return-void

    :pswitch_data_1be
    .packed-switch 0x90
        :pswitch_19e
        :pswitch_144
        :pswitch_5c
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0xc0
        :pswitch_56
        :pswitch_50
        :pswitch_56
        :pswitch_50
    .end packed-switch
.end method

.method public notifyModeforSwitchDevice()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyModeforSwitchDevice"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_cam_split_style"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_dual_cam_switch_screen"

    .line 288
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 287
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 454
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-nez v0, :cond_1e

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mVideoUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 460
    :cond_1e
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_29

    .line 461
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 463
    :cond_29
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 7

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getItemVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 384
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->hideDualDeviceItem(Z)V

    return v1

    .line 388
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 389
    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->onShutterClickedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_21

    return v1

    .line 394
    :cond_21
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 396
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_31

    .line 398
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setRecordingFlag(Z)V

    :cond_31
    return v1

    .line 403
    :cond_32
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 5

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 374
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->onShutterClickedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_1a

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onBackPressedForUI] return because fast shutter and back"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 378
    :cond_1a
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressedForUI()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    .line 512
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onMediaRecorderPreparing()V

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getRecordingOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 4

    const/16 v0, 0x10

    .line 518
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    .line 519
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onMediaRecorderStopped(IZ)V

    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 294
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_a

    .line 296
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onOrientationChanged(I)V

    .line 298
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_11

    .line 299
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setOrientation(I)V

    :cond_11
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 305
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    if-eqz p1, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    return-void

    .line 312
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 313
    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 312
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 315
    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 314
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 316
    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getPreviewMarginInfo(III)Landroid/graphics/Rect;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v1, :cond_47

    .line 318
    invoke-virtual {v1, p1, p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->onScreenFormChanged(IZLandroid/graphics/Rect;)V

    .line 320
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 257
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "key_dual_cam_split_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "key_dual_cam_switch_screen"

    const/16 v3, 0x72

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_20

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 262
    :cond_20
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v5, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 266
    :cond_35
    const-string v0, "key_dual_device"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getConvertDualDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateMainParametersDevice(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_47
    const-string v0, "key_flash"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    if-eqz p1, :cond_8c

    array-length p2, p1

    if-le p2, v4, :cond_8c

    aget-object p1, p1, v4

    const-string p2, "1"

    .line 271
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8c

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "device_both"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_68
    const-string v0, "key_restore_settings"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_8c

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->resetAuxData()V

    return-void

    .line 278
    :cond_78
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p1, p0, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onScreenFormChanged(IZ)V

    :cond_8c
    return-void
.end method

.method public onSettingReady()V
    .registers 5

    .line 669
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initSwitchScreenSetting()V

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_cam_split_style"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string/jumbo v1, "up_down"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 672
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x74

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 674
    :cond_1b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_dual_cam_switch_screen"

    .line 675
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 674
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplitStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", main split value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onSettingReady()V

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 7

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsSaving : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 429
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    return v1

    .line 432
    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->onShutterClickedTime:J

    .line 433
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onShutterClick(II)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 435
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    const/4 p2, 0x0

    if-nez p1, :cond_47

    .line 436
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initSwitchScreenSetting()V

    const/16 p1, 0xf

    .line 438
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    .line 439
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->showOrHideDualDeviceButton(Z)V

    goto :goto_4b

    .line 441
    :cond_47
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 442
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    .line 444
    :goto_4b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_57

    .line 445
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setRecordingFlag(Z)V

    .line 446
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->hideDualDeviceItem(Z)V

    :cond_57
    return v1
.end method

.method public pause()V
    .registers 4

    .line 204
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->pause()V

    .line 205
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    .line 207
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getMainAndSlaveRatio()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowCutRatio(F)V

    .line 208
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->dualVideo(I)V

    .line 210
    :cond_1f
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v0, :cond_28

    .line 212
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->pause()V

    .line 214
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_2f

    .line 215
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->hideInfo()V

    .line 217
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz v0, :cond_36

    .line 218
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->leave()V

    .line 220
    :cond_36
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 3

    .line 188
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->resume()V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz v0, :cond_a

    .line 190
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->stay()V

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    .line 197
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_28

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->resume()V

    :cond_28
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .registers 2

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->showInfo(I)V

    return-void
.end method

.method public startAnimation(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    .line 935
    new-array v0, v0, [F

    fill-array-data v0, :array_26

    const-string v1, "rotation"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 936
    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 937
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 938
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 939
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_26
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method

.method public unInit()V
    .registers 5

    .line 225
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->unInit()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 227
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->unInit()V

    .line 228
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    .line 230
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v0, :cond_16

    .line 231
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsActivityPaused:Z

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->unInit(Z)V

    .line 233
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_1d

    .line 234
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->unInitVideoUI()V

    .line 236
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 240
    const-string v0, "key_dual_cam_switch_screen"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 241
    const-string v0, "key_dual_cam_split_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 242
    const-string v0, "key_dual_device"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 243
    const-string v0, "key_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 244
    const-string v0, "key_restore_settings"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 245
    const-string v0, "key_transfer_camera_combination"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 246
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x75

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x70

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 251
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mThermalThrottleListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->removeThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 252
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIsModeSwitching:Z

    return-void
.end method

.method protected updateFocusMode(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .registers 6

    if-eqz p2, :cond_25

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_25

    .line 474
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eqz v1, :cond_1a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    goto :goto_1a

    .line 478
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateScreenWidth(I)V

    goto :goto_25

    .line 476
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateScreenWidth(I)V

    :cond_25
    :goto_25
    if-eqz p1, :cond_63

    if-nez p2, :cond_2a

    goto :goto_63

    .line 486
    :cond_2a
    invoke-virtual {p1, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 487
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreviewSize width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 420
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_9

    .line 422
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->doActionWithStorageUnmounted()V

    :cond_9
    return-void
.end method
