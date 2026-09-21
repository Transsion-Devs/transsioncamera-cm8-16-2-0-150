.class public Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;
    }
.end annotation


# static fields
.field private static final MSG_ALLOW_VOICE_CAPTURE:I = 0x6b

.field private static final MSG_CHECK_VOICE:I = 0x66

.field private static final MSG_INIT_VOICE:I = 0x64

.field private static final MSG_PAUSE_VOICE:I = 0x68

.field private static final MSG_RESUME_VOICE:I = 0x67

.field private static final MSG_TAKE_PICTURE:I = 0x69

.field private static final MSG_TRIGGER_TAKE_PICTURE:I = 0x6a

.field private static final MSG_UNINIT_VOICE:I = 0x65

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VOICE_CAPTURE:Ljava/lang/String; = "capture"

.field private static final VOICE_CHECK_INTERVAL_TIME:I = 0x1f4

.field private static final VOICE_CHEESE:Ljava/lang/String; = "cheese"

.field private static final VOICE_SHOOT:Ljava/lang/String; = "shoot"

.field private static mInit:Z


# instance fields
.field private mAllowVoiceCapture:Z

.field private mCloseByFlashSnapLite:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/String;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsModeSupport:Z

.field private mIsModeSupportOriginal:Z

.field private mIsPreview:Z

.field private mIsTakePicture:Z

.field private mPaused:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRestored:Z

.field private mResumed:Z

.field mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mSupportCapture:Z

.field private final mTvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;


