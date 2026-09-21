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

    .line 556
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 557
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 558
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    if-eqz p0, :cond_2a

    .line 561
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    .line 562
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

    .line 564
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    .line 566
    :catch_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 568
    :goto_d
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 569
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 570
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

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QRcode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 77
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->OFF:I

    .line 78
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ON:I

    .line 79
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseASDDetectSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ASD_DETECTION_DISABLE:Z

    .line 80
    const-string v0, "off"

    sput-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mImageSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQrCodeDefaultOpen:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    .line 93
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mEffect:I

    .line 95
    sget v2, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->OFF:I

    iput v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mTranssionAsdMode:I

    .line 96
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAsdVersion:I

    .line 97
    iput v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    const/4 v1, 0x5

    .line 98
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIntervals:I

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mCloseByFlashSnapLite:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    .line 103
    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 311
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

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private applyUninitQrcode(Z)V
    .registers 3

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 9

    .line 104
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

    .line 108
    :cond_15
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    if-nez p4, :cond_26

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 113
    :cond_26
    iget p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iput p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 118
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    if-nez v1, :cond_66

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    if-nez v1, :cond_66

    .line 119
    iget v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mTranssionAsdMode:I

    sget v3, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->ON:I

    if-ne v1, v3, :cond_57

    .line 120
    iget-boolean p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQRCodeEffect:Z

    if-eqz p4, :cond_49

    .line 121
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->recognizeImage(Landroid/media/Image;II)V

    return-void

    .line 124
    :cond_49
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    if-eqz p2, :cond_73

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    if-nez p3, :cond_73

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 126
    invoke-interface {p2, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return-void

    .line 130
    :cond_57
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 131
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    if-eqz v0, :cond_62

    iget v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIntervals:I

    rem-int/2addr p4, v0

    if-nez p4, :cond_73

    .line 132
    :cond_62
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->recognizeImage(Landroid/media/Image;II)V

    return-void

    .line 136
    :cond_66
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    if-eqz p2, :cond_73

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    if-nez p3, :cond_73

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 138
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

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    if-eqz v0, :cond_79

    .line 337
    :try_start_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 338
    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_63

    .line 341
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 342
    array-length v2, v1

    if-lez v2, :cond_63

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_63

    .line 343
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 344
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 345
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    mul-int/2addr v4, p1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 347
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-gt v4, v5, :cond_5c

    .line 348
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 349
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 350
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 351
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    aget-object p1, v1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_63

    .line 354
    :cond_5c
    sget-object p1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "The data of the y component in the YUV is too large"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mImageSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception p0

    .line 361
    sget-object p1, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "Image is already closed."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
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

    .line 546
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

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    .line 550
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

    .line 232
    const-string p0, "key_setting_qrcode"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 308
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

    .line 222
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

    .line 227
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

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 150
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

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsQrCodeDefaultOpen:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQrCodeDefaultOpen:Z

    .line 152
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "qbarcode_detection"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 154
    new-instance p2, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode$QRcodeHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/qrcode/QRcode;Lcom/transsion/camera/feature/setting/qrcode/QRcode-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance p1, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mQrCodeResultCallback:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->setResultCallback(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_70

    .line 158
    const-string p1, "capture_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 159
    const-string p1, "key_ae_af_lock_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 160
    const-string p1, "key_quick_video_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 161
    const-string p1, "key_transsion_asd_mode"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 162
    const-string p1, "key_activity_orientation"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 163
    const-string p1, "key_restore_settings_notify_ui"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 164
    const-string p1, "key_setting_fragment_notify_ui"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 165
    const-string p1, "key_continuous_shot_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 166
    const-string p1, "key_asd_effect_state_qrcode"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 167
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

    .line 174
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3f

    .line 179
    iget p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAsdVersion:I

    const/4 v0, 0x4

    const-string v1, "on"

    if-eq p2, v0, :cond_22

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1b

    goto :goto_22

    .line 182
    :cond_1b
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsQrCodeDefaultOpen:Z

    if-eqz p2, :cond_20

    goto :goto_22

    :cond_20
    const-string v1, "off"

    :cond_22
    :goto_22
    move-object p2, v1

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_setting_qrcode"

    invoke-virtual {v0, v2, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3f
    move-object v0, p2

    .line 192
    :cond_40
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 237
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    return p0
.end method

.method public isSupportCamera()Z
    .registers 3

    .line 507
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 508
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 509
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 510
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

    .line 248
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    .line 249
    iput v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 250
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->sendSettingChangeRequest()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 252
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

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 199
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

    .line 200
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    .line 203
    :cond_29
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mInit:Z

    if-nez p1, :cond_57

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5a

    .line 210
    :cond_57
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    .line 212
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

    .line 579
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 580
    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mCloseByFlashSnapLite:Z

    return-void

    .line 583
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 266
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsPause:Z

    const-wide/16 v1, 0x0

    .line 269
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    const/4 v1, 0x0

    .line 270
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 271
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 272
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsHideQrCodeUI:Z

    .line 273
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    .line 274
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->onPause()V

    .line 276
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsModeSupport:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 277
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    :cond_34
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 217
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 256
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsPause:Z

    const/4 v1, 0x1

    .line 259
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAllowRecognizeQrcode:Z

    .line 260
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsInPreferenceFragment:Z

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->onResume()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setAsdVersion(I)V
    .registers 2

    .line 514
    iput p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mAsdVersion:I

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 520
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdVersion()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 521
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x0

    .line 522
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->setAsdVersion(I)V

    .line 524
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 525
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 526
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->isSupportCamera()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 528
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
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

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x1

    .line 285
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->applyUninitQrcode(Z)V

    const-wide/16 v1, 0x0

    .line 286
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mStartTime:J

    const/4 v1, 0x0

    .line 287
    iput v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mFramesNumber:I

    .line 288
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mRecognizeAlgorithm:Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->setResultCallback(Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;)V

    .line 289
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 290
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedSkippingFrames:Z

    .line 291
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->mIsNeedInterrupt:Z

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_57

    .line 293
    const-string v0, "capture_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 294
    const-string v0, "key_ae_af_lock_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 295
    const-string v0, "key_quick_video_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 296
    const-string v0, "key_transsion_asd_mode"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 297
    const-string v0, "key_activity_orientation"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 298
    const-string v0, "key_restore_settings_notify_ui"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 299
    const-string v0, "key_setting_fragment_notify_ui"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 300
    const-string v0, "key_continuous_shot_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 301
    const-string v0, "key_asd_effect_state_qrcode"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 302
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
