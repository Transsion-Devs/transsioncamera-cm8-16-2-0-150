.class public Lcom/ss/android/vesdk/VECameraCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/camera/ICameraCapture;
.implements Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
.implements Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;
.implements Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;
.implements Lcom/ss/android/vesdk/VEListener$VEAppLifeCycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VECameraCapture"


# instance fields
.field public isoCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;

.field public isoRangeCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;

.field private mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

.field public mCameraFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

.field protected mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

.field protected mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

.field protected mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

.field private mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mFpsConfigListener:Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;

.field private mHasFirstFrameCaptured:Z

.field private mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsFirstOpen:Z

.field private mIsNeedNewSurfaceTexture:I

.field private mLastFacingID:I

.field private mListFromRecorder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

.field protected mPictureSizeListener:Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;

.field private mPreviewCaptureListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

.field protected mPreviewFrameSize:Lcom/ss/android/vesdk/VESize;

.field private mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

.field protected mPreviewSize:Lcom/ss/android/vesdk/VESize;

.field public mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

.field protected mPreviewSizeListener:Lcom/ss/android/vesdk/VEListener$VEPreviewSizeCallback;

.field private mPreviewStartTime:J

.field private mRecorderCameraListener:Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;

.field public mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

.field protected mSATZoomListener:Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;

.field protected mShaderListener:Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;

.field private mSupportPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchCamera:Z

.field private final mSwitchTaskLock:Ljava/lang/Object;

.field protected mZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;


# direct methods
.method public static synthetic $r8$lambda$cDnGv8H6KS0cFLBVa4gCmsNXD2Y(Lcom/ss/android/vesdk/VECameraCapture;Ljava/util/List;)[I
    .registers 2

    .line 1769
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mFpsConfigListener:Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;

    if-eqz p0, :cond_9

    .line 1770
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;->config(Ljava/util/List;)[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewFrameSize:Lcom/ss/android/vesdk/VESize;

    .line 108
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSizeListener:Lcom/ss/android/vesdk/VEListener$VEPreviewSizeCallback;

    .line 109
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mFpsConfigListener:Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mLastFacingID:I

    const-wide/16 v1, 0x0

    .line 118
    iput-wide v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewStartTime:J

    .line 119
    iput v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsFirstOpen:Z

    .line 338
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchTaskLock:Ljava/lang/Object;

    .line 1082
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$5;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$5;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->isoCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;

    .line 1089
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$6;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$6;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->isoRangeCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;

    .line 1707
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$11;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$11;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewCaptureListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 1768
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    .line 1775
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$12;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$12;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    .line 1800
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$13;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$13;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    .line 1827
    new-instance v0, Lcom/ss/android/vesdk/VECameraCapture$14;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VECameraCapture$14;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    .line 130
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    invoke-direct {v0, p0, v1}, Lcom/ss/android/ttvecamera/TECameraCapture;-><init>(Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VECameraCapture;Lorg/json/JSONObject;)V
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->reportToByteBench(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VECameraCapture;)Lcom/ss/android/vesdk/frame/TECapturePipeline;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VECameraCapture;)Z
    .registers 1

    .line 91
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VECameraCapture;Z)Z
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/VECameraCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/VECameraCapture;)Z
    .registers 1

    .line 91
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mHasFirstFrameCaptured:Z

    return p0
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VECameraCapture;Z)Z
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mHasFirstFrameCaptured:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/VECameraCapture;)J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewStartTime:J

    return-wide v0
.end method

.method private buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 1592
    const-string p0, ""

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1594
    :try_start_7
    const-string v1, "oldState"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1595
    const-string v1, "newState"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1596
    const-string p0, "error"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1597
    const-string p0, "startTime"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1598
    const-string p0, "endTime"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception p0

    .line 1601
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private converFacing(I)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 2

    if-nez p1, :cond_5

    .line 1431
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_BACK:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0

    :cond_5
    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    .line 1435
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0

    :cond_b
    const/4 p0, 0x2

    if-ne p1, p0, :cond_11

    .line 1439
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_WIDE_ANGLE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0

    :cond_11
    const/4 p0, 0x3

    if-ne p1, p0, :cond_17

    .line 1443
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_TELEPHOTO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0

    .line 1446
    :cond_17
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_BACK:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0
.end method

