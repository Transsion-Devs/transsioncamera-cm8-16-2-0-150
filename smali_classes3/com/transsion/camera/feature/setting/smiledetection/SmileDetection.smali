.class public Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;
    }
.end annotation


# static fields
.field private static final MSG_ALLOW_SMILE_CAPTURE:I = 0x6b

.field private static final MSG_CHECK_SMILE:I = 0x67

.field private static final MSG_DETECT_SMILE:I = 0x66

.field private static final MSG_INIT_SMILE:I = 0x64

.field private static final MSG_PAUSE_SMILE:I = 0x69

.field private static final MSG_RESUME_SMILE:I = 0x68

.field private static final MSG_TAKE_PICTURE:I = 0x6a

.field private static final MSG_UNINIT_SMILE:I = 0x65

.field private static final SMILE_CHECK_INTERVAL_TIME:I = 0x7d0

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mInit:Z


# instance fields
.field private mAllowSmileCapture:Z

.field private mCloseByFlashSnapLite:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/String;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreFrame:I

.field private mIsModeSupport:Z

.field private mIsModeSupportOriginal:Z

.field private mIsPause:Z

.field private mIsTakePicture:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRestored:Z

.field private mResumed:Z

.field private mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mSmileAlgorithm:Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

.field private mSupportCapture:Z


# direct methods
.method public static synthetic $r8$lambda$yblkHMvmNBSHi-sB9ddQjIPvSxo(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/media/Image;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAllowSmileCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAllowSmileCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mCloseByFlashSnapLite:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupportOriginal(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupportOriginal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestored(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mRestored:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileAlgorithm:Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowSmileCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAllowSmileCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIgnoreFrame:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsModeSupport(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResumed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncRemoteCaptureFragment(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmInit()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mInit:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmInit(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mInit:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmileDetection"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupportOriginal:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mResumed:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsPause:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mRestored:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePicture:Z

    const/4 v2, 0x0

    .line 79
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDefaultValue:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAllowSmileCapture:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mCloseByFlashSnapLite:Z

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 254
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 310
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .registers 6

    .line 104
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 110
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 6

    .line 84
    const-string p4, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_40

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    if-eqz p4, :cond_40

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsPause:Z

    if-eqz p4, :cond_15

    goto :goto_40

    .line 87
    :cond_15
    sget-boolean p4, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mInit:Z

    if-nez p4, :cond_26

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 92
    :cond_26
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSupportCapture:Z

    if-eqz p4, :cond_39

    .line 93
    iget p4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIgnoreFrame:I

    const/16 v0, 0xa

    if-le p4, v0, :cond_34

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->detectorImage(Landroid/media/Image;II)V

    return-void

    :cond_34
    add-int/lit8 p4, p4, 0x1

    .line 96
    iput p4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIgnoreFrame:I

    return-void

    .line 99
    :cond_39
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSupportCapture = false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private syncRemoteCaptureFragment()V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "true"

    goto :goto_c

    :cond_a
    const-string v1, "false"

    :goto_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "remote_capture_state_smile"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 408
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    if-eqz v0, :cond_16

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    .line 411
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 210
    const-string p0, "key_smile_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 205
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mContext:Landroid/content/Context;

    .line 119
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "smiledetection"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 121
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance p3, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mSmileAlgorithm:Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_47

    .line 124
    const-string p2, "key_smile_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_remote_capture"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_shutter_guide_layout_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_ui_state_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_touch_capture_status"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_47
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDefaultValue:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_43

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDefaultValue:Ljava/lang/String;

    .line 190
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->syncRemoteCaptureFragment()V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDefaultValue:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 383
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 242
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    .line 243
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->syncRemoteCaptureFragment()V

    .line 244
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    .line 247
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupportOriginal:Z

    .line 234
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    if-eqz p1, :cond_26

    .line 235
    const-string p1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x68

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_26
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 337
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_110

    goto :goto_56

    :sswitch_2b
    const-string v0, "key_remote_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_56

    :cond_34
    const/4 v2, 0x3

    goto :goto_56

    :sswitch_36
    const-string v0, "key_smile_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_56

    :cond_3f
    const/4 v2, 0x2

    goto :goto_56

    :sswitch_41
    const-string v0, "key_touch_capture_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_56

    :cond_4a
    const/4 v2, 0x1

    goto :goto_56

    :sswitch_4c
    const-string v0, "key_ui_state_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_56

    :cond_55
    move v2, v1

    :goto_56
    const-wide/16 v3, 0x7d0

    const/16 p1, 0x6a

    packed-switch v2, :pswitch_data_122

    goto/16 :goto_ff

    .line 355
    :pswitch_5f
    const-string p1, "remote_capture_state_smile"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ff

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 340
    :pswitch_7d
    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "smile_normal_state"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 341
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 342
    iput p1, p2, Landroid/os/Message;->what:I

    .line 343
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 346
    :cond_9d
    const-string v0, "smile_invalid_state"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_ff

    .line 347
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 348
    iput p1, p2, Landroid/os/Message;->what:I

    .line 349
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 371
    :pswitch_bb
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsTakePicture:Z

    if-eqz v0, :cond_ff

    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo v0, "touch_capture_cancel"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_ff

    .line 372
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 360
    :pswitch_db
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "value_state_process"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x6b

    if-nez p1, :cond_100

    const-string p1, "shutter_guide_layout_show"

    .line 361
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f1

    goto :goto_100

    .line 366
    :cond_f1
    const-string/jumbo p1, "value_state_idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ff

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_ff
    :goto_ff
    return-void

    .line 362
    :cond_100
    :goto_100
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    :cond_10d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAllowSmileCapture:Z

    return-void

    :sswitch_data_110
    .sparse-switch
        -0x7b365c71 -> :sswitch_4c
        -0x5babce15 -> :sswitch_41
        0x529edaba -> :sswitch_36
        0x5465262d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_db
        :pswitch_bb
        :pswitch_7d
        :pswitch_5f
    .end packed-switch
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 275
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 283
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_72

    .line 287
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    :goto_72
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_7b
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 503
    const-string p3, "key_best_moment_detect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 504
    const-string p1, "off"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mCloseByFlashSnapLite:Z

    :cond_10
    return-void
.end method

.method public pause()V
    .registers 4

    .line 220
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsPause:Z

    .line 222
    const-string v1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 223
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    :cond_19
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mAllowSmileCapture:Z

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 4

    .line 197
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_14
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 296
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mRestored:Z

    return-void
.end method

.method public resume()V
    .registers 5

    .line 134
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsPause:Z

    .line 136
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_28
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupportOriginal:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mIsModeSupport:Z

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 395
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public turnOnSwitch(Z)V
    .registers 5

    .line 163
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    if-eqz p1, :cond_e

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 167
    :cond_e
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " turnOnSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x67

    .line 169
    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_42

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 175
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 146
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/16 v1, 0x65

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 151
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3a

    .line 152
    const-string v1, "key_smile_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_remote_capture"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_guide_layout_action"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_ui_state_action"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_touch_capture_status"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 158
    :cond_3a
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "uninit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
