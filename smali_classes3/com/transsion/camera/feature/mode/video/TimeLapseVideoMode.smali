.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;
.implements Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_LAPSE_RATE:I = 0xf

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEMP_RECORD_FILE:Ljava/lang/String; = ".temp_record"

.field private static final TIME_MILLIS_3_FRAME:I = 0x3

.field private static final TIME_MINUTE_TO_MILLI:I = 0xea60


# instance fields
.field private isCreateFileFail:Z

.field private final mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

.field private final mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

.field private mTimelapseEncodeRatio:I

.field private mVideoFrameRate:I

.field private final mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;


# direct methods
.method public static synthetic $r8$lambda$ACdpz_KNyqqUwfH5-NguuQRqz1E(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQD_kZWbbG7aG24ZRJ-ufcd3XaQ(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimelapseEncodeRatio(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimelapseEncodeRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSurface(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/view/Surface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoUI(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmThumbnailBitmap(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoSurface(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/Surface;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentVideoSize(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/util/Size;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getCurrentVideoSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 94
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseVideoMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    const/4 p2, 0x0

    .line 104
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->isCreateFileFail:Z

    .line 105
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimelapseEncodeRatio:I

    const/16 p2, 0x1e

    .line 106
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoFrameRate:I

    .line 417
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 422
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .registers 4

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .registers 4

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Z)V
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .registers 4

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/Object;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V
    .registers 4

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;I)V
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;I)I
    .registers 2

    .line 92
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    return p1
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Z)V
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5802(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;J)J
    .registers 3

    .line 92
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 4

    .line 405
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 408
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 410
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 412
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getCurrentVideoSize()Landroid/util/Size;
    .registers 6

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d0

    const/16 v2, 0x438

    if-eqz v0, :cond_47

    .line 528
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_47

    .line 532
    :cond_15
    :try_start_15
    const-string v3, "_"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 533
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 536
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 537
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 538
    invoke-static {p0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V

    goto :goto_37

    .line 540
    :cond_33
    invoke-static {v3, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 543
    :goto_37
    new-instance v0, Landroid/util/Size;

    iget v3, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v3, p0}, Landroid/util/Size;-><init>(II)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    return-object v0

    .line 545
    :catch_41
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 529
    :cond_47
    :goto_47
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private getEncodeVideoFrameRate()I
    .registers 1

    .line 605
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoFrameRate:I

    return p0
.end method

.method private getTimeLapseRate()D
    .registers 5

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_time_lapse"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 611
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->setTimeLapseRate(I)V

    .line 613
    :cond_15
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeLapseRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_3f

    .line 614
    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3f

    .line 617
    :cond_36
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 618
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoFrameRate:I

    int-to-double v2, p0

    div-double/2addr v2, v0

    return-wide v2

    :cond_3f
    :goto_3f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private initTimeLapseRecorder()V
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-nez v0, :cond_b

    .line 521
    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 523
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$minit(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 10

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v3

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$integer;->timelapse_video_ui_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 375
    new-instance v1, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/TimeLapseVideoUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v5, v4

    move-object v6, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/tecno/TimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;)V

    iput-object v1, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    goto :goto_3e

    :cond_25
    move-object v6, p0

    move-object v2, p1

    .line 371
    new-instance v1, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;

    iget-object v4, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;)V

    iput-object v1, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    goto :goto_3e

    :cond_32
    move-object v6, p0

    move-object v2, p1

    .line 367
    new-instance v1, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;

    iget-object v4, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;)V

    iput-object v1, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    .line 380
    :goto_3e
    iget-object p0, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 381
    iget-object p0, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    iget-object p1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 382
    iget-object p0, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    iget p1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 383
    iget-object p0, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->updateLayout(Z)V

    .line 384
    iget-object p0, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    .line 385
    iget-object p0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_75

    .line 386
    const-string p1, "key_time_lapse"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 388
    iget-object p1, v6, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->setTimeLapseRate(I)V

    :cond_75
    return-void
.end method

.method private isRecordTimeLimited()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->pauseResumeRecord()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 2

    .line 423
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->takeSnapShot()V

    return-void
.end method

.method private pauseResumeRecord()V
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_f

    .line 455
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mpauseResumeRecording(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_f
    return-void
.end method

.method private takeSnapShot()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_15

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    :cond_15
    return-void
.end method

.method private updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/app/common/relation/Relation;",
            ")V"
        }
    .end annotation

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8a

    .line 661
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_36

    .line 663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 665
    :cond_36
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVideoQualityRelation supportStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 667
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 670
    :cond_64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8a

    const/4 p0, 0x6

    .line 671
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_7d

    .line 674
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_83

    .line 676
    :cond_7d
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 678
    :goto_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    return-void
.end method


# virtual methods
.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 1276
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/4 v0, 0x2

    const/16 v1, 0x80

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 1277
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDuration()J
    .registers 3

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p0, :cond_9

    .line 351
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mgetCurrentDuration(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDataFlowType()I
    .registers 2

    .line 651
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 p0, 0x4

    goto :goto_e

    :cond_d
    move p0, v0

    .line 654
    :goto_e
    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 238
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    const-string p1, "key_fingerprint_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const-string p1, "key_taint_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 6

    .line 627
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 628
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 629
    const-string v1, "key_volume_key"

    const-string v2, "Shutter"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 634
    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 635
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {v3, v1, v2, v4}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    .line 637
    const-string v2, "8_60"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 638
    const-string v2, "6_60"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 639
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 640
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 641
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_57

    .line 642
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getFrontFlashModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_57
    return-object v0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 233
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0xe

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 148
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/transsion/camera/R$integer;->time_lapse_encode_ratio:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimelapseEncodeRatio:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$integer;->time_lapse_video_frame_ratio:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoFrameRate:I

    .line 151
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 153
    const-string p1, "key_time_lapse"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 154
    const-string p1, "key_time_lapse_duration"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 155
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected isDurationInValid(J)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupportVSS()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportAntiVideo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_93

    const/4 v1, 0x3

    if-eq p1, v1, :cond_93

    const/16 v1, 0x9

    if-eq p1, v1, :cond_93

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_83

    const/16 v1, 0xc9

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_73

    const/16 v1, 0x106

    if-eq p1, v1, :cond_6d

    const/16 v1, 0xf

    if-eq p1, v1, :cond_5d

    const/16 v1, 0x10

    if-eq p1, v1, :cond_73

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_5d

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_73

    const/16 v1, 0x90

    if-eq p1, v1, :cond_5d

    const/16 v1, 0x91

    if-eq p1, v1, :cond_73

    packed-switch p1, :pswitch_data_a0

    packed-switch p1, :pswitch_data_aa

    goto :goto_9e

    .line 1249
    :pswitch_37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1245
    :pswitch_3d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 1228
    :pswitch_43
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->onTimeLapseWheelHide()V

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_9e

    .line 1230
    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 1221
    :pswitch_50
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->onTimeLapseWheelShow()V

    .line 1222
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_9e

    .line 1223
    invoke-interface {p0, v3, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 1254
    :cond_5d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_9e

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz p0, :cond_9e

    .line 1255
    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 1234
    :cond_6d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->onTimeLapseWheelHide()V

    return-void

    .line 1262
    :cond_73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_9e

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz p0, :cond_9e

    .line 1263
    invoke-virtual {p0, v3, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 1267
    :cond_83
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_9e

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz p0, :cond_9e

    .line 1268
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->resetRecordingUI()V

    return-void

    .line 1239
    :cond_93
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result p1

    if-eqz p1, :cond_9e

    const/16 p1, 0x7b

    .line 1240
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    :cond_9e
    :goto_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x50
        :pswitch_50
        :pswitch_43
        :pswitch_43
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0xc0
        :pswitch_3d
        :pswitch_37
        :pswitch_3d
        :pswitch_37
    .end packed-switch
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 301
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-nez v0, :cond_1e

    .line 303
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

    .line 306
    :cond_1e
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_2f

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const/16 v0, 0x52

    .line 308
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    goto :goto_3c

    .line 309
    :cond_2f
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_37

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, p1, :cond_3c

    :cond_37
    const/16 v0, 0x53

    .line 310
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 312
    :cond_3c
    :goto_3c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 480
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 481
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onShutterClick(II)Z

    return v1

    :cond_15
    return v2
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 141
    new-instance p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoHelper;-><init>()V

    return-object p0
.end method

.method public onFrameBufferTimeOut()V
    .registers 1

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p0, :cond_7

    .line 696
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mstopTimeLapseVideoRecording(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    :cond_7
    return-void
.end method

.method public onMediaCodecException()V
    .registers 2

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p0, :cond_7

    .line 687
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$monMediaCodecError(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 689
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 3

    .line 490
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    .line 506
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopped(IZ)V

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 3

    .line 395
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    const/16 p1, 0xc9

    .line 396
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 247
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onProgressEnd()V
    .registers 2

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onShutterClick(II)Z

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 253
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 279
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "key_time_lapse"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz v0, :cond_16

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->setTimeLapseRate(I)V

    .line 283
    :cond_16
    const-string v0, "key_time_lapse_duration"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz p0, :cond_2e

    .line 284
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const p2, 0xea60

    mul-int/2addr p1, p2

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->setTimeLapseDuration(J)V

    :cond_2e
    return-void
.end method

.method public onSettingReady()V
    .registers 3

    .line 290
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz v0, :cond_23

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_time_lapse_duration"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->setTimeLapseDuration(J)V

    :cond_23
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 5

    .line 551
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShutterClick mState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkPermitBeforeStart()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_20

    return p2

    .line 556
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    :cond_30
    const-wide/16 v0, 0x3e8

    .line 561
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-nez p1, :cond_68

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3e

    goto :goto_68

    .line 566
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->initTimeLapseRecorder()V

    .line 567
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz p1, :cond_68

    .line 568
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_56

    const/16 p1, 0xf

    .line 569
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mstartTimeLapseVideoRecording(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    goto :goto_68

    .line 572
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mstopTimeLapseVideoRecording(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmPreparingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->stopProgressView()V

    :cond_68
    :goto_68
    return p2
.end method

.method public onShutterDown()V
    .registers 1

    .line 1213
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterDown()V

    .line 1214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->onShutterDown()V

    return-void
.end method

.method public onShutterUp(I)V
    .registers 2

    .line 1207
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterUp(I)V

    .line 1208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->onShutterUp()V

    return-void
.end method

.method protected onSnapShotStart()V
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playCaptureAnimation(Landroid/content/Context;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .registers 4

    .line 326
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_a

    .line 329
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mstopTimeLapseVideoRecording(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 331
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz v0, :cond_1c

    .line 333
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->stopProgressView()V

    .line 336
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 339
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 340
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 339
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method protected prepareVideoData()I
    .registers 8

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareVideoData video quality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_1d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v3, :cond_48

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 172
    const-string v3, "prepareVideoData mRecordingFlag : true"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mstopTimeLapseVideoRecording(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_41

    if-eqz v1, :cond_48

    .line 176
    :try_start_39
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_40} :catch_44
    .catchall {:try_start_39 .. :try_end_40} :catchall_41

    goto :goto_48

    :catchall_41
    move-exception p0

    goto/16 :goto_fa

    :catch_44
    move-exception v1

    .line 178
    :try_start_45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    :cond_48
    :goto_48
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v1, :cond_51

    .line 183
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 185
    :cond_51
    const-string v0, "-1"

    :goto_53
    const/4 v1, 0x0

    if-eqz v0, :cond_f8

    .line 188
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v3, :cond_5c

    goto/16 :goto_f8

    .line 193
    :cond_5c
    const-string v3, "_"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 195
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 196
    sget-object v4, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareVideoData cameraId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,quality :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 198
    const-string v3, "0"

    .line 200
    :cond_90
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 202
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V

    goto :goto_bc

    .line 206
    :cond_a8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-nez v4, :cond_b4

    .line 207
    monitor-exit v2

    return v1

    .line 209
    :cond_b4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 211
    :goto_bc
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setVideoSize(Landroid/media/CamcorderProfile;)V

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v3, "6_60"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d7

    const-string v3, "8_60"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 215
    :cond_d7
    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_e7

    .line 216
    iget v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v1, v1, 0x2

    .line 217
    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 221
    :cond_e7
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v1, :cond_ee

    .line 222
    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mprepareRecorder(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Landroid/media/CamcorderProfile;)V

    .line 224
    :cond_ee
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 225
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    .line 227
    :cond_f6
    monitor-exit v2

    return v1

    .line 190
    :cond_f8
    :goto_f8
    monitor-exit v2

    return v1

    .line 227
    :goto_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_45 .. :try_end_fb} :catchall_41

    throw p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 2

    .line 317
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz v0, :cond_f

    .line 319
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->resume()V

    :cond_f
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 4

    .line 598
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getTimeLapseRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setCaptureRate(D)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 600
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->getEncodeVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setVideoFrameRate(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 601
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->isRecordTimeLimited()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .registers 4

    .line 583
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_13

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 589
    :cond_13
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const/4 p1, 0x1

    .line 590
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 592
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return p1
.end method

.method public stopRecording(Z)Z
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    .line 498
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 259
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 260
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoTimeLapseRate(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz v0, :cond_19

    .line 263
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->unInitVideoUI()V

    .line 265
    :cond_19
    const-string v0, "key_time_lapse"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 266
    const-string v0, "key_time_lapse_duration"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mTimeLapseRecorder:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    if-eqz v0, :cond_2a

    .line 268
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->-$$Nest$mquit(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 270
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 273
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .registers 2

    .line 161
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;

    if-eqz p0, :cond_a

    .line 163
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_a
    return-void
.end method
