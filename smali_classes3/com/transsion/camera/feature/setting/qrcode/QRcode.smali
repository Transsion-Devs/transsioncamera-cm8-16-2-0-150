.class public Lcom/transsion/camera/feature/setting/qrcode/QRcode;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;
    }
.end annotation


# static fields
.field private static final ASD_DETECTION_DISABLE:Z

.field private static final ASD_TYPE_INIT_VALUE:I = -0x1

.field public static final CLOSE_QRCODE_VIEW:I = 0x0

.field public static DEFAULT_VALUE:Ljava/lang/String; = null

.field private static final LOW_PLATFORM_FRAMES_INTERVAL:I = 0x5

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final MID_HIGH_PLATFORM_FRAMES_INTERVAL:I = 0x3

.field private static final MSG_INIT_QRCODE:I = 0x64

.field private static final MSG_RECOGNIZE_QRCODE:I = 0x69

.field private static final MSG_RESET_QRCODE_EFFECT:I = 0x6a

.field private static final MSG_UNINIT_QRCODE:I = 0x65

.field private static final OFF:I

.field private static final ON:I

.field public static final SHOW_QRCODE_VIEW:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowRecognizeQrcode:Z

.field private mAsdVersion:I

.field private mCloseByFlashSnapLite:Z

.field private mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mEffect:I

.field private mFramesNumber:I

.field private mHandler:Landroid/os/Handler;

.field private final mImageSize:Landroid/graphics/Point;

.field private volatile mInit:Z

.field private mIntervals:I

.field private mIsHideQrCodeUI:Z

.field private mIsInPreferenceFragment:Z

.field private mIsModeSupport:Z

.field private mIsNeedInterrupt:Z

.field private mIsNeedSkippingFrames:Z

.field private mIsPause:Z

.field private mIsQRCodeEffect:Z

.field private mIsQrCodeDefaultOpen:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mQrCodeResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

.field private mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

.field mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mStartTime:J

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mTranssionAsdMode:I