# direct methods
.method public static synthetic $r8$lambda$dLpKeOFAGU4FCDLmWqd1D66T08E(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/media/Image;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mAllowVoiceCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mCloseByFlashSnapLite:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupportOriginal(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupportOriginal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestored(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mRestored:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSupportCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTvcResultListener(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/voicecamera/sdk/TVCResultListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mTvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mAllowVoiceCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsModeSupport(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPreview(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsPreview:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mResumed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSupportCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncRemoteCaptureFragment(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmInit()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmInit(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 76
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VoiceDetection"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 90
    sput-boolean v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupportOriginal:Z

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSupportCapture:Z

    .line 97
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mResumed:Z

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mRestored:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mAllowVoiceCapture:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mCloseByFlashSnapLite:Z

    .line 106
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 276
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 315
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 528
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mTvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 5

    .line 107
    const-string p1, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPaused:Z

    if-eqz p1, :cond_15

    goto :goto_25

    .line 110
    :cond_15
    sget-boolean p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    if-nez p1, :cond_25

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_25
    :goto_25
    return-void
.end method

.method private onAICaptureChanged(Ljava/lang/String;)V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 346
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AI_VOICE_TAKE_PHOTOS_STATUS"

    if-eqz v0, :cond_1f

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29

    .line 349
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    :goto_29
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAICaptureChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 353
    :cond_40
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onAICaptureChanged: no permission"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private syncRemoteCaptureFragment()V
    .registers 5

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "true"

    goto :goto_c

    :cond_a
    const-string v1, "false"

    :goto_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "remote_capture_state_voice"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 447
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsPreview:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz v0, :cond_1a

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    .line 450
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, -0x1

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

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 180
    const-string p0, "key_voice_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 175
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

    .line 295
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
    .registers 4

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 120
    sget-object p2, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "init"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    .line 122
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo p2, "voice_detection"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 124
    new-instance p2, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_57

    .line 126
    const-string p2, "key_remote_capture"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_voice_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string/jumbo p2, "voice_ai_capture_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_shutter_guide_layout_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_ui_state_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_touch_capture_status"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_57
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    .line 159
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 163
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_25

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    .line 167
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V

    .line 170
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initializeValue] -- mDefaultValue:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 234
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 235
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 238
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 240
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 224
    sget-object p2, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeOpened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupportOriginal:Z

    .line 226
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz p1, :cond_3e

    .line 227
    const-string p1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3e
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 358
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_17c

    goto :goto_6d

    :sswitch_2b
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_6d

    :cond_34
    const/4 v2, 0x5

    goto :goto_6d

    :sswitch_36
    const-string v0, "key_remote_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_6d

    :cond_3f
    const/4 v2, 0x4

    goto :goto_6d

    :sswitch_41
    const-string v0, "key_voice_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_6d

    :cond_4a
    const/4 v2, 0x3

    goto :goto_6d

    :sswitch_4c
    const-string/jumbo v0, "voice_ai_capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_6d

    :cond_56
    const/4 v2, 0x2

    goto :goto_6d

    :sswitch_58
    const-string v0, "key_touch_capture_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_6d

    :cond_61
    const/4 v2, 0x1

    goto :goto_6d

    :sswitch_63
    const-string v0, "key_ui_state_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, v1

    :goto_6d
    const-string p1, "on"

    const-string v0, "off"

    const/16 v3, 0x69

    packed-switch v2, :pswitch_data_196

    goto/16 :goto_16a

    .line 396
    :pswitch_78
    const-string p1, "end"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 399
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    return-void

    .line 382
    :pswitch_91
    check-cast p2, Ljava/lang/CharSequence;

    const-string v2, "remote_capture_state_voice"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->onValueChanged(Ljava/lang/String;)V

    .line 385
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16a

    .line 387
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    return-void

    .line 389
    :cond_b8
    const-string v1, "remote_capture_state_dump_voice"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16a

    .line 390
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_dump_voice"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    return-void

    .line 373
    :pswitch_d4
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "voice_normal_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 376
    :cond_f0
    const-string/jumbo p1, "voice_invalid_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 361
    :pswitch_10a
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16a

    .line 363
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_120

    .line 365
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 367
    :cond_120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 414
    :pswitch_124
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    if-eqz p1, :cond_16a

    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "touch_capture_cancel"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 403
    :pswitch_144
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "value_state_process"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x6b

    if-nez p1, :cond_16b

    const-string p1, "shutter_guide_layout_show"

    .line 404
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15a

    goto :goto_16b

    .line 409
    :cond_15a
    const-string/jumbo p1, "value_state_idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16a
    :goto_16a
    return-void

    .line 405
    :cond_16b
    :goto_16b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_178

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    :cond_178
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mAllowVoiceCapture:Z

    return-void

    nop

    :sswitch_data_17c
    .sparse-switch
        -0x7b365c71 -> :sswitch_63
        -0x5babce15 -> :sswitch_58
        0x2cbe25ee -> :sswitch_4c
        0x52f54164 -> :sswitch_41
        0x5465262d -> :sswitch_36
        0x60ee855f -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_144
        :pswitch_124
        :pswitch_10a
        :pswitch_d4
        :pswitch_91
        :pswitch_78
    .end packed-switch
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 201
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 203
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 208
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_78

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_93

    .line 212
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    :goto_93
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->onAICaptureChanged(Ljava/lang/String;)V

    :cond_9f
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    .line 566
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    const-string p3, "key_best_moment_detect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 568
    const-string p1, "off"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mCloseByFlashSnapLite:Z

    :cond_36
    return-void
.end method

.method public pause()V
    .registers 4

    .line 257
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 258
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    const-string v1, "on"

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mAllowVoiceCapture:Z

    .line 266
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPaused:Z

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 305
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mRestored:Z

    .line 307
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->onAICaptureChanged(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 244
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPaused:Z

    .line 246
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_2a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupportOriginal:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V

    .line 252
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 434
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

    .line 190
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    if-eqz p1, :cond_e

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 194
    :cond_e
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " turnOnSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 138
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 139
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz v0, :cond_1e

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    .line 143
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 145
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5d

    .line 146
    const-string v1, "key_remote_capture"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_voice_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string/jumbo v1, "voice_ai_capture_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_guide_layout_action"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_ui_state_action"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_touch_capture_status"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 154
    :cond_5d
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
