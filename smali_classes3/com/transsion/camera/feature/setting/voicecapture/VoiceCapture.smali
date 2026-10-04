.class public Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;
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

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VOICE_CAPTURE:Ljava/lang/String; = "capture"

.field private static final VOICE_CHECK_INTERVAL_TIME:I = 0x1f4

.field private static final VOICE_CHEESE:Ljava/lang/String; = "cheese"

.field private static final VOICE_SHOOT:Ljava/lang/String; = "shoot"


# instance fields
.field private mAllowVoiceCapture:Z

.field private mCloseByFlashSnapLite:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/String;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsModeSupport:Z

.field private mIsTakePicture:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRecognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

.field private mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

.field private mResumed:Z

.field private mSupportCapture:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsTakePicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mSupportCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mAllowVoiceCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsTakePicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mResumed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mSupportCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRecognitionResult(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->handleRecognitionResult(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitRecognitionPipeline(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->initRecognitionPipeline()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VoiceCapture"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mSupportCapture:Z

    .line 98
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mResumed:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsTakePicture:Z

    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mAllowVoiceCapture:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mCloseByFlashSnapLite:Z

    .line 292
    new-instance v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$2;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 331
    new-instance v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$3;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private clearRemoteCaptureVoiceState()V
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "remote_capture_state_voice"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private handleRecognitionResult(Ljava/lang/String;)V
    .registers 4

    .line 549
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mResumed:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mSupportCapture:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsTakePicture:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mAllowVoiceCapture:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mCloseByFlashSnapLite:Z

    if-eqz v0, :cond_19

    goto :goto_5a

    .line 555
    :cond_19
    const-string v0, "capture"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 556
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_4b

    .line 557
    :cond_2a
    const-string v0, "shoot"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 558
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_4b

    .line 559
    :cond_3b
    const-string v0, "cheese"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 560
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    .line 562
    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_voice_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v0, "voice_capture_state"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 550
    :cond_5a
    :goto_5a
    sget-object p1, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore result: mResumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mSupportCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsTakePicture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsTakePicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowVoiceCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mAllowVoiceCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCloseByFlashSnapLite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mCloseByFlashSnapLite:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initRecognitionPipeline()V
    .registers 6

    .line 514
    const-string v0, "ENGLISH"

    sget-object v1, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "initRecognitionPipeline start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 516
    const-string p0, "Recognition pipeline already initialized and running"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 520
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;->createDefault()Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;

    move-result-object v2

    .line 522
    new-instance v3, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;

    invoke-direct {v3}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    .line 523
    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->setContext(Landroid/content/Context;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;

    move-result-object v3

    .line 524
    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->setInitLanguage(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;

    move-result-object v3

    .line 525
    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->setSessionLanguage(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer$Builder;->build()Lcom/transsion/camera/feature/setting/voicecapture/NexusFlowAudioRecognizer;

    move-result-object v0

    .line 527
    new-instance v3, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;

    invoke-direct {v3}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;-><init>()V

    .line 528
    invoke-virtual {v3, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->setRecordConfig(Lcom/transsion/camera/featurelibs/voicerecorder/AudioRecordConfig;)Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;

    move-result-object v2

    .line 529
    invoke-virtual {v2, v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->setRecognizer(Lcom/transsion/camera/featurelibs/voicerecorder/IAudioRecognizer;)Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    .line 530
    invoke-virtual {v0, v2}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->setRecognitionCallback(Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;)Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline$Builder;->build()Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    .line 532
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->start()Z

    move-result v0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRecognitionPipeline result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception v0

    .line 535
    sget-object v1, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "initRecognitionPipeline error"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 536
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    return-void
.end method

.method private onAICaptureChanged(Ljava/lang/String;)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 356
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AI_VOICE_TAKE_PHOTOS_STATUS"

    if-eqz v0, :cond_1f

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29

    .line 359
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    :goto_29
    sget-object p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAICaptureChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_40
    sget-object p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onAICaptureChanged: no permission"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private releaseRecognitionPipeline()V
    .registers 3

    .line 541
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseRecognitionPipeline"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    if-eqz v0, :cond_11

    .line 543
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->stop()V

    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    :cond_11
    return-void
.end method

.method private syncRemoteCaptureFragment()V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 427
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "true"

    goto :goto_c

    :cond_a
    const-string v1, "false"

    :goto_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 426
    const-string v3, "remote_capture_state_voice"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

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

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 192
    const-string p0, "key_voice_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 187
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

    .line 311
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

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 110
    sget-object p2, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "init"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    .line 112
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo p2, "voice_detection"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 114
    new-instance p2, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance p1, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$1;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionCallback:Lcom/transsion/camera/featurelibs/voicerecorder/IRecognitionCallback;

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_5e

    .line 138
    const-string p2, "key_remote_capture"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_voice_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string/jumbo p2, "voice_ai_capture_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_shutter_guide_layout_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_ui_state_action"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_touch_capture_status"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_5e
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

    .line 173
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 177
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_25

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    .line 181
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 182
    sget-object p1, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initializeValue] -- mDefaultValue:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 247
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->clearRemoteCaptureVoiceState()V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->releaseRecognitionPipeline()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 254
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 237
    sget-object p2, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeOpened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->syncRemoteCaptureFragment()V

    .line 240
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    if-eqz p1, :cond_41

    const-string p1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_41
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 368
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_180

    goto :goto_6d

    :sswitch_2b
    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_6d

    :cond_34
    const/4 v3, 0x5

    goto :goto_6d

    :sswitch_36
    const-string v1, "key_remote_capture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_6d

    :cond_3f
    const/4 v3, 0x4

    goto :goto_6d

    :sswitch_41
    const-string v1, "key_voice_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_6d

    :cond_4a
    const/4 v3, 0x3

    goto :goto_6d

    :sswitch_4c
    const-string/jumbo v1, "voice_ai_capture_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_6d

    :cond_56
    const/4 v3, 0x2

    goto :goto_6d

    :sswitch_58
    const-string v1, "key_touch_capture_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_6d

    :cond_61
    const/4 v3, 0x1

    goto :goto_6d

    :sswitch_63
    const-string v1, "key_ui_state_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v3, v2

    :goto_6d
    const/16 p1, 0x69

    packed-switch v3, :pswitch_data_19a

    goto/16 :goto_16f

    .line 398
    :pswitch_74
    const-string p1, "end"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16f

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->releaseRecognitionPipeline()V

    return-void

    .line 390
    :pswitch_8d
    const-string p1, "remote_capture_state_voice"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16f

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " mDefaultValue = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " voiceCaptureValue = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 381
    :pswitch_d5
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo v0, "voice_normal_state"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 382
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 384
    :cond_f1
    const-string/jumbo v0, "voice_invalid_state"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16f

    .line 385
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 371
    :pswitch_10b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_16f

    .line 372
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_123

    .line 374
    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 376
    :cond_123
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 415
    :pswitch_129
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsTakePicture:Z

    if-eqz v0, :cond_16f

    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo v0, "touch_capture_cancel"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16f

    .line 416
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 404
    :pswitch_149
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo p1, "value_state_process"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x6b

    if-nez p1, :cond_170

    const-string p1, "shutter_guide_layout_show"

    .line 405
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15f

    goto :goto_170

    .line 410
    :cond_15f
    const-string/jumbo p1, "value_state_idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16f

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16f
    :goto_16f
    return-void

    .line 406
    :cond_170
    :goto_170
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_17d

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    :cond_17d
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mAllowVoiceCapture:Z

    return-void

    :sswitch_data_180
    .sparse-switch
        -0x7b365c71 -> :sswitch_63
        -0x5babce15 -> :sswitch_58
        0x2cbe25ee -> :sswitch_4c
        0x52f54164 -> :sswitch_41
        0x5465262d -> :sswitch_36
        0x60ee855f -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_149
        :pswitch_129
        :pswitch_10b
        :pswitch_d5
        :pswitch_8d
        :pswitch_74
    .end packed-switch
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 213
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCaptureRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 220
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->initRecognitionPipeline()V

    goto :goto_8e

    .line 224
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->releaseRecognitionPipeline()V

    .line 229
    :goto_8e
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->onAICaptureChanged(Ljava/lang/String;)V

    :cond_9a
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

    .line 507
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 508
    const-string p3, "key_best_moment_detect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 509
    const-string p1, "off"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mCloseByFlashSnapLite:Z

    :cond_36
    return-void
.end method

.method public pause()V
    .registers 4

    .line 274
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 275
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    const-string v1, "on"

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->releaseRecognitionPipeline()V

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mAllowVoiceCapture:Z

    .line 284
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->clearRemoteCaptureVoiceState()V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 321
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 322
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->onAICaptureChanged(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->syncRemoteCaptureFragment()V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 258
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->syncRemoteCaptureFragment()V

    .line 260
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    if-nez v0, :cond_32

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->initRecognitionPipeline()V

    goto :goto_3d

    .line 265
    :cond_32
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mRecognitionPipeline:Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/voicerecorder/VoiceRecognitionPipeline;->start()Z

    .line 269
    :cond_3d
    :goto_3d
    sget-object p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 440
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

    .line 202
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    if-eqz p1, :cond_e

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 206
    :cond_e
    sget-object v0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " turnOnSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 150
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 151
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mIsModeSupport:Z

    if-eqz v0, :cond_1e

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    .line 155
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 157
    :cond_29
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->releaseRecognitionPipeline()V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_60

    .line 159
    const-string v1, "key_remote_capture"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_voice_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string/jumbo v1, "voice_ai_capture_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_guide_layout_action"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_ui_state_action"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_touch_capture_status"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 167
    :cond_60
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->clearRemoteCaptureVoiceState()V

    .line 168
    sget-object p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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