.method private convert(Lcom/ss/android/vesdk/VEFocusSettings;)Lcom/ss/android/ttvecamera/TEFocusSettings;
    .registers 8

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1390
    :cond_4
    new-instance v0, Lcom/ss/android/ttvecamera/TEFocusSettings;

    .line 1391
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getWidth()I

    move-result v1

    .line 1392
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getHeight()I

    move-result v2

    .line 1393
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getX()I

    move-result v3

    .line 1394
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getY()I

    move-result v4

    .line 1395
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getDisplayDensity()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TEFocusSettings;-><init>(IIIIF)V

    .line 1397
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->isNeedFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setNeedFocus(Z)V

    .line 1398
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->isNeedMetering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setNeedMetering(Z)V

    .line 1399
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->isLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setLock(Z)V

    .line 1400
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->isFromUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setFromUser(Z)V

    .line 1401
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setCoordinatesMode(Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)V

    .line 1402
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFocusArea()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1403
    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture$8;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/VECameraCapture$8;-><init>(Lcom/ss/android/vesdk/VECameraCapture;Lcom/ss/android/vesdk/VEFocusSettings;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setCameraFocusArea(Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;)V

    .line 1410
    :cond_4e
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraMeteringArea()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 1411
    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture$9;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/VECameraCapture$9;-><init>(Lcom/ss/android/vesdk/VECameraCapture;Lcom/ss/android/vesdk/VEFocusSettings;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setCameraMeteringArea(Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;)V

    .line 1418
    :cond_5c
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEFocusSettings;->getFocusCallback()Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1419
    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture$10;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/VECameraCapture$10;-><init>(Lcom/ss/android/vesdk/VECameraCapture;Lcom/ss/android/vesdk/VEFocusSettings;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->setFocusCallback(Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;)V

    :cond_6a
    return-object v0
.end method

.method private convertCameraType(I)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_27

    const/4 p0, 0x2

    if-eq p1, p0, :cond_24

    const/4 p0, 0x4

    if-eq p1, p0, :cond_21

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1e

    packed-switch p1, :pswitch_data_2a

    .line 1690
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1688
    :pswitch_12
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1686
    :pswitch_15
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_RDHW:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1684
    :pswitch_18
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1682
    :pswitch_1b
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_OGXM_V2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1680
    :cond_1e
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_BEWO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1678
    :cond_21
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB_MEDIA:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1676
    :cond_24
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 1674
    :cond_27
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x8
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method private createInternalSettings(Lcom/ss/android/vesdk/VECameraSettings;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1273
    :cond_4
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ss/android/ttvecamera/TECameraSettings;-><init>(Landroid/content/Context;)V

    .line 1274
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFaceDetect()Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 1275
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraVideoModeTemplate()Z

    .line 1276
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 1277
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 1278
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraHardwareID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    .line 1279
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getHwLevel()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 1280
    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    iput v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 1281
    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    iput v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 1282
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getFps()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    .line 1283
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraAntiShake()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    .line 1284
    sget-object v1, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInternalSettings settings.mEnableStabilization = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isUseMaxWidthTakePicture()Z

    move-result v2

    iput-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    .line 1286
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getMaxWidthTakePictureSizeAccuracy()F

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 1287
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getMaxWidth()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    .line 1288
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCamera2OutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 1289
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    iget-object v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v3, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iput v3, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1290
    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iput v2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1291
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableFallback()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableFallBack:Z

    .line 1292
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableZsl()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    .line 1293
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getRetryCnt()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    .line 1294
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getmRetryStartPreviewCnt()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    .line 1295
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCamera2RetryCnt()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCamera2RetryCnt:I

    .line 1296
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFrameRateStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    .line 1297
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getExtParameters()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    .line 1298
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCaptureFlashStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    .line 1299
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getOptionFlag()B

    move-result p0

    iput-byte p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptionFlags:B

    .line 1300
    sput-byte p0, Lcom/ss/android/ttvecamera/TECameraUtils;->mOptionFlags:B

    .line 1301
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getIsUseHint()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsUseHint:Z

    .line 1302
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getIsCameraOpenCloseSync()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 1303
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getIsForceCloseCamera()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    .line 1304
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableVBoost()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableVBoost:Z

    .line 1305
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getVBoostTimeout()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVBoostTimeoutMS:I

    .line 1306
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getFocusTimeout()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFocusTimeoutMS:I

    .line 1307
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableGcForCameraMetadataThreshold()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 1308
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getFpsMaxLimit()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    .line 1309
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isOptCameraSceneFps()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    .line 1310
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableManualReleaseCaptureResult()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 1311
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isSyncModeOnCamera2()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 1312
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableRefactorFocusAndMeter()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 1313
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_camera2_monitor_gyroscope"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    .line 1314
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraZoomLimitFactor()F

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    .line 1315
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getWideFOV()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableWideFOV:Z

    .line 1316
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_RDHW:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v4, "enable_video_hdr"

    const-string v5, "ENABLE_VIDEO_HDR"

    const/4 v6, 0x1

    if-ne p0, v2, :cond_175

    .line 1318
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object p0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    if-ne p0, v2, :cond_165

    .line 1319
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v2, "enable_video_stabilization"

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1321
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraHdrDisableFromCenter()Z

    move-result p0

    if-nez p0, :cond_18b

    .line 1322
    invoke-static {v1, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18b

    .line 1326
    :cond_165
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraNoiseReduceFromCenter()Z

    move-result p0

    if-eqz p0, :cond_18b

    .line 1327
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v2, "noise_reduce"

    const-string v4, "fast"

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18b

    .line 1330
    :cond_175
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_OGXM_V2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne p0, v2, :cond_18b

    .line 1331
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraHdrDisableFromCenter()Z

    move-result p0

    if-nez p0, :cond_18b

    .line 1332
    invoke-static {v1, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1336
    :cond_18b
    :goto_18b
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isPreferOpenCameraByCameraId()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreferOpenCameraByCameraId:Z

    .line 1338
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnablePreviewingFallback()Z

    move-result p0

    if-eqz p0, :cond_19a

    .line 1339
    iput-boolean v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    goto :goto_1ac

    .line 1341
    :cond_19a
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_camera_enable_previewing_fallback"

    iget-boolean v4, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    invoke-virtual {p0, v2, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    .line 1343
    :goto_1ac
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera previewing fallback enabled: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableBackGroundStrategy()Z

    move-result p0

    if-eqz p0, :cond_1cb

    .line 1346
    iput-boolean v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    goto :goto_1dd

    .line 1348
    :cond_1cb
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_background_strategy"

    iget-boolean v4, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    invoke-virtual {p0, v2, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    .line 1350
    :goto_1dd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_ENABLE_BACKGROUND_STRATEGY : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableOpenCamera1Opt()Z

    move-result p0

    if-eqz p0, :cond_1fc

    .line 1353
    iput-boolean v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    goto :goto_20c

    .line 1355
    :cond_1fc
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_open_camera1_optimize"

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 1357
    :goto_20c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable open camera1 opt : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableOpenCamera1Crs()Z

    move-result p0

    if-eqz p0, :cond_22b

    .line 1361
    iput-boolean v6, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    goto :goto_23b

    .line 1363
    :cond_22b
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_open_camera1_crs"

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    .line 1365
    :goto_23b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable open camera1 crs : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableRecordStream()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecordStream:Z

    .line 1367
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getEnableRecord60Fps()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecord60Fps:Z

    .line 1368
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getRecordStreamFolderPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 1369
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getFpsRange()[I

    move-result-object p0

    .line 1370
    new-instance v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    aget v2, p0, v3

    aget p0, p0, v6

    invoke-direct {v1, v2, p0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    iput-object v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    .line 1371
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableForceRestartWhenCameraError()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    .line 1372
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isBindSurfaceLifecycleToCamera()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 1373
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_enable_camera_devices_cache"

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1374
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableYuvBufferCapture()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    .line 1375
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_camera2_zsl_capture"

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    .line 1376
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraPreviewIndependent:Z

    .line 1377
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_camera_api2_detect"

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    .line 1378
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_camera_zoom_ratio_max"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;F)F

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    .line 1379
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_camera_zoom_ratio_min"

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;F)F

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    .line 1380
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getMetadataConfig()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsGetMetadata:Z

    .line 1381
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_camera2_deferred_surface"

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    .line 1382
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_collect_camera_capbilities"

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCollectCapbilities:Z

    .line 1383
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isEnableCameraFpsDoubleCheckInImageMode()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCameraFpsDoubleCheckInImageMode:Z

    .line 1384
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getDefaultZoomRatio()F

    move-result p0

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    return-object v0
.end method

.method private getCameraCapabilitiesForBytebench()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture$7;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VECameraCapture$7;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraCapabilitiesForBytebench(Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1180
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 1181
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->reportToByteBench(Lorg/json/JSONObject;)V

    :cond_16
    return-void
.end method

.method private getConfigAntiShakeMode()I
    .registers 3

    .line 1459
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_camera_stablization"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getConfigOfAiNightVideo()I
    .registers 3

    .line 1466
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_camera_ai_augmentation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getConfigOfMultiCameraZoom()Z
    .registers 3

    .line 1473
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_support_camera_multicam_zoom"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getConfigWideAngleMode()I
    .registers 3

    .line 1452
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_camera_wide_angle"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static queryDeviceFeatures(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;Landroid/os/Bundle;)V
    .registers 3

    .line 1143
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryDeviceFeatures(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method private reportToByteBench(Lorg/json/JSONObject;)V
    .registers 4

    .line 1187
    :try_start_0
    const-string v0, "camera_type"

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    const-string v0, "camera_facing"

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1189
    const-string v0, "camera_stabilization"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigAntiShakeMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1190
    const-string v0, "camera_wide_angle"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigWideAngleMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1191
    const-string v0, "camera_ai_night_video"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigOfAiNightVideo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    const-string v0, "camera_multicamera_zoom"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigOfMultiCameraZoom()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1193
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    const-string v0, "bytebench_camera"

    invoke-virtual {p0, v0, p1}, Lcom/benchmark/runtime/BTCStrategyManagement;->reportQuota(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_57

    :catch_57
    return-void
.end method

.method private setCameraApplog(Ljava/lang/String;)V
    .registers 4

    .line 1609
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1611
    const-string v0, "resultCode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1612
    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 1614
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private tryWaitSwitchTask(Lcom/ss/android/ttvecamera/TECameraSettings;)V
    .registers 8

    .line 340
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    .line 344
    iget-boolean v3, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 345
    iput-boolean v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    move v1, v3

    .line 347
    :cond_f
    sget-object v3, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryWaitSwitchTask, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6e

    .line 349
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchTaskLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xa

    .line 352
    :goto_2c
    :try_start_2c
    iget-object v3, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-eqz v3, :cond_6a

    .line 353
    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraState()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_43

    if-eq v3, v2, :cond_6a

    if-lez v1, :cond_6a

    add-int/lit8 v1, v1, -0x1

    .line 357
    :try_start_3a
    iget-object v3, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchTaskLock:Ljava/lang/Object;

    const/16 v4, 0x64

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_42} :catch_45
    .catchall {:try_start_3a .. :try_end_42} :catchall_43

    goto :goto_49

    :catchall_43
    move-exception p0

    goto :goto_6c

    :catch_45
    move-exception v3

    .line 359
    :try_start_46
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    :goto_49
    sget-object v3, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait switch task, to mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", try block...count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 364
    :cond_6a
    monitor-exit v0

    goto :goto_6e

    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_46 .. :try_end_6d} :catchall_43

    throw p0

    :cond_6e
    :goto_6e
    return-void
.end method

.method private updateAllCameraFeatures(Landroid/content/Context;)V
    .registers 4

    .line 1164
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1165
    const-string v0, "device_support_wide_angle_mode"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigWideAngleMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    const-string v0, "device_support_antishake_mode"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigAntiShakeMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    const-string v0, "device_support_ai_night_video"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigOfAiNightVideo()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1168
    const-string v0, "device_support_multicamera_zoom"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigOfMultiCameraZoom()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->updateAllCameraFeatures(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public cancelFocus()V
    .registers 1

    .line 797
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->cancelFocus()I

    return-void
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I
    .registers 3

    .line 724
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->captureBurst(Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I

    move-result p0

    return p0
.end method

.method public changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z
    .registers 6

    .line 1838
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    .line 1839
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isBindSurfaceLifecycleToCamera()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq v0, v3, :cond_21

    move v1, v2

    :cond_21
    if-eqz v1, :cond_2a

    .line 1840
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-eqz v0, :cond_2a

    .line 1841
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->abortSession()I

    :cond_2a
    if-nez v1, :cond_30

    .line 1845
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VECameraCapture;->stopPreview(Z)I

    goto :goto_33

    .line 1847
    :cond_30
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->stopPreview()I

    .line 1850
    :goto_33
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->setPreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    if-nez v1, :cond_3b

    .line 1853
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->newSurfaceTexture()V

    .line 1855
    :cond_3b
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->startPreview()I

    .line 1856
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    iget v0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/vesdk/VECameraSettings;->setPreviewSize(II)V

    return v2

    :cond_48
    return v1
.end method

.method public changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V
    .registers 3

    .line 1913
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V

    return-void
.end method

.method public close()I
    .registers 2

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->close(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public close(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 504
    const-string v0, "VECameraCapture-close(cert)"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 506
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->disConnect(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    .line 507
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0
.end method

.method public close(Z)I
    .registers 3

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->close(ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public close(ZLcom/bytedance/bpea/basics/Cert;)I
    .registers 5

    .line 530
    const-string v0, "VECameraCapture-close(async,cert)"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 532
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->disConnect(ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    .line 533
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0
.end method

.method public destroy()V
    .registers 5

    .line 544
    const-string v0, "VECameraCapture-destroy"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 545
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    .line 546
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    .line 547
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSATZoomListener:Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;

    .line 548
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    .line 549
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mContext:Landroid/content/Context;

    .line 550
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    .line 551
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    .line 552
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v1, :cond_35

    .line 553
    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraSettings;->clean()V

    .line 554
    sget-object v1, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[destroy] clean camera params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 557
    :cond_35
    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->getLogLevel()B

    move-result p0

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerLogOutput(BLcom/ss/android/ttvecamera/TELogUtils$ILog;)V

    .line 559
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerException(Lcom/ss/android/ttvecamera/TECameraExceptionMonitor$IExceptionMonitor;)V

    .line 560
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void
.end method

.method public downExposureCompensation()V
    .registers 1

    .line 1957
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->downExposureCompensation()V

    return-void
.end method

.method public enableCaf()V
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->enableCaf()I

    return-void
.end method

.method public enableMulticamZoom(Z)V
    .registers 2

    .line 2225
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->enableMulticamZoom(Z)V

    return-void
.end method

.method public enableSmooth()Z
    .registers 1

    .line 916
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;->enableSmooth()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public focusAtPoint(IIFII)I
    .registers 6

    .line 781
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/ttvecamera/TECameraCapture;->focusAtPoint(IIFII)I

    move-result p0

    return p0
.end method

.method public focusAtPoint(Lcom/ss/android/vesdk/VEFocusSettings;)I
    .registers 2

    .line 786
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->convert(Lcom/ss/android/vesdk/VEFocusSettings;)Lcom/ss/android/ttvecamera/TEFocusSettings;

    move-result-object p1

    .line 787
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result p0

    return p0
.end method

.method public getApertureRange(Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)[F
    .registers 2

    .line 2079
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getApertureRange(Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)[F

    move-result-object p0

    return-object p0
.end method

.method public getCameraAllFeatures(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    .line 1154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1155
    const-string v1, "device_support_wide_angle_mode"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigWideAngleMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1156
    const-string v1, "device_support_antishake_mode"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigAntiShakeMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    const-string v1, "device_support_ai_night_video"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigOfAiNightVideo()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1158
    const-string v1, "device_support_multicamera_zoom"

    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getConfigOfMultiCameraZoom()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1159
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraAllFeatures(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCameraCaptureSize()Lcom/ss/android/vesdk/VESize;
    .registers 4

    .line 1261
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraCaptureSize()[I

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1266
    :cond_a
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    return-object v0
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;
    .registers 1

    .line 1922
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 1

    .line 668
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object p0

    return-object p0
.end method

.method public getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;
    .registers 1

    .line 1067
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    return-object p0
.end method

.method public getCameraState()I
    .registers 1

    .line 1221
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraState()I

    move-result p0

    return p0
.end method

.method public getFOV(Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)[F
    .registers 2

    .line 1006
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getFOV(Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)[F

    move-result-object p0

    return-object p0
.end method

.method public getFlashMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;
    .registers 3

    .line 2169
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getFlashMode()I

    move-result p0

    .line 2170
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_OFF:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    const/4 v1, 0x4

    if-ne p0, v1, :cond_e

    .line 2172
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_RED_EYE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    return-object p0

    :cond_e
    const/4 v1, 0x2

    if-ne p0, v1, :cond_14

    .line 2174
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_TORCH:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    return-object p0

    :cond_14
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1a

    .line 2176
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_ON:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    return-object p0

    :cond_1a
    const/4 v1, 0x3

    if-ne p0, v1, :cond_20

    .line 2178
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_AUTO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    return-object p0

    :cond_20
    return-object v0
.end method

.method public getISO(Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I
    .registers 2

    .line 2043
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getISO(Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I

    move-result p0

    return p0
.end method

.method public getISORange(Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I
    .registers 2

    .line 2024
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getISORange(Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I

    move-result-object p0

    return-object p0
.end method

.method public getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F
    .registers 2

    .line 2100
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F

    move-result p0

    return p0
.end method

.method public getPictureSize()Lcom/ss/android/vesdk/VESize;
    .registers 4

    .line 2148
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getPictureSize()[I

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2152
    :cond_a
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    return-object v0
.end method

.method public getPreviewFps()[I
    .registers 1

    .line 1250
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getPreviewFps()[I

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFrameSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 1240
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewFrameSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getPreviewSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 1207
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getShaderStep(F)V
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mShaderListener:Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;

    if-eqz p0, :cond_7

    .line 957
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;->getShaderStep(F)V

    :cond_7
    return-void
.end method

.method public getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J
    .registers 2

    .line 2056
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)I
    .registers 5

    .line 141
    const-string v0, "VECameraCapture-init"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 144
    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/VECameraCapture;->createInternalSettings(Lcom/ss/android/vesdk/VECameraSettings;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz p2, :cond_29

    if-eqz p1, :cond_29

    iget v0, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 146
    iget v0, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-eq v0, v1, :cond_1e

    .line 147
    iput v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 149
    :cond_1e
    iput v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 150
    iget-object p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iput-object p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    const/4 p2, 0x1

    .line 151
    iput-boolean p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 152
    iput-boolean p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 154
    :cond_29
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 155
    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->getLogLevel()B

    move-result p1

    new-instance p2, Lcom/ss/android/vesdk/VECameraCapture$1;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/VECameraCapture$1;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerLogOutput(BLcom/ss/android/ttvecamera/TELogUtils$ILog;)V

    .line 161
    new-instance p1, Lcom/ss/android/vesdk/VECameraCapture$2;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/VECameraCapture$2;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerMonitor(Lcom/ss/android/ttvecamera/TECameraMonitor$IMonitor;)V

    .line 182
    new-instance p1, Lcom/ss/android/vesdk/VECameraCapture$3;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/VECameraCapture$3;-><init>(Lcom/ss/android/vesdk/VECameraCapture;)V

    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerException(Lcom/ss/android/ttvecamera/TECameraExceptionMonitor$IExceptionMonitor;)V

    .line 188
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    const/4 p0, 0x0

    return p0
.end method

.method public isARCoreSupported(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)Z
    .registers 4

    .line 1902
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p2

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq p2, v0, :cond_25

    .line 1903
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->isARCoreSupported(Landroid/content/Context;)Z

    move-result p0

    .line 1904
    sget-object p1, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isARCoreSupported : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 1907
    :cond_25
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "isARCoreSupported : false "

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isAutoExposureLockSupported()Z
    .registers 1

    .line 1966
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->isAutoExposureLockSupported()Z

    move-result p0

    return p0
.end method

.method public isAutoFocusLockSupported()Z
    .registers 1

    .line 1983
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->isAutoExposureLockSupported()Z

    move-result p0

    return p0
.end method

.method public isCameraSwitchState()Z
    .registers 1

    .line 1230
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->isCameraSwitchState()Z

    move-result p0

    return p0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 1

    .line 1930
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->isSupportedExposureCompensation()Z

    move-result p0

    return p0
.end method

.method public isTorchSupported()Z
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->isTorchSupported()Z

    move-result p0

    return p0
.end method

.method public newSurfaceTexture()V
    .registers 3

    .line 1892
    sget-object v0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v1, "newSurfaceTexture..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1893
    iput v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    return-void
.end method

.method public notifyHostForegroundVisible(Z)V
    .registers 2

    .line 2133
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->notifyHostForegroundVisible(Z)V

    return-void
.end method

.method public onBackGround()V
    .registers 3

    .line 2116
    sget-object v0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v1, "onBackGround"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->changeAppLifeCycle(Z)V

    return-void
.end method

.method public onCaptureStarted(II)V
    .registers 8

    .line 1627
    const-string v0, "VECameraCapture-onCaptureStarted"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v1, 0x2

    if-eqz v0, :cond_7f

    .line 1631
    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    iget v3, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-direct {p0, v3}, Lcom/ss/android/vesdk/VECameraCapture;->converFacing(I)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VECameraSettings;->setCameraFacing(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V

    .line 1632
    const-string v2, "te_camera_api"

    if-ne p1, v1, :cond_20

    const-string v3, "cameraAPI2"

    goto :goto_28

    :catchall_1d
    move-exception p1

    goto/16 :goto_d5

    :cond_20
    const/4 v3, 0x1

    if-ne p1, v3, :cond_26

    const-string v3, "cameraAPI1"

    goto :goto_28

    :cond_26
    const-string v3, "Private API"

    :goto_28
    invoke-static {v2, v3}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v2, :cond_55

    .line 1634
    const-string v2, "te_camera_texture_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :cond_55
    iget-object v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v2, :cond_7f

    .line 1637
    const-string v2, "te_camera_preview_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :cond_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_6 .. :try_end_80} :catchall_1d

    .line 1642
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    if-nez p2, :cond_cc

    .line 1644
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->convertCameraType(I)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p2

    .line 1645
    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v2, p2}, Lcom/ss/android/vesdk/VECameraSettings;->setCameraType(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)V

    .line 1646
    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v2, p2}, Lcom/ss/android/vesdk/VECameraSettings;->setConfigCameraType(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)V

    .line 1647
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->startPreview()I

    .line 1648
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsFirstOpen:Z

    if-eqz p2, :cond_9c

    const/4 p2, 0x0

    .line 1649
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsFirstOpen:Z

    :cond_9c
    if-eqz v0, :cond_b5

    .line 1652
    invoke-interface {v0}, Lcom/ss/android/vesdk/VEListener$VECameraStateListener;->cameraOpenSuccess()V

    .line 1653
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Camera type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 1657
    :cond_b5
    :try_start_b5
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1658
    const-string p2, "cameraType"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1659
    const-string p1, "vesdk_event_camera_type"

    const-string p2, "performance"

    invoke-static {p1, p0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_b5 .. :try_end_c6} :catch_c7

    goto :goto_d1

    :catch_c7
    move-exception p0

    .line 1661
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d1

    :cond_cc
    if-eqz v0, :cond_d1

    .line 1665
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/VEListener$VECameraStateListener;->cameraOpenFailed(I)V

    .line 1668
    :cond_d1
    :goto_d1
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void

    .line 1640
    :goto_d5
    :try_start_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_1d

    throw p1
.end method

.method public onCaptureStopped(I)V
    .registers 4

    .line 1701
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    if-eqz p0, :cond_a

    const/4 v0, 0x5

    .line 1703
    const-string v1, "Camera is closed!"

    invoke-interface {p0, v0, p1, v1}, Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onChange(IFZ)V
    .registers 4

    .line 944
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    if-eqz p0, :cond_7

    .line 945
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;->onChange(IFZ)V

    :cond_7
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    .line 1486
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    if-eqz p0, :cond_7

    .line 1488
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;->onError(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onForeGround()V
    .registers 3

    .line 2122
    sget-object v0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v1, "onForeGround"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->changeAppLifeCycle(Z)V

    return-void
.end method

.method public onInfo(IILjava/lang/String;)V
    .registers 10

    .line 1494
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    .line 1495
    sget-object v1, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInfo, infoType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onInfo, infoType = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v1, p1, :cond_52

    .line 1498
    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/ss/android/vesdk/VECameraCapture;->updateAllCameraFeatures(Landroid/content/Context;)V

    .line 1499
    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraCapabilitiesForBytebench()V

    :cond_52
    const/4 v2, 0x3

    if-eqz v0, :cond_5d

    if-eq p1, v2, :cond_59

    move v3, p1

    goto :goto_5a

    :cond_59
    const/4 v3, 0x6

    .line 1508
    :goto_5a
    invoke-interface {v0, v3, p2, p3}, Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_5d
    const/4 v0, 0x0

    if-nez p1, :cond_63

    .line 1512
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mHasFirstFrameCaptured:Z

    goto :goto_bc

    :cond_63
    const/16 v3, 0x32

    const/4 v4, 0x2

    if-ne p1, v3, :cond_ab

    if-eqz p3, :cond_ab

    .line 1514
    const-string v2, "x"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bc

    .line 1515
    array-length v3, v2

    if-ne v3, v4, :cond_bc

    .line 1517
    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    .line 1518
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    if-eqz v1, :cond_9f

    .line 1519
    invoke-virtual {v1}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 1520
    invoke-virtual {v1}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;->onFrameSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V

    .line 1522
    :cond_9f
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    iget v2, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewFrameSize:Lcom/ss/android/vesdk/VESize;

    goto :goto_bc

    :cond_ab
    if-ne p1, v2, :cond_b6

    if-ne p2, v4, :cond_b6

    .line 1525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewStartTime:J

    goto :goto_bc

    :cond_b6
    const/16 v2, 0x33

    if-ne p1, v2, :cond_bc

    .line 1527
    iput v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    :cond_bc
    :goto_bc
    const/16 v1, 0x68

    .line 1530
    const-string v2, ""

    const-string v3, "behavior"

    if-ne p1, v1, :cond_d5

    .line 1531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v2}, Lcom/ss/android/vesdk/VECameraCapture;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1532
    const-string v4, "vesdk_event_will_change_flash_mode"

    invoke-static {v4, v1, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_d5
    const/16 v1, 0x69

    if-ne p1, v1, :cond_ea

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v2, v1}, Lcom/ss/android/vesdk/VECameraCapture;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1536
    const-string v4, "vesdk_event_did_change_flash_mode"

    invoke-static {v4, v1, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_ea
    const/16 v1, 0x6a

    if-ne p1, v1, :cond_ff

    .line 1540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v2}, Lcom/ss/android/vesdk/VECameraCapture;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1541
    const-string v4, "vesdk_event_will_start_camera"

    invoke-static {v4, v1, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_ff
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_114

    .line 1546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v2, v1}, Lcom/ss/android/vesdk/VECameraCapture;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1547
    const-string v4, "vesdk_event_did_start_camera"

    invoke-static {v4, v1, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_114
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_129

    .line 1551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v2}, Lcom/ss/android/vesdk/VECameraCapture;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1552
    const-string v4, "vesdk_event_will_stop_camera"

    invoke-static {v4, v1, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_129
    const/16 v1, 0x6d

    if-ne p1, v1, :cond_13e

    .line 1556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v2, v1}, Lcom/ss/android/vesdk/VECameraCapture;->buildInfoJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 1557
    const-string v1, "vesdk_event_did_stop_camera"

    invoke-static {v1, p3, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13e
    const/16 p3, 0x71

    if-ne p1, p3, :cond_147

    .line 1561
    const-string p3, "vesdk_event_camera_stablization"

    invoke-direct {p0, p3}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraApplog(Ljava/lang/String;)V

    :cond_147
    const/16 p3, 0x70

    if-ne p1, p3, :cond_150

    .line 1565
    const-string p3, "vesdk_event_camera_wide_angle"

    invoke-direct {p0, p3}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraApplog(Ljava/lang/String;)V

    :cond_150
    const/16 p3, 0x72

    if-ne p1, p3, :cond_159

    .line 1569
    const-string p3, "vesdk_event_camera_zoom"

    invoke-direct {p0, p3}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraApplog(Ljava/lang/String;)V

    :cond_159
    const/16 p3, 0x73

    if-ne p1, p3, :cond_162

    .line 1573
    const-string p3, "vesdk_event_camera_exposure_compensation"

    invoke-direct {p0, p3}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraApplog(Ljava/lang/String;)V

    :cond_162
    const/16 p0, 0x74

    if-ne p1, p0, :cond_17f

    .line 1578
    :try_start_166
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1579
    const-string p1, "flashMode"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1581
    const-string p1, "resultCode"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1582
    const-string p1, "vesdk_event_camera_flash_mode"

    invoke-static {p1, p0, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_17a
    .catch Lorg/json/JSONException; {:try_start_166 .. :try_end_17a} :catch_17b

    goto :goto_17f

    :catch_17b
    move-exception p0

    .line 1584
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1588
    :cond_17f
    :goto_17f
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void
.end method

.method public onZoomSupport(IZZFLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 930
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    if-eqz p0, :cond_7

    .line 931
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;->onZoomSupport(IZZFLjava/util/List;)V

    :cond_7
    return-void
.end method

.method public open()I
    .registers 2

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->open(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public open(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-nez v1, :cond_9

    goto :goto_54

    .line 237
    :cond_9
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-lez v1, :cond_51

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-gtz v0, :cond_14

    goto :goto_51

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_22

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    .line 243
    :cond_22
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_40

    .line 246
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->createInternalSettings(Lcom/ss/android/vesdk/VECameraSettings;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 248
    :cond_40
    const-string v0, "VECameraCapture-open"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->connect(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    .line 250
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0

    :cond_51
    :goto_51
    const/16 p0, -0x64

    return p0

    .line 234
    :cond_54
    :goto_54
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "mCameraParams == null, please init VECameraCapture!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0
.end method

.method public process(Lcom/ss/android/vesdk/VECameraSettings$Operation;)V
    .registers 3

    if-nez p1, :cond_a

    .line 1031
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "process with null operation"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1034
    :cond_a
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    new-instance v0, Lcom/ss/android/ttvecamera/TECameraSettings$Operation;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings$Operation;->getType()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/ss/android/ttvecamera/TECameraSettings$Operation;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->process(Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V

    return-void
.end method

.method public queryFeatures(Landroid/os/Bundle;)V
    .registers 9

    if-nez p1, :cond_a

    .line 1046
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "queryFeatures with null features"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1049
    :cond_a
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryFeatures(Landroid/os/Bundle;)V

    .line 1050
    const-string p0, "camera_preview_size"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1051
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v0, :cond_29

    .line 1052
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    iget v2, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v1, v2, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1054
    :cond_2d
    const-string p0, "support_video_sizes"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1055
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3c

    goto :goto_60

    .line 1057
    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_5d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1059
    new-instance v5, Lcom/ss/android/vesdk/VESize;

    iget v6, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v4, v4, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-direct {v5, v6, v4}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 1061
    :cond_5d
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public queryFeatures(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Landroid/os/Bundle;)V
    .registers 5

    if-nez p2, :cond_a

    .line 1124
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "queryFeatures&id with null features"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1127
    :cond_a
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1128
    const-string p0, "camera_preview_size"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1129
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz p1, :cond_31

    .line 1130
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    iget v1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v0, v1, p1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_35
    return-void
.end method

.method public queryShaderZoomAbility()F
    .registers 2

    .line 840
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryShaderZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)F

    move-result p0

    return p0
.end method

.method public queryZoomAbility()I
    .registers 2

    const/4 v0, 0x0

    .line 817
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->queryZoomAbility(Z)I

    move-result p0

    return p0
.end method

.method public queryZoomAbility(Z)I
    .registers 3

    .line 829
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)I

    move-result p0

    return p0
.end method

.method public setAperture(I)V
    .registers 2

    .line 2090
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setAperture(F)V

    return-void
.end method

.method public setAutoExposureLock(Z)V
    .registers 2

    .line 1975
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setAutoExposureLock(Z)V

    return-void
.end method

.method public setAutoFocusLock(Z)V
    .registers 2

    .line 1992
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setAutoFocusLock(Z)V

    return-void
.end method

.method public setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V
    .registers 2

    .line 968
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    return-void
.end method

.method public setDeviceRotation(I)V
    .registers 2

    .line 2216
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setDeviceRotation(I)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 1941
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setExposureCompensation(I)V

    return-void
.end method

.method public setFeatureParameters(Landroid/os/Bundle;)V
    .registers 2

    .line 1017
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setFeatureParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFpsConfigListener(Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;)V
    .registers 3

    .line 996
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mFpsConfigListener:Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;

    .line 997
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;)V

    return-void
.end method

.method public setISO(I)V
    .registers 2

    .line 2033
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setISO(I)V

    return-void
.end method

.method public setListenerFromRecorder(Ljava/util/ArrayList;Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;",
            ")V"
        }
    .end annotation

    .line 1098
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mListFromRecorder:Ljava/util/ArrayList;

    .line 1099
    iput-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mRecorderCameraListener:Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;

    .line 1100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1101
    const-string v1, "iso"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->isoCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VECameraCapture;->getISO(Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 1102
    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->isoCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VECameraCapture;->getISO(Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1103
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->isoRangeCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VECameraCapture;->getISORange(Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const-string v2, "maxiso"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->isoRangeCallback:Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VECameraCapture;->getISORange(Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const-string v2, "miniso"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1106
    :cond_3f
    const-string v1, "exposuretime"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->isSupportedExposureCompensation()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 1107
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1108
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    const-string v1, "maxexposuretime"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1109
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    const-string v1, "minexposuretime"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1110
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    const-string p1, "step"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1112
    :cond_77
    invoke-interface {p2, v0}, Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public setManualFocusDistance(F)V
    .registers 2

    .line 2111
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setManualFocusDistance(F)V

    return-void
.end method

.method public setParamFromRecorder(Landroid/os/Bundle;)V
    .registers 4

    .line 1072
    const-string v0, "exposurecompensation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3a

    .line 1074
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->isSupportedExposureCompensation()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1075
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 1076
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->setExposureCompensation(I)V

    .line 1077
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public setPictureSize(II)V
    .registers 3

    .line 2143
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->setPictureSize(II)V

    return-void
.end method

.method public setPictureSizeListener(Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;)V
    .registers 2

    .line 977
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPictureSizeListener:Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;

    return-void
.end method

.method public setPreviewFpsRange(Lcom/ss/android/ttvecamera/TEFrameRateRange;)V
    .registers 2

    .line 2211
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setPreviewFpsRange(Lcom/ss/android/ttvecamera/TEFrameRateRange;)V

    return-void
.end method

.method public declared-synchronized setPreviewRatio(FLcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 7

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    const/4 p1, 0x0

    if-eqz p2, :cond_15

    new-instance v2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v3, p2, Lcom/ss/android/vesdk/VESize;->height:I

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-direct {v2, v3, p2}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    goto :goto_16

    :catchall_13
    move-exception p1

    goto :goto_4b

    :cond_15
    move-object v2, p1

    :goto_16
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraCapture;->getBestPreviewSize(FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_13

    if-nez p2, :cond_1e

    .line 200
    monitor-exit p0

    return-object p1

    .line 202
    :cond_1e
    :try_start_1e
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    iget v0, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iput v0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 203
    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iput p2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 204
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput v0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 205
    iput p2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 207
    new-instance p1, Lcom/ss/android/vesdk/VECameraSettings$Builder;

    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-direct {p1, p2}, Lcom/ss/android/vesdk/VECameraSettings$Builder;-><init>(Lcom/ss/android/vesdk/VECameraSettings;)V

    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    iget v0, p2, Lcom/ss/android/vesdk/VESize;->height:I

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 208
    invoke-virtual {p1, v0, p2}, Lcom/ss/android/vesdk/VECameraSettings$Builder;->setPreviewSize(II)Lcom/ss/android/vesdk/VECameraSettings$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings$Builder;->build()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 210
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_13

    monitor-exit p0

    return-object p1

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_13

    throw p1
.end method

.method public setPreviewSize(Lcom/ss/android/vesdk/VESize;)Z
    .registers 6

    .line 1865
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    if-eqz v0, :cond_2a

    .line 1867
    invoke-virtual {v0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/frame/TECapturePipeline;

    .line 1868
    invoke-virtual {v1}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1871
    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iget v3, p1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-direct {v0, v2, v3}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->setSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V

    .line 1877
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_42

    .line 1878
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    iget v1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iput v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1879
    iget v1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iput v1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1880
    iget-object p0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 1881
    iput v1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    const/4 p0, 0x1

    return p0

    .line 1883
    :cond_42
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "setPreviewSize failed: params is null!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewSizeListener(Lcom/ss/android/vesdk/VEListener$VEPreviewSizeCallback;)V
    .registers 3

    .line 986
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSizeListener:Lcom/ss/android/vesdk/VEListener$VEPreviewSizeCallback;

    .line 987
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->registerPreviewListener(Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;)V

    return-void
.end method

.method public setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V
    .registers 2

    .line 902
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSATZoomListener:Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;

    .line 903
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-eqz p1, :cond_b

    .line 904
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    invoke-virtual {p1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;)V

    :cond_b
    return-void
.end method

.method public setSceneMode(I)V
    .registers 2

    .line 2164
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->setSceneMode(I)V

    return-void
.end method

.method public setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V
    .registers 2

    .line 892
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mShaderListener:Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;

    return-void
.end method

.method public setShutterTime(J)V
    .registers 3

    .line 2066
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->setShutterTime(J)V

    return-void
.end method

.method public setWhiteBalance(ZLjava/lang/String;)V
    .registers 4

    .line 2011
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->isSupportWhileBalance()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2012
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->setWhileBalance(ZLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public setZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V
    .registers 2

    .line 883
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    return-void
.end method

.method public start(Lcom/ss/android/vesdk/ConcurrentList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;)I"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    if-eqz p1, :cond_1f

    .line 376
    invoke-virtual {p1}, Lcom/ss/android/vesdk/ConcurrentList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1f

    .line 380
    :cond_b
    sget-object p1, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v0, "start with TECapturePipeline list"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string p1, "VECameraCapture-start"

    invoke-static {p1}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->startPreview()I

    move-result p0

    .line 383
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0

    .line 377
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "start with empty TECapturePipeline list"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public startPreview()I
    .registers 14

    .line 395
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    if-eqz v0, :cond_135

    invoke-virtual {v0}, Lcom/ss/android/vesdk/ConcurrentList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_135

    .line 400
    :cond_c
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 401
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v0, "startPreview when camera is closed!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 405
    :cond_1e
    const-string v0, "VECameraCapture-startPreview"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/frame/TECapturePipeline;

    if-eqz v4, :cond_11e

    .line 410
    invoke-virtual {v4}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isValid()Z

    move-result v5

    if-nez v5, :cond_51

    goto/16 :goto_11e

    .line 416
    :cond_51
    invoke-virtual {v4}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 417
    iget-object v3, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewCaptureListener:Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;

    .line 418
    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPreviewPipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    :goto_5b
    move-object v7, v3

    goto :goto_62

    .line 420
    :cond_5d
    invoke-virtual {v4}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    move-result-object v3

    goto :goto_5b

    .line 422
    :goto_62
    invoke-virtual {v4}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v3

    sget-object v5, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    const/4 v12, 0x1

    if-ne v3, v5, :cond_a9

    .line 423
    move-object v3, v4

    check-cast v3, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;

    .line 425
    iget v5, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    if-ne v5, v12, :cond_8f

    iget-boolean v5, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsFirstOpen:Z

    if-nez v5, :cond_8f

    .line 426
    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->release()V

    .line 427
    new-instance v5, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->getOESTextureId()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;-><init>(I)V

    .line 428
    invoke-virtual {v3, v5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 429
    iget v5, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    if-ne v5, v12, :cond_8f

    iput v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    .line 431
    :cond_8f
    new-instance v5, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    .line 432
    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v8

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->getOESTextureId()I

    move-result v10

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->getRecorderSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;ILandroid/view/Surface;)V

    goto :goto_113

    .line 433
    :cond_a9
    invoke-virtual {v4}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v3

    sget-object v5, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v3, v5, :cond_f7

    .line 434
    move-object v3, v4

    check-cast v3, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    .line 435
    iget v5, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    if-ne v5, v12, :cond_e1

    iget-boolean v5, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsFirstOpen:Z

    if-nez v5, :cond_e1

    .line 436
    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->release()V

    .line 437
    new-instance v5, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->getOESTextureId()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/ss/android/vesdk/graphics/TESurfaceTexture;-><init>(I)V

    .line 438
    invoke-virtual {v3, v5}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    if-eqz v7, :cond_d4

    .line 440
    invoke-interface {v7, v5}, Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 442
    :cond_d4
    iget v5, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    if-ne v5, v12, :cond_da

    iput v2, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    .line 443
    :cond_da
    sget-object v5, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v6, "NewSurfaceTexture..."

    invoke-static {v5, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_e1
    new-instance v5, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    .line 446
    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v8

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->getOESTextureId()I

    move-result v10

    invoke-direct/range {v5 .. v10}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;I)V

    goto :goto_113

    .line 448
    :cond_f7
    move-object v3, v4

    check-cast v3, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;

    .line 449
    new-instance v5, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v6

    .line 450
    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v8

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v10

    invoke-virtual {v3}, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;->getImageReaderCount()I

    move-result v11

    invoke-direct/range {v5 .. v11}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;ZLandroid/graphics/SurfaceTexture;Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    .line 453
    :goto_113
    iget-object v3, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v3, v5}, Lcom/ss/android/ttvecamera/TECameraCapture;->addCameraProvider(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)I

    .line 455
    invoke-virtual {v4, v0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->setFrameLandscape(Z)V

    move v3, v12

    goto/16 :goto_3b

    .line 411
    :cond_11e
    :goto_11e
    sget-object v4, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v5, "pipeline is not valid"

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_127
    if-eqz v3, :cond_130

    .line 457
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->start()I

    move-result p0

    goto :goto_131

    :cond_130
    const/4 p0, -0x1

    .line 458
    :goto_131
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0

    .line 396
    :cond_135
    :goto_135
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v0, "startPreview with empty TECapturePipeline list"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public startZoom(F)I
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    move-result p0

    return p0
.end method

.method public stopPreview()I
    .registers 2

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->stopPreview(Z)I

    move-result p0

    return p0
.end method

.method public stopPreview(Z)I
    .registers 3

    .line 479
    const-string v0, "VECameraCapture-stopPreview"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->stop(Z)I

    move-result p0

    .line 481
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0
.end method

.method public stopZoom()I
    .registers 2

    .line 862
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->stopZoom(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    move-result p0

    return p0
.end method

.method public switchCamera()I
    .registers 2

    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->switchCamera(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-nez v0, :cond_9

    .line 585
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_BACK:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 586
    :goto_b
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I
    .registers 3

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 5

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    .line 605
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_18

    .line 606
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "Camera server is not connected now!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 609
    :cond_18
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 610
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne v0, v1, :cond_2d

    .line 611
    :cond_2a
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->newSurfaceTexture()V

    .line 613
    :cond_2d
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCamera(ILcom/bytedance/bpea/basics/Cert;)I

    move-result p2

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z

    .line 616
    :try_start_3a
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 617
    const-string v0, "currentCamera"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    const-string p1, "resultCode"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 619
    const-string p1, "vesdk_event_recorder_change_camera"

    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_54} :catch_55

    return p2

    :catch_55
    move-exception p0

    .line 621
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public switchCamera(Lcom/ss/android/vesdk/VECameraSettings;)I
    .registers 3

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->switchCamera(Lcom/ss/android/vesdk/VECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public switchCamera(Lcom/ss/android/vesdk/VECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 5

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    .line 642
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 643
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->createInternalSettings(Lcom/ss/android/vesdk/VECameraSettings;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSwitchCamera:Z

    .line 645
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 646
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne v0, v1, :cond_26

    .line 647
    :cond_23
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->newSurfaceTexture()V

    .line 649
    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v0, p0, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCamera(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    .line 651
    :try_start_2e
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 652
    const-string v0, "currentCamera"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string p1, "resultCode"

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 654
    const-string p1, "vesdk_event_recorder_change_camera"

    const-string v0, "behavior"

    invoke-static {p1, p2, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_4c} :catch_4d

    return p0

    :catch_4d
    move-exception p1

    .line 656
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public switchCameraMode(I)I
    .registers 3

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->switchCameraMode(ILcom/ss/android/ttvecamera/TECameraSettings;)I

    move-result p0

    return p0
.end method

.method public switchCameraMode(ILcom/ss/android/ttvecamera/TECameraSettings;)I
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCameraMode(ILcom/ss/android/ttvecamera/TECameraSettings;)I

    move-result p0

    return p0
.end method

.method public switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)I
    .registers 3

    .line 706
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_OFF:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    goto :goto_1d

    .line 708
    :cond_6
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_ON:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_1d

    .line 710
    :cond_c
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_AUTO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-ne p1, v0, :cond_12

    const/4 p1, 0x3

    goto :goto_1d

    .line 712
    :cond_12
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_TORCH:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-ne p1, v0, :cond_18

    const/4 p1, 0x2

    goto :goto_1d

    .line 714
    :cond_18
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_RED_EYE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-ne p1, v0, :cond_24

    const/4 p1, 0x4

    .line 719
    :goto_1d
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchFlashMode(I)I

    move-result p0

    return p0

    :cond_24
    const/16 p0, -0x64

    return p0
.end method

.method public switchToARMode(Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;)V
    .registers 3

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->switchToARMode(Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public switchToARMode(Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;Lcom/bytedance/bpea/basics/Cert;)V
    .registers 8

    .line 276
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 277
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "Camera server is not connected now!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_10
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->createInternalSettings(Lcom/ss/android/vesdk/VECameraSettings;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-nez v0, :cond_22

    .line 284
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "click to switch ar camera failed, cameraParams is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_22
    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 289
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "click to switch ar camera failed, not support camera type"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4e

    .line 295
    sget-object v2, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click to switch ar camera, camera state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_4e
    iput v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    .line 299
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_59

    .line 300
    iput v3, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 302
    :cond_59
    iput v3, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 303
    iput-object p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    .line 304
    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 305
    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 306
    invoke-static {}, Lcom/ss/android/ttvecamera/armode/ArCoreManager;->getInstance()Lcom/ss/android/ttvecamera/armode/ArCoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttvecamera/armode/ArCoreManager;->init(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraSettings;)Z

    .line 308
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->tryWaitSwitchTask(Lcom/ss/android/ttvecamera/TECameraSettings;)V

    .line 309
    iget-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p1, p0, p2}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCamera(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 311
    :try_start_78
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 313
    const-string p1, "resultCode"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string p1, "vesdk_event_camera_arcore"

    const-string p2, "behavior"

    invoke-static {p1, p0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_8a} :catch_8b

    return-void

    :catch_8b
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public switchToNormalCamera()V
    .registers 2

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->switchToNormalCamera(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public switchToNormalCamera(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 323
    sget-object p0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string p1, "Camera server is not connected now!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_10
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    .line 329
    sget-object v1, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click to switch normal camera, camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 333
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VECameraCapture;->tryWaitSwitchTask(Lcom/ss/android/ttvecamera/TECameraSettings;)V

    .line 334
    iput v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mIsNeedNewSurfaceTexture:I

    .line 335
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->switchCamera(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    return-void
.end method

.method public switchTorch(Z)I
    .registers 2

    .line 692
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->toggleTorch(Z)I

    move-result p0

    return p0
.end method

.method public takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .registers 4

    .line 729
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p2, p1, p3}, Lcom/ss/android/ttvecamera/TECameraCapture;->takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    move-result p0

    return p0
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .registers 2

    .line 734
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    move-result p0

    return p0
.end method

.method public takePicture(Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;)I
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture$4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/VECameraCapture$4;-><init>(Lcom/ss/android/vesdk/VECameraCapture;Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraCapture;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    move-result p0

    .line 758
    :try_start_b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 759
    const-string v0, "resultCode"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string v0, "vesdk_event_recorder_take_picture"

    const-string v1, "behavior"

    invoke-static {v0, p1, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p1

    .line 762
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public tryRestartCamera()Z
    .registers 5

    .line 2189
    sget-object v0, Lcom/ss/android/vesdk/VECameraCapture;->TAG:Ljava/lang/String;

    const-string v1, "try restart camera..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/TECameraCapture;->getCameraState(Z)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_28

    if-eqz v1, :cond_28

    .line 2192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try restart camera failed, state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2195
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try restart camera...state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->close()I

    .line 2197
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraCapture;->open()I

    .line 2198
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraParams:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v0, 0x1

    if-eqz p0, :cond_49

    .line 2199
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    :cond_49
    return v0
.end method

.method public upExposureCompensation()V
    .registers 1

    .line 1949
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->upExposureCompensation()V

    return-void
.end method

.method public zoomV2(F)I
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mCameraCapture:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture;->zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    move-result p0

    return p0
.end method