# direct methods
.method public static synthetic $r8$lambda$82x1lrmzdwUVLHuOg1iq0NenDxE(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->lambda$new$1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dN2G2GSmt9eZ5BFRLY3_bD5Jv2k(ZLandroid/os/Handler;)V
    .registers 4

    const/16 v0, 0x65

    .line 603
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 604
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 605
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    if-eqz p0, :cond_2a

    .line 608
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    .line 609
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    const-string p1, "applyUninitQrcodeTask"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public static synthetic $r8$lambda$himby-WuIxjmlOh8xL0r_UU_TIM(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Landroid/media/Image;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$pURSEpRBu_B7VCh1CRh4rXFcqJg(Landroid/os/Handler;)V
    .registers 3

    const-wide/16 v0, 0x3e8

    .line 611
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    .line 613
    :catch_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 615
    :goto_d
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 616
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 617
    sget-object p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[applyUninitQrcode] Message blocking, forced quit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mCloseByFlashSnapLite:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataCallback(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageSize(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Landroid/graphics/Point;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mImageSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNeedSkippingFrames(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognizeAlgorithm(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmAllowRecognizeQrcode(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDataCallback(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedSkippingFrames(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsQRCodeEffect(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQRCodeEffect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/qrcode/QRcode;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyUninitQrcode(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitAlgorithmWithTimeout(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->initAlgorithmWithTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QRcode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 78
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->OFF:I

    .line 79
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ON:I

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseASDDetectSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ASD_DETECTION_DISABLE:Z

    .line 81
    const-string v0, "off"

    sput-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mImageSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQrCodeDefaultOpen:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    .line 94
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mEffect:I

    .line 96
    sget v2, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->OFF:I

    iput v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mTranssionAsdMode:I

    .line 97
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAsdVersion:I

    .line 98
    iput v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    const/4 v1, 0x5

    .line 99
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIntervals:I

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mCloseByFlashSnapLite:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 312
    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;-><init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 418
    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;-><init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mQrCodeResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

    .line 446
    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private applyUninitQrcode(Z)V
    .registers 3

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initAlgorithmWithTimeout()V
    .registers 10

    .line 507
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 508
    new-array v4, v0, [Z

    const/4 v6, 0x0

    aput-boolean v6, v4, v6

    .line 509
    new-array v5, v0, [Z

    aput-boolean v6, v5, v6

    .line 510
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v7

    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;

    const-string v2, "qrcode_init"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;-><init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Ljava/lang/String;Ljava/lang/Object;[Z[Z)V

    invoke-virtual {v7, v0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    .line 532
    monitor-enter v3

    .line 534
    :try_start_1f
    aget-boolean p0, v5, v6

    if-nez p0, :cond_2c

    const-wide/16 v7, 0x3e8

    .line 535
    invoke-virtual {v3, v7, v8}, Ljava/lang/Object;->wait(J)V

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_58

    .line 537
    :cond_2c
    :goto_2c
    aget-boolean p0, v5, v6

    if-nez p0, :cond_3d

    .line 538
    sget-object p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Init RecognizeAlgorithm timeout after 1000ms, skip initialization"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    iput-boolean v6, v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 540
    iput-boolean v6, v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_3b} :catch_44
    .catchall {:try_start_1f .. :try_end_3b} :catchall_29

    .line 541
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_29

    return-void

    .line 543
    :cond_3d
    :try_start_3d
    aget-boolean p0, v4, v6

    iput-boolean p0, v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    iput-boolean p0, v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_43} :catch_44
    .catchall {:try_start_3d .. :try_end_43} :catchall_29

    goto :goto_56

    .line 545
    :catch_44
    :try_start_44
    sget-object p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Init RecognizeAlgorithm interrupted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 547
    iput-boolean v6, v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 548
    iput-boolean v6, v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    .line 550
    :goto_56
    monitor-exit v3

    return-void

    :goto_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_29

    throw p0
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 9

    .line 105
    const-string p4, "off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_73

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    if-eqz p4, :cond_73

    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsPause:Z

    if-eqz p4, :cond_15

    goto :goto_73

    .line 109
    :cond_15
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    if-nez p4, :cond_26

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 114
    :cond_26
    iget p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iput p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 119
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    if-nez v1, :cond_66

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    if-nez v1, :cond_66

    .line 120
    iget v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mTranssionAsdMode:I

    sget v3, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ON:I

    if-ne v1, v3, :cond_57

    .line 121
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQRCodeEffect:Z

    if-eqz p4, :cond_49

    .line 122
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->recognizeImage(Landroid/media/Image;II)V

    return-void

    .line 125
    :cond_49
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    if-eqz p2, :cond_73

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    if-nez p3, :cond_73

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 127
    invoke-interface {p2, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return-void

    .line 131
    :cond_57
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    if-eqz v0, :cond_62

    iget v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIntervals:I

    rem-int/2addr p4, v0

    if-nez p4, :cond_73

    .line 133
    :cond_62
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->recognizeImage(Landroid/media/Image;II)V

    return-void

    .line 137
    :cond_66
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    if-eqz p2, :cond_73

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    if-nez p3, :cond_73

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 139
    invoke-interface {p2, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_73
    :goto_73
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_13e

    goto/16 :goto_74

    :sswitch_f
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_74

    :cond_19
    const/16 v3, 0x8

    goto/16 :goto_74

    :sswitch_1d
    const-string v0, "key_asd_effect_state_qrcode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_74

    :cond_26
    const/4 v3, 0x7

    goto :goto_74

    :sswitch_28
    const-string v0, "key_shutter_guide_layout_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_74

    :cond_31
    const/4 v3, 0x6

    goto :goto_74

    :sswitch_33
    const-string v0, "key_transsion_asd_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_74

    :cond_3c
    const/4 v3, 0x5

    goto :goto_74

    :sswitch_3e
    const-string v0, "key_continuous_shot_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_74

    :cond_47
    const/4 v3, 0x4

    goto :goto_74

    :sswitch_49
    const-string v0, "key_quick_video_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_74

    :cond_52
    const/4 v3, 0x3

    goto :goto_74

    :sswitch_54
    const-string v0, "key_setting_fragment_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_74

    :cond_5d
    const/4 v3, 0x2

    goto :goto_74

    :sswitch_5f
    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto :goto_74

    :cond_68
    move v3, v2

    goto :goto_74

    :sswitch_6a
    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_74

    :cond_73
    move v3, v1

    :goto_74
    const-string p1, "end"

    packed-switch v3, :pswitch_data_164

    goto/16 :goto_114

    .line 459
    :pswitch_7b
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_114

    .line 460
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    return-void

    .line 467
    :pswitch_86
    check-cast p2, [I

    if-eqz p2, :cond_91

    .line 468
    array-length p1, p2

    if-ne p1, v2, :cond_91

    .line 469
    aget p1, p2, v1

    iput p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mEffect:I

    .line 471
    :cond_91
    sget-boolean p1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ASD_DETECTION_DISABLE:Z

    if-eqz p1, :cond_98

    .line 472
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQRCodeEffect:Z

    return-void

    .line 475
    :cond_98
    iget p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mEffect:I

    const/16 v0, 0x17

    if-eq p1, v0, :cond_a2

    const/16 v0, 0xd

    if-ne p1, v0, :cond_a3

    :cond_a2
    move v1, v2

    :cond_a3
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQRCodeEffect:Z

    .line 476
    sget-object p1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStatusChanged] effect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mEffect: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mEffect:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsQRCodeEffect = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQRCodeEffect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 464
    :pswitch_d4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mTranssionAsdMode:I

    return-void

    .line 484
    :pswitch_dd
    const-string p1, "key_start_continuous_shot_action"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    return-void

    .line 480
    :pswitch_e9
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "key_quick_video_start"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_fc

    const-string p1, "shutter_guide_layout_show"

    .line 481
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_fc

    move v1, v2

    :cond_fc
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    return-void

    .line 452
    :pswitch_ff
    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "begin"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 453
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    return-void

    .line 454
    :cond_10c
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_114

    .line 455
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    :cond_114
    :goto_114
    return-void

    .line 487
    :pswitch_115
    const-string p1, "capture_started"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_129

    const-string p1, "capture_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_126

    goto :goto_129

    .line 490
    :cond_126
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    return-void

    .line 488
    :cond_129
    :goto_129
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsInterruptRecognizeWhenPreview:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    return-void

    .line 449
    :pswitch_132
    const-string p1, "on"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    return-void

    :sswitch_data_13e
    .sparse-switch
        -0x7b17f224 -> :sswitch_6a
        -0x76a61da8 -> :sswitch_5f
        -0x6c9d0fb6 -> :sswitch_54
        -0x4e600694 -> :sswitch_49
        0x207ccbcb -> :sswitch_3e
        0x318b51d2 -> :sswitch_33
        0x47d8f3b6 -> :sswitch_28
        0x5e14fbbd -> :sswitch_1d
        0x60ee855f -> :sswitch_f
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_132
        :pswitch_115
        :pswitch_ff
        :pswitch_e9
        :pswitch_dd
        :pswitch_d4
        :pswitch_e9
        :pswitch_86
        :pswitch_7b
    .end packed-switch
.end method

.method private recognizeImage(Landroid/media/Image;II)V
    .registers 10

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    if-eqz v0, :cond_79

    .line 338
    :try_start_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 339
    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_63

    .line 342
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 343
    array-length v2, v1

    if-lez v2, :cond_63

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_63

    .line 344
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 345
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    mul-int/2addr v4, p1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 348
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-gt v4, v5, :cond_5c

    .line 349
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 352
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    aget-object p1, v1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_63

    .line 355
    :cond_5c
    sget-object p1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "The data of the y component in the YUV is too large"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mImageSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception p0

    .line 362
    sget-object p1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "Image is already closed."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_79
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 5

    .line 593
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isModeSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    .line 597
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 233
    const-string p0, "key_setting_qrcode"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 223
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 228
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

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mQrCodeRecognizeInterval:I

    if-nez p1, :cond_d

    const/4 p1, 0x5

    goto :goto_e

    :cond_d
    const/4 p1, 0x3

    :goto_e
    iput p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIntervals:I

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsQrCodeDefaultOpen:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQrCodeDefaultOpen:Z

    .line 153
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "qbarcode_detection"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 155
    new-instance p2, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/qrcode/QRcode;Lcom/transsion/camera/feature/setting/qrcode/QRcode-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance p1, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mQrCodeResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->setResultCallback(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_70

    .line 159
    const-string p1, "capture_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 160
    const-string p1, "key_ae_af_lock_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 161
    const-string p1, "key_quick_video_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 162
    const-string p1, "key_transsion_asd_mode"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 163
    const-string p1, "key_activity_orientation"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 164
    const-string p1, "key_restore_settings_notify_ui"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 165
    const-string p1, "key_setting_fragment_notify_ui"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 166
    const-string p1, "key_continuous_shot_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 167
    const-string p1, "key_asd_effect_state_qrcode"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 168
    const-string p1, "key_shutter_guide_layout_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_70
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

    .line 175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3f

    .line 180
    iget p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAsdVersion:I

    const/4 v0, 0x4

    const-string v1, "on"

    if-eq p2, v0, :cond_22

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1b

    goto :goto_22

    .line 183
    :cond_1b
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQrCodeDefaultOpen:Z

    if-eqz p2, :cond_20

    goto :goto_22

    :cond_20
    const-string v1, "off"

    :cond_22
    :goto_22
    move-object p2, v1

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_setting_qrcode"

    invoke-virtual {v0, v2, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3f
    move-object v0, p2

    .line 193
    :cond_40
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 238
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    return p0
.end method

.method public isSupportCamera()Z
    .registers 3

    .line 554
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 555
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 556
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 557
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    return p0

    :cond_43
    :goto_43
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 249
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    .line 250
    iput v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 251
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->sendSettingChangeRequest()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 253
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 243
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValueChanged value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lastValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    .line 204
    :cond_29
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 205
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    if-nez p1, :cond_57

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5a

    .line 211
    :cond_57
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    .line 213
    :goto_5a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->sendSettingChangeRequest()V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
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

    .line 626
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 627
    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mCloseByFlashSnapLite:Z

    return-void

    .line 630
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 267
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsPause:Z

    const-wide/16 v1, 0x0

    .line 270
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    const/4 v1, 0x0

    .line 271
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 272
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 273
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 274
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    .line 275
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->onPause()V

    .line 277
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 278
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    :cond_34
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 218
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 257
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsPause:Z

    const/4 v1, 0x1

    .line 260
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 261
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->onResume()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setAsdVersion(I)V
    .registers 2

    .line 561
    iput p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAsdVersion:I

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 567
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdVersion()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x0

    .line 569
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->setAsdVersion(I)V

    .line 571
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 572
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isSupportCamera()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 575
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_36
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_3b
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

.method public unInit()V
    .registers 5

    .line 284
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    const-wide/16 v1, 0x0

    .line 287
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    const/4 v1, 0x0

    .line 288
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 289
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->setResultCallback(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;)V

    .line 290
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 291
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    .line 292
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_57

    .line 294
    const-string v0, "capture_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 295
    const-string v0, "key_ae_af_lock_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 296
    const-string v0, "key_quick_video_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 297
    const-string v0, "key_transsion_asd_mode"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 298
    const-string v0, "key_activity_orientation"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 299
    const-string v0, "key_restore_settings_notify_ui"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 300
    const-string v0, "key_setting_fragment_notify_ui"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 301
    const-string v0, "key_continuous_shot_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 302
    const-string v0, "key_asd_effect_state_qrcode"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 303
    const-string v0, "key_shutter_guide_layout_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
