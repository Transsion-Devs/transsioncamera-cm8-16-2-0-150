.class public final Lcom/transsion/camera/app/intent/IntentParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideoDefaultOn:Z

.field public mAppointCameraId:Z

.field public mBokeh:Z

.field public mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field public mDefaultCameraInCurrentFace:Ljava/lang/String;

.field public mDelayTime:I

.field public mFlipBokeh:Z

.field public mFromIntent:Z

.field public mFromNegativeScreen:Z

.field public mGoogleAssistantIntent:Z

.field public mIsFromDocument:Z

.field public mLaunchSource:Ljava/lang/String;

.field public mOpenOnly:Z

.field public mPhotoIntent:Z

.field private mProjectSupportSat:Z

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field public mSpecifyAIGC:Z

.field public mSpecifyASD:Z

.field public mSpecifyASDBackWideSuperDefinition:Z

.field public mSpecifyASDFrontWideSuperDefinition:Z

.field public mSpecifyBokeh:Z

.field public mSpecifyBokehOff:Z

.field public mSpecifyFaceBeauty:Z

.field public mSpecifyFlashSnap:Z

.field public mSpecifyFrontASD:Z

.field public mSpecifyFrontFunVideo:Z

.field public mSpecifyFrontFunVideoOff:Z

.field public mSpecifyFrontSmartFocus:Z

.field public mSpecifyFunVideo:Z

.field public mSpecifyFunVideoOff:Z

.field public mSpecifyHDR:Z

.field public mSpecifyHDROff:Z

.field public mSpecifyMacro:Z

.field public mSpecifyMode:Z

.field public mSpecifyMultiFacebeauty:Z

.field public mSpecifyMultiFacebeautyOff:Z

.field public mSpecifyPMaster:Z

.field public mSpecifyPortraitMode:Z

.field public mSpecifySettingVideoPortrait:Z

.field public mSpecifySlimBody:Z

.field public mSpecifySuperDefinitionMode:Z

.field public mSpecifySuperDefinitionOff:Z

.field public mSpecifySuperDefinitionOn:Z

.field public mSpecifyTele:Z

.field public mSpecifyVideoBack4KAnti:Z

.field public mSpecifyVideoBackHighFpsAnti:Z

.field public mSpecifyVideoEnhanceBack4K:Z

.field public mSpecifyVlog:Z

.field public mSpecifyWideAngle:Z

