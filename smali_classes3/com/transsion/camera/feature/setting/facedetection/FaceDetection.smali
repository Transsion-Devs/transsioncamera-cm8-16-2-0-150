.class public Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final FACE_DECTION_DELAY:J = 0x3e8L

.field private static final FACE_INIT:I = 0x0

.field private static final HAS_VALID_FACE:I = 0x1

.field private static final MESSAGE_FACE_DECTION_OFF:I = 0x2

.field private static final MESSAGE_FACE_DECTION_ON:I = 0x1

.field private static final NO_VALID_FACE:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALID_FACE_RATIO:F = 0.0055f


# instance fields
.field private isFaceDetecting:Z

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private final mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

.field private mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFirebaseGenderSupport:Z

.field private mHandle:Landroid/os/Handler;

.field private mHasValidFace:I

.field private mISDualVideoMode:Z

.field public mIsAsdMode:Z

.field private mIsCapturing:Z

.field private mIsCurrentModeNotSupportFD:Z

.field private mIsPMasterMode:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceDetectionCallback(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceDetectionResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceRectResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceValidResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirebaseGenderSupport(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandle(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmISDualVideoMode(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTranssionFaceInfo(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->checkTranssionFaceInfo([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindMaxFaceRect(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->findMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindOriginalMaxFaceRect(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->findOriginalMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSettingSupport(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isSettingSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestFaceDetection(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->requestFaceDetection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceDetection"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCurrentModeNotSupportFD:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsAsdMode:Z

    .line 74
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    .line 196
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 318
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    .line 338
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method private checkTranssionFaceInfo([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 7

    .line 182
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_32

    aget-object v3, p1, v2

    .line 183
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v4

    .line 184
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v3

    if-eqz v4, :cond_2f

    if-eqz v3, :cond_2f

    .line 186
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sex(I)V

    .line 187
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->age(I)V

    .line 188
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_32
    return-void
.end method

.method private findMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .registers 8

    const/4 p0, 0x0

    .line 393
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 394
    array-length v1, p1

    :goto_8
    if-ge p0, v1, :cond_2f

    aget-object v2, p1, p0

    .line 395
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_2c

    .line 396
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_2c
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_2f
    return-object v0
.end method

.method private findOriginalMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .registers 8

    const/4 p0, 0x0

    .line 383
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 384
    array-length v1, p1

    :goto_8
    if-ge p0, v1, :cond_2f

    aget-object v2, p1, p0

    .line 385
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_2c

    .line 386
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_2c
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_2f
    return-object v0
.end method

.method private isSettingSupport()Z
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isVideoEffectOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isVideoMaskOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 418
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isSuperAntiVideoOn(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private isSuperAntiVideoOn(Ljava/lang/String;)Z
    .registers 3

    .line 372
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 376
    :cond_a
    const-string p1, "key_super_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    const-string p1, "super"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoEffectOn(Ljava/lang/String;)Z
    .registers 3

    .line 422
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 426
    :cond_a
    const-string p1, "key_video_effect"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 428
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "off"

    .line 429
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "effect_default"

    .line 430
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method private isVideoMaskOn(Ljava/lang/String;)Z
    .registers 3

    .line 434
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 438
    :cond_a
    const-string p1, "key_video_frame"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 440
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "off"

    .line 441
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "frame_default"

    .line 442
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method private requestFaceDetection()V
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    if-eqz p0, :cond_7

    .line 367
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->sendSettingChangeRequest()V

    :cond_7
    return-void
.end method


# virtual methods
.method dxoTestSupport()Z
    .registers 3

    .line 407
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 408
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 409
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
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

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 250
    const-string p0, "key_face_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    if-nez v0, :cond_d

    .line 256
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    .line 259
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 245
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

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getSupport()Ljava/util/List;

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

.method hasValidFace()Z
    .registers 2

    .line 413
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 226
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_has_valid_face"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_face_detection"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_face_rect"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 230
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFirebaseGenderSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

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

    .line 235
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isCurrentModeNotSupportFD()Z
    .registers 1

    .line 403
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCurrentModeNotSupportFD:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 303
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 304
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    .line 305
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 306
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 294
    iput p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    .line 295
    const-string p2, "key_limit_face_detection"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCurrentModeNotSupportFD:Z

    .line 296
    const-string p2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    .line 297
    const-string p2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z

    .line 298
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsAsdMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 265
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1b
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

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 273
    const-string p3, "off"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 274
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 275
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->stopFaceInfoDection(Z)V

    .line 276
    const-string p2, "key_ae_af_lock_state"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->sendSettingChangeRequest()V

    .line 279
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 281
    invoke-interface {p0, p3, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2d
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 310
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    if-eqz v0, :cond_7

    const-string v0, "gender_indentification"

    goto :goto_9

    :cond_7
    const-string v0, "on"

    :goto_9
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->onValueChanged(Ljava/lang/String;)V

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

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