.field public mVideoIntent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IntentParser"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 8

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    .line 117
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    .line 122
    iput-object p4, p0, Lcom/transsion/camera/app/intent/IntentParser;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 123
    iput-object p5, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 124
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseSATSupport()Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 125
    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    goto :goto_27

    .line 127
    :cond_1b
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/transsion/camera/R$bool;->project_support_sat:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    .line 129
    :goto_27
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$bool;->antivideo_default_on:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseIntent(Landroid/content/Intent;)V

    .line 131
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/intent/IntentParser;->parseMetaData(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;)V
    .registers 7

    .line 136
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 137
    invoke-direct {p0, p5, p6}, Lcom/transsion/camera/app/intent/IntentParser;->handleFlipScreenRelay(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;)V

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 419
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p1

    .line 423
    :cond_f
    const-string p0, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p0, "1"

    .line 424
    :cond_19
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    return-object p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDelayTimeFromIntent(Landroid/content/Intent;)I
    .registers 4

    .line 571
    const-string p0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    .line 573
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 570
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getNFCSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    .line 433
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/nfc/Tag;

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    .line 435
    invoke-static {p0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 438
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 440
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    const/4 v1, 0x0

    .line 441
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 445
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception p0

    .line 447
    sget-object v1, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "ndef close error"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_38
    return-object v0
.end method

.method public static getShortcutSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 457
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    .line 459
    const-string/jumbo v0, "video_mode"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 460
    const-string p0, "VideoMode"

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSpecifyPMasterBlurCameraId()Ljava/lang/String;
    .registers 3

    .line 397
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p0

    .line 398
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 399
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "invalid param, boken is not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 404
    :cond_17
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    return-object v0

    :cond_30
    return-object p0
.end method

.method private handleFlipScreenRelay(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;)V
    .registers 6

    if-eqz p1, :cond_94

    if-nez p2, :cond_6

    goto/16 :goto_94

    .line 144
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->flipToUnFlip()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 145
    const-string p1, "1"

    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto/16 :goto_89

    .line 146
    :cond_12
    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->unFlipToFlip()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/DVUtils;->isRequestEnterDV(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_25

    .line 148
    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_89

    .line 149
    :cond_25
    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->getLastModeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 150
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->pMasterStereoOn(Lcom/transsion/camera/app/common/storage/DataStore;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 151
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 153
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 155
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_58

    .line 157
    :cond_56
    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :goto_58
    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFlipBokeh:Z

    goto :goto_89

    .line 162
    :cond_5c
    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_89

    .line 164
    :cond_5f
    const-string p1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->getLastModeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 165
    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_89

    .line 166
    :cond_6e
    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->getLastModeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 167
    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_89

    .line 168
    :cond_7d
    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->getLastModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 169
    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 172
    :cond_89
    :goto_89
    invoke-virtual {p2}, Lcom/transsion/camera/manager/FlipScreenRelay;->flipToUnFlip()Z

    move-result p1

    if-eqz p1, :cond_94

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/DVUtils;->markHasLaunchDVMode(Landroid/content/Context;)V

    :cond_94
    :goto_94
    return-void
.end method

.method private isEnterIntentMode(Landroid/content/Intent;)Z
    .registers 2

    .line 543
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 544
    const-string p1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 545
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 546
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private isFromIntent(Landroid/content/Intent;)Z
    .registers 2

    .line 531
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 532
    const-string p1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 533
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 534
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "android.media.action.FANS_IMAGE_CAPTURE"

    .line 535
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method private isFromNegativeScreen(Landroid/content/Intent;)Z
    .registers 2

    .line 539
    const-string p0, "From"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NegativeScreen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isGoogleAssistantIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 550
    const-string p0, "android.intent.extra.REFERRER_NAME"

    .line 551
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    const-string p0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    return v0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private isOpenOnly(Landroid/content/Intent;)Z
    .registers 3

    .line 578
    const-string p0, "android.intent.extra.CAMERA_OPEN_ONLY"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 579
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    return v0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private isPhotoIntent(Landroid/content/Intent;)Z
    .registers 2

    .line 564
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 565
    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 566
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isVideoIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 557
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 559
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    const-string p0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 560
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private pMasterStereoOn(Lcom/transsion/camera/app/common/storage/DataStore;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 182
    :cond_4
    invoke-static {}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v2, "key_mu_stereo"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "f0.0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const/4 p0, 0x1

    :cond_21
    return p0
.end method

.method private parseCameraID(Landroid/content/Intent;)V
    .registers 13

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->video_mode_support_sat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 259
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useFrontCamera(Landroid/content/Intent;)Z

    move-result v1

    .line 260
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCamera(Landroid/content/Intent;)Z

    move-result v2

    .line 261
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v6

    .line 266
    sget-object v7, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCameraID isFrontCamera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    const-string v8, "1"

    const/4 v9, 0x1

    const-string v10, "0"

    if-eqz v1, :cond_c4

    .line 268
    iput-boolean v9, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    .line 269
    iput-object v8, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 270
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 272
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 273
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0x168

    if-gt v0, v1, :cond_a4

    .line 275
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIntent, folderFrontCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 279
    :cond_a4
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 280
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto/16 :goto_194

    .line 282
    :cond_b0
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->screenFlip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 284
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto/16 :goto_194

    :cond_c4
    if-eqz v2, :cond_127

    .line 288
    iput-boolean v9, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz v3, :cond_109

    .line 289
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    if-eqz v1, :cond_109

    .line 290
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-eqz v1, :cond_d6

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAntiVideoDefaultOn:Z

    if-nez v1, :cond_106

    .line 291
    :cond_d6
    invoke-direct {p0}, Lcom/transsion/camera/app/intent/IntentParser;->screenPocket()Z

    move-result v1

    if-nez v1, :cond_106

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVlog:Z

    if-nez v1, :cond_106

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoEnhanceBack4K:Z

    if-nez v1, :cond_106

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBack4KAnti:Z

    if-eqz v1, :cond_ea

    if-eqz v0, :cond_106

    :cond_ea
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBackHighFpsAnti:Z

    if-eqz v1, :cond_f0

    if-eqz v0, :cond_106

    :cond_f0
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFlashSnap:Z

    if-eqz v0, :cond_fe

    .line 296
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result v0

    if-eqz v0, :cond_106

    :cond_fe
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPMaster:Z

    if-eqz v0, :cond_103

    goto :goto_106

    .line 300
    :cond_103
    iput-object v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_10b

    .line 298
    :cond_106
    :goto_106
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_10b

    .line 303
    :cond_109
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 305
    :goto_10b
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPMaster:Z

    if-eqz v0, :cond_194

    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/intent/IntentParser;->pMasterStereoOn(Lcom/transsion/camera/app/common/storage/DataStore;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/app/intent/IntentParser;->getSpecifyPMasterBlurCameraId()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_194

    .line 308
    iput-boolean v9, p0, Lcom/transsion/camera/app/intent/IntentParser;->mBokeh:Z

    .line 309
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto/16 :goto_194

    :cond_127
    if-eqz v3, :cond_16a

    .line 313
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isEnterIntentMode(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_16a

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    if-eqz v1, :cond_16a

    .line 314
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-nez v1, :cond_167

    .line 315
    invoke-direct {p0}, Lcom/transsion/camera/app/intent/IntentParser;->screenPocket()Z

    move-result v1

    if-nez v1, :cond_167

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVlog:Z

    if-nez v1, :cond_167

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoEnhanceBack4K:Z

    if-nez v1, :cond_167

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBack4KAnti:Z

    if-eqz v1, :cond_14b

    if-eqz v0, :cond_167

    :cond_14b
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBackHighFpsAnti:Z

    if-eqz v1, :cond_151

    if-eqz v0, :cond_167

    :cond_151
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFlashSnap:Z

    if-eqz v0, :cond_15f

    .line 320
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result v0

    if-eqz v0, :cond_167

    :cond_15f
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPMaster:Z

    if-eqz v0, :cond_164

    goto :goto_167

    .line 324
    :cond_164
    iput-object v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_16c

    .line 322
    :cond_167
    :goto_167
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_16c

    .line 327
    :cond_16a
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 329
    :goto_16c
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDBackWideSuperDefinition:Z

    if-eqz v0, :cond_173

    .line 330
    iput-object v4, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_194

    .line 331
    :cond_173
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDFrontWideSuperDefinition:Z

    if-eqz v0, :cond_17a

    .line 332
    iput-object v5, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_194

    .line 333
    :cond_17a
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPMaster:Z

    if-eqz v0, :cond_194

    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/intent/IntentParser;->pMasterStereoOn(Lcom/transsion/camera/app/common/storage/DataStore;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/app/intent/IntentParser;->getSpecifyPMasterBlurCameraId()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_194

    .line 336
    iput-boolean v9, p0, Lcom/transsion/camera/app/intent/IntentParser;->mBokeh:Z

    .line 337
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 341
    :cond_194
    :goto_194
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/intent/IntentParser;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 343
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    if-nez v0, :cond_1a6

    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokehOff:Z

    if-eqz v0, :cond_1a5

    goto :goto_1a6

    :cond_1a5
    const/4 v9, 0x0

    :cond_1a6
    :goto_1a6
    if-eqz v9, :cond_1c0

    if-eqz v6, :cond_1be

    .line 346
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1bb

    .line 348
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_1c0

    .line 350
    :cond_1bb
    iput-object v6, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_1c0

    .line 353
    :cond_1be
    iput-object v8, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 357
    :cond_1c0
    :goto_1c0
    const-string v0, "com.android.systemui.camera_launch_source"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_242

    .line 360
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultStartStreetPhoto:Z

    const-string/jumbo v0, "value_start_flash_snap"

    const-string/jumbo v1, "value_start_street_photo"

    const-string v2, "key_one_click_efficiency"

    if-eqz p1, :cond_1ed

    .line 361
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsStreetSnapModeSupported:Z

    if-eqz p1, :cond_1ed

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20f

    .line 363
    :cond_1ed
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result p1

    if-eqz p1, :cond_202

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 365
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-virtual {p1, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20f

    .line 367
    :cond_202
    iget-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v4, "value_start_aicam"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    :goto_20f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_ONE_CLICK_EFFICIENCY :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 371
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_242

    .line 372
    :cond_22c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_242

    .line 373
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    if-eqz v3, :cond_242

    .line 374
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result p1

    if-eqz p1, :cond_242

    .line 375
    iput-object v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 380
    :cond_242
    :goto_242
    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mBokeh:Z

    or-int/2addr p1, v9

    .line 381
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFlipBokeh:Z

    or-int/2addr p1, v0

    if-eqz p1, :cond_24d

    if-eqz v6, :cond_24d

    goto :goto_24f

    .line 382
    :cond_24d
    iget-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :goto_24f
    iput-object v10, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    return-void
.end method

.method private parseDeveloperModeStatus(Landroid/content/Intent;)V
    .registers 4

    .line 386
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_16

    .line 389
    :cond_7
    const-string v0, "enable_developer_mode"

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/FeatureSupport;->updateDeveloperMode(Landroid/content/Context;Z)V

    :cond_16
    :goto_16
    return-void
.end method

.method private parseGoogleAssistantIntent(Landroid/content/Intent;)V
    .registers 5

    .line 515
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isGoogleAssistantIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    .line 516
    sget-object v0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGoogleAssistantIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 517
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v1, :cond_70

    .line 518
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isOpenOnly(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    .line 519
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->getDelayTimeFromIntent(Landroid/content/Intent;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    .line 521
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isVideoIntent(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-nez v1, :cond_3c

    .line 523
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isPhotoIntent(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    .line 525
    :cond_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpenOnly:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDelayTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVideoIntent:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPhotoIntent:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .registers 12

    if-nez p1, :cond_a

    .line 200
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseIntent intent is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_a
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isFromIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    .line 205
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isFromNegativeScreen(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFromNegativeScreen:Z

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x4

    const-string v4, "com.android.systemui.camera_launch_source"

    if-le v1, v2, :cond_f1

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 209
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 210
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f1

    :cond_33
    const/4 v1, -0x1

    .line 211
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-ne v3, v2, :cond_4a

    .line 213
    const-string/jumbo v2, "volume_double_tap"

    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    goto/16 :goto_e1

    :cond_4a
    const/4 v6, 0x5

    .line 215
    const-string v7, "[parseIntent] lock_screen_type: "

    const-string v8, "lock_screen_type"

    if-ne v6, v2, :cond_82

    .line 216
    const-string/jumbo v2, "underwater_volume_double_tap"

    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 217
    invoke-virtual {p1, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 218
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    const/16 v8, 0x2c

    const-string v9, "double_tap_volume_down_key"

    invoke-virtual {v6, v8, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 220
    sget-object v6, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_e1

    :cond_82
    const/16 v6, 0x64

    if-ne v6, v2, :cond_ab

    .line 222
    const-string v2, "ai_key_double_tap"

    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 223
    invoke-virtual {p1, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 224
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    .line 225
    sget-object v6, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_e1

    :cond_ab
    const/4 v6, 0x3

    if-ne v6, v2, :cond_ba

    .line 227
    const-string v2, "lockscreen_affordance"

    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    goto :goto_e1

    :cond_ba
    const/16 v6, 0x65

    if-ne v6, v2, :cond_e1

    .line 230
    const-string v2, "shoulder_button_double_tap"

    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 231
    invoke-virtual {p1, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 232
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    .line 233
    sget-object v6, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    :cond_e1
    :goto_e1
    const-string v2, "isFromSmartButton"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v5, v1, :cond_f7

    .line 238
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    goto :goto_f7

    .line 241
    :cond_f1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 244
    :cond_f7
    :goto_f7
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFromNegativeScreen:Z

    if-eqz v1, :cond_103

    .line 245
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    goto :goto_113

    .line 246
    :cond_103
    const-string v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 247
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    .line 249
    :cond_113
    :goto_113
    sget-object v1, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parseIntent] action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLaunchSource: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseSpecifyModeIntent(Landroid/content/Intent;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseGoogleAssistantIntent(Landroid/content/Intent;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseCameraID(Landroid/content/Intent;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseDeveloperModeStatus(Landroid/content/Intent;)V

    return-void
.end method

.method private parseMetaData(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_a

    .line 188
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseMetaData data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_a
    const-string v0, "ModeName"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    .line 194
    const-string p1, "0"

    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :cond_21
    return-void
.end method

.method private parseSpecifyModeIntent(Landroid/content/Intent;)V
    .registers 7

    .line 467
    const-string v0, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    const/4 v3, 0x1

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v3

    :goto_1e
    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    .line 469
    const-string v0, "SpecifyMode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 471
    invoke-static {p1}, Lcom/transsion/camera/app/intent/IntentParser;->getNFCSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 473
    :cond_34
    sget-object p1, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[parseIntent] parseSpecifyModeIntent specifyMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iget-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p1, :cond_54

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_55

    :cond_54
    move v1, v3

    :cond_55
    iput-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-eqz v1, :cond_15b

    .line 477
    iput-boolean v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    .line 478
    const-string p1, "ASDMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    .line 479
    const-string p1, "HDRMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    .line 480
    const-string p1, "HDROffMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    .line 481
    const-string p1, "SuperDefinitionOffMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    .line 482
    const-string p1, "SuperDefinitionOnMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    .line 483
    const-string p1, "SuperDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionMode:Z

    .line 484
    const-string p1, "MacroMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    .line 485
    const-string p1, "WideAngleMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    .line 486
    const-string p1, "TeleMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyTele:Z

    .line 487
    const-string p1, "FaceBeautyMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPMaster:Z

    .line 488
    const-string p1, "FaceBeauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFaceBeauty:Z

    .line 489
    const-string p1, "SlimBody"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySlimBody:Z

    .line 490
    const-string p1, "FunVideoMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideo:Z

    .line 491
    const-string p1, "FunVideoOffMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideoOff:Z

    .line 492
    const-string p1, "BokehMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    .line 493
    const-string p1, "BokehOffMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokehOff:Z

    .line 494
    const-string p1, "FrontASDMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontASD:Z

    .line 495
    const-string p1, "MultiFaceBeautyMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    .line 496
    const-string p1, "MultiFaceBeautyOffMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeautyOff:Z

    .line 497
    const-string p1, "FrontFunVideoMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    .line 498
    const-string p1, "FrontFunVideoOffMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideoOff:Z

    .line 499
    const-string p1, "VideoModeWithPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySettingVideoPortrait:Z

    .line 501
    const-string p1, "VideoEnhanceOnMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoEnhanceBack4K:Z

    .line 502
    const-string p1, "VideoModeWithBack4KAnti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBack4KAnti:Z

    .line 503
    const-string p1, "VideoModeWithBackHighFPSAnti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBackHighFpsAnti:Z

    .line 504
    const-string p1, "ASDBackWideSuperDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDBackWideSuperDefinition:Z

    .line 505
    const-string p1, "ASDFrontWideSuperDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDFrontWideSuperDefinition:Z

    .line 506
    const-string p1, "VlogMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVlog:Z

    .line 507
    const-string p1, "MotionCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFlashSnap:Z

    .line 508
    const-string p1, "SmartFocusOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontSmartFocus:Z

    .line 509
    const-string p1, "AigcMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyAIGC:Z

    .line 510
    const-string p1, "PortraitMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPortraitMode:Z

    :cond_15b
    return-void
.end method

.method private screenPocket()Z
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private useBackCamera(Landroid/content/Intent;)Z
    .registers 4

    .line 600
    const-string/jumbo v0, "volume_double_tap"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "underwater_volume_double_tap"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "ai_key_double_tap"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "shoulder_button_double_tap"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "arcore_mode"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "gopro_mode"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "vlog_mode"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "SuperDefinition"

    iget-object v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "video_mode"

    .line 608
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 609
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCameraForTest(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_67

    goto :goto_69

    :cond_67
    const/4 p0, 0x0

    return p0

    :cond_69
    :goto_69
    const/4 p0, 0x1

    return p0
.end method

.method private useBackCameraForTest(Landroid/content/Intent;)Z
    .registers 3

    .line 617
    const-string p0, "isVoiceQuery"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "NoUiQuery"

    .line 618
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0
.end method

.method private useFrontCamera(Landroid/content/Intent;)Z
    .registers 5

    .line 583
    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPortraitMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontASD:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeautyOff:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideoOff:Z

    if-nez v0, :cond_21

    iget-boolean p0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDFrontWideSuperDefinition:Z

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    move p0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move p0, v1

    .line 591
    :goto_22
    const-string v0, "ModeFromAod"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    or-int/2addr p0, v0

    if-nez p0, :cond_4e

    .line 593
    const-string p0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    .line 594
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "android.intent.extra.USE_FRONT_CAMERA"

    .line 595
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "selfie"

    .line 596
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    goto :goto_4e

    :cond_4d
    return v2

    :cond_4e
    :goto_4e
    return v1
.end method
