.class public Lcom/ss/android/medialib/camera/Camera2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/IESCameraInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final SESSION_STATE_ERROR:I = 0x4

.field private static final SESSION_STATE_IDLE:I = 0x0

.field private static final SESSION_STATE_OPENING:I = 0x1

.field private static final SESSION_STATE_PENDING:I = 0x2

.field private static final SESSION_STATE_RUNNING:I = 0x3

.field private static final STATE_PICTURE_TAKEN:I = 0x4

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Camera2"


# instance fields
.field private currentCameraPosition:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHWLevel:I

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

.field private mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

.field private mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

.field private mCameraRotate:I

.field private mCameraRotation:I

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

.field private mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCurrentAFState:I

.field private mDeviceHardwareSupportedLevel:I

.field private mFlashMode:I

.field private mFocusCancelRunnable:Ljava/lang/Runnable;

.field private mFocusTryCount:I

.field mFpsRange:[I

.field mFpsUnitFactor:I

.field private mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsFirstOpenCamera:Z

.field private mMainHandler:Landroid/os/Handler;

.field private volatile mManualFocusEngaged:Z

.field private mOutputSizes:[Landroid/util/Size;

.field mPictureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mPreviewImageReader:Landroid/media/ImageReader;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private volatile mSessionState:I

.field private mState:I

.field private mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mTakingPicture:Z

.field private mTargetPicSize:Landroid/util/Size;

.field private mZoomSize:Landroid/graphics/Rect;

.field private newCameraPosition:I

.field private sHeight:I

.field private sWidth:I

.field private shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

.field private zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->currentCameraPosition:I

    .line 100
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->newCameraPosition:I

    const/4 v0, 0x1

    .line 105
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHWLevel:I

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    .line 107
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z

    .line 108
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v2, 0x2

    .line 110
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsRange:[I

    .line 111
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    .line 112
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    .line 113
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mIsFirstOpenCamera:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mZoomSize:Landroid/graphics/Rect;

    .line 123
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I

    .line 126
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I

    .line 127
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I

    .line 141
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    .line 143
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/Camera2$1;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 177
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2$2;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/Camera2$2;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 1197
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2$10;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/Camera2$10;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 1265
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2$11;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/Camera2$11;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusCancelRunnable:Ljava/lang/Runnable;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private _calculateRect(II[FII)Landroid/graphics/Rect;
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    .line 1460
    iget-object v4, v0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SENSOR_INFO_ACTIVE_ARRAY_SIZE: [left, top, right, bottom] = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Camera2"

    invoke-static {v8, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v5, v0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 1465
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCameraCharacteristics:[width, height]: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1465
    const-string v9, "onAreaTouchEvent"

    invoke-static {v9, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1468
    aget v9, p3, v5

    const/4 v10, 0x1

    .line 1469
    aget v11, p3, v10

    .line 1472
    iget v12, v0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    .line 1473
    iget v13, v0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    .line 1476
    iget v14, v0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotate:I

    const/16 v15, 0x10e

    const/16 v5, 0x5a

    if-eq v5, v14, :cond_92

    if-ne v15, v14, :cond_8f

    goto :goto_92

    :cond_8f
    move v10, v12

    move v14, v13

    goto :goto_94

    :cond_92
    :goto_92
    move v14, v12

    move v10, v13

    :goto_94
    mul-int v15, v14, v1

    mul-int v5, v10, v2

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-lt v15, v5, :cond_af

    int-to-float v1, v1

    mul-float v1, v1, v17

    int-to-float v5, v10

    div-float/2addr v1, v5

    int-to-float v5, v14

    mul-float/2addr v5, v1

    int-to-float v2, v2

    sub-float/2addr v5, v2

    div-float v5, v5, v16

    move v2, v5

    move/from16 v5, v18

    goto :goto_bd

    :cond_af
    int-to-float v2, v2

    mul-float v2, v2, v17

    int-to-float v5, v14

    div-float/2addr v2, v5

    int-to-float v5, v10

    mul-float/2addr v5, v2

    int-to-float v1, v1

    sub-float/2addr v5, v1

    div-float v5, v5, v16

    move v1, v2

    move/from16 v2, v18

    :goto_bd
    add-float/2addr v9, v5

    div-float/2addr v9, v1

    add-float/2addr v11, v2

    div-float/2addr v11, v1

    const/16 v1, 0x5a

    if-ne v1, v3, :cond_ce

    int-to-float v1, v13

    sub-float v9, v1, v9

    move/from16 v19, v11

    move v11, v9

    move/from16 v9, v19

    goto :goto_d6

    :cond_ce
    const/16 v1, 0x10e

    if-ne v1, v3, :cond_d6

    int-to-float v1, v12

    sub-float/2addr v1, v11

    move v11, v9

    move v9, v1

    .line 1504
    :cond_d6
    :goto_d6
    iget-object v1, v0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_e8

    .line 1506
    const-string v1, "can\'t get crop region"

    invoke-static {v8, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_e8
    move-object v4, v1

    .line 1510
    :goto_e9
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1511
    iget v3, v0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    mul-int v5, v3, v1

    iget v10, v0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    mul-int v12, v10, v2

    if-le v5, v12, :cond_10d

    int-to-float v2, v2

    mul-float v2, v2, v17

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    int-to-float v3, v10

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    div-float v1, v1, v16

    move/from16 v19, v18

    move/from16 v18, v1

    :goto_10a
    move/from16 v1, v19

    goto :goto_11c

    :cond_10d
    int-to-float v1, v1

    mul-float v1, v1, v17

    int-to-float v5, v10

    div-float/2addr v1, v5

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    div-float v2, v2, v16

    move/from16 v19, v2

    move v2, v1

    goto :goto_10a

    :goto_11c
    mul-float/2addr v9, v2

    add-float v9, v9, v18

    .line 1522
    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v9, v3

    mul-float/2addr v11, v2

    add-float/2addr v11, v1

    .line 1523
    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v11, v1

    .line 1525
    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/Camera2;->getCameraPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_137

    .line 1526
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v11, v0, v11

    .line 1530
    :cond_137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p5, :cond_191

    float-to-double v1, v9

    .line 1533
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v9, v3

    const-wide v12, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v9, v12

    sub-double v9, v1, v9

    double-to-int v3, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v3, v10, v5}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1534
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v14, v3

    mul-double/2addr v14, v12

    add-double/2addr v1, v14

    double-to-int v1, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v10, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    float-to-double v1, v11

    .line 1535
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v14, v3

    mul-double/2addr v14, v12

    sub-double v14, v1, v14

    double-to-int v3, v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v10, v5}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1536
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v14, v3

    mul-double/2addr v12, v14

    add-double/2addr v1, v12

    double-to-int v1, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v10, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1e3

    :cond_191
    const/4 v10, 0x0

    float-to-double v1, v9

    .line 1538
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v12, v3

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v12, v14

    sub-double v12, v1, v12

    double-to-int v3, v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v3, v10, v5}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1539
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v12, v3

    mul-double/2addr v12, v14

    add-double/2addr v1, v12

    double-to-int v1, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v10, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    float-to-double v1, v11

    .line 1540
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v11, v3

    mul-double/2addr v11, v14

    sub-double v11, v1, v11

    double-to-int v3, v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v10, v5}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1541
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v11, v3

    mul-double/2addr v11, v14

    add-double/2addr v1, v11

    double-to-int v1, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v10, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1543
    :goto_1e3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect: [left, top, right, bottom] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic access$002(Lcom/ss/android/medialib/camera/Camera2;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    return p1
.end method

.method static synthetic access$1000(Lcom/ss/android/medialib/camera/Camera2;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/ss/android/medialib/camera/Camera2;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/medialib/camera/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ss/android/medialib/camera/Camera2;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/ss/android/medialib/camera/Camera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ss/android/medialib/camera/Camera2;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->unlockFocus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/ss/android/medialib/camera/Camera2;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    return p0
.end method

.method static synthetic access$1802(Lcom/ss/android/medialib/camera/Camera2;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->runPrecaptureSequence()V

    return-void
.end method

.method static synthetic access$202(Lcom/ss/android/medialib/camera/Camera2;Lcom/ss/android/medialib/camera/CameraOpenListener;)Lcom/ss/android/medialib/camera/CameraOpenListener;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/ss/android/medialib/camera/Camera2;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I

    return p0
.end method

.method static synthetic access$2200(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->lockFocus()V

    return-void
.end method

.method static synthetic access$302(Lcom/ss/android/medialib/camera/Camera2;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mIsFirstOpenCamera:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/camera/Camera2;I)I
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/camera/Camera2;->getCameraErrorCode(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V

    return-void
.end method

.method static synthetic access$600(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ss/android/medialib/camera/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->updatePreview()V

    return-void
.end method

.method static synthetic access$800(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/android/medialib/camera/Camera2;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/ss/android/medialib/camera/Camera2;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I

    return p1
.end method

.method static synthetic access$908(Lcom/ss/android/medialib/camera/Camera2;)I
    .registers 3

    .line 54
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I

    return v0
.end method

.method private captureStillPicture()V
    .registers 4

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1158
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1159
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1163
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1165
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mZoomSize:Landroid/graphics/Rect;

    if-eqz v1, :cond_28

    .line 1166
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1169
    :cond_28
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcom/ss/android/medialib/camera/Camera2$9;

    invoke-direct {v2, p0}, Lcom/ss/android/medialib/camera/Camera2$9;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_38
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p0

    .line 1190
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private checkIsOnCameraThread()V
    .registers 2

    .line 1549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_11

    return-void

    .line 1550
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private closePreviewSession()V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 596
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 597
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 598
    iput-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 601
    :cond_16
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1f

    .line 602
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 603
    iput-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mImageReader:Landroid/media/ImageReader;

    .line 606
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_28

    .line 607
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 608
    iput-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_28
    return-void
.end method

.method private getCameraErrorCode(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_10

    const/4 p0, 0x2

    if-eq p1, p0, :cond_10

    const/4 p0, 0x3

    if-eq p1, p0, :cond_10

    const/4 p0, 0x4

    if-eq p1, p0, :cond_10

    const/4 p0, 0x5

    if-eq p1, p0, :cond_10

    const/4 p0, -0x1

    :cond_10
    return p0
.end method

.method private isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .registers 9

    .line 1427
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-lt p2, v0, :cond_8

    return v1

    .line 1430
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 1431
    const-string v2, "Camera2"

    if-ltz p1, :cond_6d

    const/4 v3, 0x3

    if-le p1, v3, :cond_1d

    goto :goto_6d

    .line 1442
    :cond_1d
    sget-object v3, Lcom/ss/android/medialib/camera/IESCameraInterface;->CameraHWLevelAndroid2VE:[I

    aget p1, v3, p1

    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    .line 1443
    const-string v3, "iesve_record_camera_hw_level"

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1444
    iget p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    const-string v3, ", require = "

    if-lt p1, p2, :cond_4e

    .line 1445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Camera hardware level supported, deviceLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHWLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1449
    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Camera hardware level not supported, deviceLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHWLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1432
    :cond_6d
    :goto_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid hardware level = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isMeteringAreaAESupported()Z
    .registers 4

    .line 984
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 985
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p0, v1, :cond_15

    return v1

    :cond_15
    return v2

    .line 989
    :cond_16
    :try_start_16
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 990
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_16 .. :try_end_2a} :catch_2e

    if-lt p0, v1, :cond_2d

    return v1

    :cond_2d
    return v2

    :catch_2e
    move-exception p0

    .line 992
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method private isMeteringAreaAFSupported()Z
    .registers 4

    .line 969
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 970
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p0, v1, :cond_15

    return v1

    :cond_15
    return v2

    .line 974
    :cond_16
    :try_start_16
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 975
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_16 .. :try_end_2a} :catch_2e

    if-lt p0, v1, :cond_2d

    return v1

    :cond_2d
    return v2

    :catch_2e
    move-exception p0

    .line 977
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method private lockFocus()V
    .registers 5

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1303
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1306
    iput v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    .line 1307
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 1310
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 235
    :try_start_1
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset: thread_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_4c

    const/4 v0, 0x0

    .line 237
    :try_start_20
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->closePreviewSession()V

    .line 238
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2c

    .line 239
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 240
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 243
    :cond_2c
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_35

    .line 244
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 245
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_35

    .line 252
    :catchall_35
    :cond_35
    :try_start_35
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    const/4 v1, 0x0

    .line 253
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 254
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 255
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 256
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 257
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 258
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 259
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I

    .line 260
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z

    .line 261
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mZoomSize:Landroid/graphics/Rect;
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_4c

    .line 262
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private runPrecaptureSequence()V
    .registers 4

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1286
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 1289
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    .line 1290
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 1293
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private setFPSRange()V
    .registers 13

    .line 374
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_5

    goto :goto_f

    .line 377
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 378
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 383
    :cond_10
    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/camera/Camera2;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v1

    iput v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1f
    const-string v5, "]"

    const-string v6, ", "

    const-string v7, "Camera2"

    const/4 v8, 0x1

    if-ge v4, v2, :cond_6f

    aget-object v9, v0, v4

    .line 386
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    mul-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    mul-int/2addr v9, v11

    filled-new-array {v10, v9}, [I

    move-result-object v9

    .line 387
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fps Range: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v9, v8

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 390
    :cond_6f
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v2, v0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMin:I

    iget v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    mul-int/2addr v2, v4

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMax:I

    mul-int/2addr v0, v4

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/medialib/camera/CameraUtils;->getClosestFpsRange([ILjava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsRange:[I

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Fps Range: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsRange:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsRange:[I

    aget p0, p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    const/4 v0, 0x1

    .line 1135
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I

    .line 1145
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setupPictureParams(II)V
    .registers 10

    .line 1072
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x100

    .line 1073
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2e

    aget-object v4, v0, v3

    .line 1077
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1080
    :cond_2e
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    iget v3, p0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {v1, v0, p1, p2}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPictureMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p1

    .line 1082
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p2, p1}, Lcom/ss/android/medialib/camera/CameraParams;->setCameraPictureSize(Landroid/graphics/Point;)V

    if-nez p1, :cond_45

    return-void

    .line 1086
    :cond_45
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/16 v0, 0x23

    const/4 v1, 0x1

    invoke-static {p2, p1, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mImageReader:Landroid/media/ImageReader;

    .line 1087
    new-instance p2, Lcom/ss/android/medialib/camera/Camera2$7;

    invoke-direct {p2, p0}, Lcom/ss/android/medialib/camera/Camera2$7;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setupPreviewReader()V
    .registers 5

    .line 1110
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    iget v1, p0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 1111
    new-instance v1, Lcom/ss/android/medialib/camera/Camera2$8;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/Camera2$8;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private unlockFocus()V
    .registers 5

    const/4 v0, 0x2

    .line 1323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1320
    :try_start_5
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_30

    iget v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    if-nez v2, :cond_12

    goto :goto_30

    .line 1322
    :cond_12
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1326
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 v0, 0x0

    .line 1332
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I
    :try_end_30
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception p0

    .line 1336
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private declared-synchronized updatePreview()V
    .registers 7

    const/4 v0, 0x1

    .line 621
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 0
    monitor-enter p0

    .line 616
    :try_start_6
    const-string v2, "Camera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreview: thread_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_d6

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_d6

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_d6

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_7f

    if-gtz v2, :cond_3a

    goto/16 :goto_d6

    .line 621
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 622
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 623
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Landroid/util/Range;

    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsRange:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v5, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    div-int/2addr v4, v5

    .line 624
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsRange:[I

    aget v0, v5, v0

    iget v5, p0, Lcom/ss/android/medialib/camera/Camera2;->mFpsUnitFactor:I

    div-int/2addr v0, v5

    .line 625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 623
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget-boolean v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->enableVideoStabilization:Z

    if-eqz v0, :cond_83

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/camera/Camera2;->configStabilization(Z)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 628
    const-string v0, "Camera2"

    const-string v1, "Enable video stabilization."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :catchall_7f
    move-exception v0

    goto :goto_d8

    :catch_81
    move-exception v0

    goto :goto_b1

    .line 630
    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mZoomSize:Landroid/graphics/Rect;

    if-eqz v0, :cond_8e

    .line 631
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 633
    :cond_8e
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 634
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 v0, 0x3

    .line 635
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 636
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

    if-eqz v0, :cond_a9

    .line 637
    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;->onPreview()V

    .line 639
    :cond_a9
    const-string v0, "Camera2"

    const-string v1, "send capture request..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_b0} :catch_81
    .catchall {:try_start_3a .. :try_end_b0} :catchall_7f

    goto :goto_d4

    .line 641
    :goto_b1
    :try_start_b1
    const-string v1, "Camera2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreview error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x4

    .line 643
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 644
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V
    :try_end_d4
    .catchall {:try_start_b1 .. :try_end_d4} :catchall_7f

    .line 646
    :goto_d4
    monitor-exit p0

    return-void

    .line 618
    :cond_d6
    :goto_d6
    monitor-exit p0

    return-void

    :goto_d8
    :try_start_d8
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_7f

    throw v0
.end method


# virtual methods
.method public cancelAutoFocus()V
    .registers 6

    .line 800
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const-string v1, "Camera2"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1e

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore cancelAutoFocus operation, invalid state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 805
    :cond_1e
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->isMeteringAreaAFSupported()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_6c

    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_2d

    goto :goto_6c

    .line 808
    :cond_2d
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 812
    :try_start_4a
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_52
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4a .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception p0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatingRequest failed, errMsg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public changeCamera(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
    .registers 7

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCamera: thread_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCamera cameraPosition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_46

    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3d

    goto :goto_46

    .line 658
    :cond_3d
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera2;->close()V

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/camera/Camera2;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    .line 660
    sput-boolean v2, Lcom/ss/android/medialib/camera/IESCameraManager;->misPrintMVP:Z

    return v2

    .line 655
    :cond_46
    :goto_46
    const-string p0, "Camera is opening or pending, ignore changeCamera operation."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .registers 4

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close: thread_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    .line 460
    const-string p0, "Camera is opening or pending, ignore close operation."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const/4 v0, 0x0

    .line 463
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 464
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    return-void
.end method

.method public configStabilization(Z)Z
    .registers 10

    const/4 v0, 0x0

    .line 1016
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 1025
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1014
    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v4, :cond_f

    return v0

    :cond_f
    if-nez p1, :cond_20

    .line 1016
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1017
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v2

    .line 1020
    :cond_20
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 1022
    const-string v4, "Camera2"

    if-eqz p1, :cond_4b

    .line 1023
    array-length v5, p1

    move v6, v0

    :goto_2e
    if-ge v6, v5, :cond_4b

    aget v7, p1, v6

    if-ne v7, v2, :cond_48

    .line 1025
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1026
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1027
    const-string p0, "Enable OIS"

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 1033
    :cond_4b
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 1034
    array-length v5, p1

    move v6, v0

    :goto_57
    if-ge v6, v5, :cond_74

    aget v7, p1, v6

    if-ne v7, v2, :cond_71

    .line 1036
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1037
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1038
    const-string p0, "Enable EIS"

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_74
    return v0
.end method

.method public currentValid()Z
    .registers 1

    .line 820
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public enableTorch(Z)V
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_9

    goto :goto_28

    .line 411
    :cond_9
    :try_start_9
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p1, :cond_f

    const/4 p1, 0x2

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 412
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 411
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 413
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p0

    .line 415
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method

.method public getCameraPosition()I
    .registers 1

    .line 1000
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->currentCameraPosition:I

    return p0
.end method

.method public getDeviceHardwareSupportedLevel()I
    .registers 1

    .line 1456
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    return p0
.end method

.method public getFpsUnitFactor([Landroid/util/Range;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 398
    array-length p0, p1

    const/4 v0, 0x1

    if-gtz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    .line 402
    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_17

    return p1

    :cond_17
    return v0
.end method

.method public getImageFormat()I
    .registers 1

    const/16 p0, 0x23

    return p0
.end method

.method public getMaxZoom()F
    .registers 9

    .line 723
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_13

    :cond_7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_13
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 726
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz v1, :cond_3d

    .line 728
    new-instance v7, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_34

    :goto_32
    move v4, v1

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_32

    :goto_36
    const/4 v5, 0x0

    const/high16 v6, 0x42c60000    # 99.0f

    const/4 v3, 0x2

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->onZoomSupport(IZZFLjava/util/List;)V

    :cond_3d
    const/high16 p0, 0x42c60000    # 99.0f

    return p0
.end method

.method public getOrientationDegrees()I
    .registers 1

    .line 686
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotation:I

    return p0
.end method

.method public getPreviewWH()[I
    .registers 2

    .line 696
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getShaderStep()F
    .registers 2

    .line 738
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

    const v0, 0x3cf5c28f    # 0.03f

    if-eqz p0, :cond_a

    .line 739
    invoke-interface {p0, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;->getShaderStep(F)V

    :cond_a
    return v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mOutputSizes:[Landroid/util/Size;

    if-nez p0, :cond_a

    goto :goto_25

    .line 958
    :cond_a
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    if-nez v3, :cond_13

    goto :goto_22

    .line 960
    :cond_13
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    :goto_25
    return-object v0
.end method

.method public init(Lcom/ss/android/medialib/camera/CameraParams;)V
    .registers 5

    .line 219
    const-string v0, "Camera2"

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/CameraParams;->isValid()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_45

    .line 223
    :cond_b
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: thread_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p1, Lcom/ss/android/medialib/camera/CameraParams;->mCameraHardwareSupportLevel:I

    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHWLevel:I

    .line 228
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_42

    .line 229
    iget-object v0, p1, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 231
    :cond_42
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    return-void

    .line 220
    :cond_45
    :goto_45
    const-string p0, "Invalid CameraParams"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initCameraParam()[I
    .registers 2

    .line 691
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public isCapturing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTorchSupported()Z
    .registers 5

    .line 780
    const-string v0, "isTorchSupported: "

    const-string v1, "Camera2"

    .line 781
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 v2, 0x0

    if-nez p0, :cond_a

    return v2

    .line 785
    :cond_a
    :try_start_a
    const-string v3, "0"

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 786
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1f
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    goto :goto_21

    :catch_1f
    move-exception p0

    goto :goto_38

    .line 791
    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 788
    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return v2
.end method

.method public isVideoStabilizationSupported()Z
    .registers 3

    .line 1006
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 1007
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_14

    .line 1008
    array-length p0, p0

    if-lez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method public open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
    .registers 14

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open: thread_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_26

    .line 269
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V

    .line 276
    :cond_26
    iput-object p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    const/4 p2, 0x1

    const/4 v3, 0x0

    .line 279
    :try_start_2a
    iput p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 280
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open cameraList.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_19b

    const/4 v4, 0x2

    if-le p1, v4, :cond_4e

    goto/16 :goto_19b

    .line 294
    :cond_4e
    array-length v5, v0

    if-lt p1, v5, :cond_52

    move p1, p2

    .line 296
    :cond_52
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->newCameraPosition:I

    .line 297
    const-string p1, ""

    .line 298
    array-length v5, v0

    if-ne v5, p2, :cond_60

    .line 299
    iput v3, p0, Lcom/ss/android/medialib/camera/Camera2;->newCameraPosition:I

    goto :goto_60

    :catchall_5c
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1a8

    .line 301
    :cond_60
    :goto_60
    array-length v5, v0

    move v6, v3

    :goto_62
    if-ge v6, v5, :cond_86

    aget-object v7, v0, v6

    .line 302
    iget-object v8, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    .line 303
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p2, :cond_7c

    move v8, v3

    goto :goto_7d

    :cond_7c
    move v8, p2

    .line 304
    :goto_7d
    iget v9, p0, Lcom/ss/android/medialib/camera/Camera2;->newCameraPosition:I

    if-ne v8, v9, :cond_83

    move-object p1, v7

    goto :goto_86

    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 309
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open newCameraPosition: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/medialib/camera/Camera2;->newCameraPosition:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open currentCameraId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_c2

    .line 313
    const-string p1, "mCameraCharacteristics is null"

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 316
    :cond_c2
    iget-boolean v5, p0, Lcom/ss/android/medialib/camera/Camera2;->mIsFirstOpenCamera:Z

    if-eqz v5, :cond_f6

    iget v5, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHWLevel:I

    invoke-direct {p0, v0, v5}, Lcom/ss/android/medialib/camera/Camera2;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-nez v0, :cond_f6

    .line 317
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    if-eqz p1, :cond_f3

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera hardware level not supported, deviceLevel = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mDeviceHardwareSupportedLevel:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", require = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHWLevel:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x4

    invoke-interface {p1, v4, v0, p2}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 321
    :cond_f3
    iput v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    return v3

    .line 324
    :cond_f6
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotate:I

    .line 325
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 326
    const-class v4, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mOutputSizes:[Landroid/util/Size;

    .line 327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mOutputSizes:[Landroid/util/Size;

    array-length v6, v4

    move v7, v3

    :goto_121
    if-ge v7, v6, :cond_138

    aget-object v8, v4, v7

    .line 329
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v9, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_121

    .line 333
    :cond_138
    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {v4}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result v4

    if-eqz v4, :cond_173

    const/16 v4, 0x100

    .line 334
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 335
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 336
    array-length v4, v0

    move v6, v3

    :goto_14d
    if-ge v6, v4, :cond_164

    aget-object v7, v0, v6

    .line 337
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v9, v10, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_14d

    .line 339
    :cond_164
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v6, v0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    iget v7, v0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    iget v9, v0, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    iget v10, v0, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    invoke-static/range {v5 .. v10}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPreviewByPictureMatchSize(Ljava/util/List;IILjava/util/List;II)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_17d

    .line 342
    :cond_173
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v4, v0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    invoke-static {v5, v4, v0}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPreviewMatchSize(Ljava/util/List;II)Landroid/graphics/Point;

    move-result-object v0

    :goto_17d
    if-eqz v0, :cond_187

    .line 346
    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    .line 347
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    .line 351
    :cond_187
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->setFPSRange()V

    .line 352
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v5, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 353
    const-string p1, "iesve_record_camera_type"

    const-wide/16 v4, 0x2

    invoke-static {p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    return p2

    .line 283
    :cond_19b
    :goto_19b
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/medialib/camera/Camera2$3;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/medialib/camera/Camera2$3;-><init>(Lcom/ss/android/medialib/camera/Camera2;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    iput v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I
    :try_end_1a7
    .catchall {:try_start_2a .. :try_end_1a7} :catchall_5c

    return v3

    .line 356
    :goto_1a8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    iput v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 359
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/medialib/camera/Camera2$4;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/medialib/camera/Camera2$4;-><init>(Lcom/ss/android/medialib/camera/Camera2;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V

    return v3
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 476
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 477
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    return-void
.end method

.method public setCameraPreviewListener(Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;)V
    .registers 2

    .line 1561
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

    return-void
.end method

.method public setEnableAntiShake(Z)V
    .registers 2

    return-void
.end method

.method public setFocusAreas(IIF[FI)Z
    .registers 17

    const/4 p3, 0x1

    .line 934
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusAreas: thread_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera2"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_40

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignore setFocusAreas operation, invalid state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 831
    :cond_40
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_150

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_150

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_150

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_52

    goto/16 :goto_150

    .line 836
    :cond_52
    iget-boolean v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z

    if-eqz v1, :cond_5c

    .line 837
    const-string p0, "Manual focus already engaged"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    .line 841
    :cond_5c
    iget v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mState:I

    if-eqz v1, :cond_66

    .line 842
    const-string p0, "capturing now"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 845
    :cond_66
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p4

    move/from16 v9, p5

    .line 846
    invoke-direct/range {v5 .. v10}, Lcom/ss/android/medialib/camera/Camera2;->_calculateRect(II[FII)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v10, 0x1

    .line 847
    invoke-direct/range {v5 .. v10}, Lcom/ss/android/medialib/camera/Camera2;->_calculateRect(II[FII)Landroid/graphics/Rect;

    move-result-object p1

    .line 849
    new-instance p2, Lcom/ss/android/medialib/camera/Camera2$6;

    invoke-direct {p2, p0}, Lcom/ss/android/medialib/camera/Camera2$6;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    .line 909
    :try_start_82
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->isMeteringAreaAESupported()Z

    move-result v3

    const/16 v6, 0x3e7

    if-eqz v3, :cond_ab

    .line 911
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 913
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v8, p1, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    filled-new-array {v8}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v3, v7, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_ab

    :catch_a7
    move-exception v0

    move-object p1, v0

    goto/16 :goto_12e

    .line 915
    :cond_ab
    :goto_ab
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->isMeteringAreaAFSupported()Z

    move-result p1

    if-nez p1, :cond_d7

    .line 916
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->isMeteringAreaAESupported()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 917
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 918
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 919
    iget-object p3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1, p2, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_d1

    .line 921
    :cond_cc
    const-string p1, "do not support MeteringAreaAE!"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :goto_d1
    const-string p1, "do not support MeteringAreaAF!"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 926
    :cond_d7
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 928
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 931
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v8, v1, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    filled-new-array {v8}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 934
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 935
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 936
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 937
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v0, "FOCUS_TAG"

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 939
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 940
    iput-boolean p3, p0, Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z

    .line 941
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 942
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2;->mFocusCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_12d} :catch_a7

    return p3

    .line 944
    :goto_12e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 945
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setRepeatingRequest failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 946
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    .line 947
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->reset()V

    return v4

    .line 832
    :cond_150
    :goto_150
    const-string p0, "Set focus failed, you must open camera first."

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public setFrameCallback(Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;)V
    .registers 2

    .line 1417
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    return-void
.end method

.method public setOrientationDegrees(I)I
    .registers 5

    .line 668
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->newCameraPosition:I

    iput v0, p0, Lcom/ss/android/medialib/camera/Camera2;->currentCameraPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 670
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotate:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x21c

    .line 671
    rem-int/lit16 p1, p1, 0x168

    goto :goto_18

    .line 673
    :cond_11
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotate:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 676
    :goto_18
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotation:I

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentCameraPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/camera/Camera2;->currentCameraPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraRotation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public setPreviewRatio(F)V
    .registers 3

    .line 471
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    return-void
.end method

.method public setShaderZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;)V
    .registers 2

    .line 1068
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1556
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setVideoStabilization(Z)Z
    .registers 4

    .line 1049
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/camera/Camera2;->configStabilization(Z)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1050
    :cond_a
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1052
    :try_start_12
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_12 .. :try_end_1a} :catch_1c

    const/4 p0, 0x1

    return p0

    :catch_1c
    move-exception p0

    .line 1055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRepeatingRequest failed, errMsg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera2"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public setZoom(F)V
    .registers 9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 701
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 702
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_a1

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_1a

    goto/16 :goto_a1

    .line 705
    :cond_1a
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 706
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 707
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    float-to-double v3, v3

    .line 708
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v5, p1

    sub-double/2addr v5, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v1

    double-to-int p1, v5

    .line 709
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-int v1, v5

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cropH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera2"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {v2, p1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 712
    iput-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mZoomSize:Landroid/graphics/Rect;

    .line 714
    :try_start_89
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 715
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_9d

    return-void

    :catchall_9d
    move-exception p0

    .line 717
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public setZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;)V
    .registers 2

    .line 1063
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    return-void
.end method

.method public startPreview()V
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 575
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/camera/Camera2;->startPreview(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 577
    :cond_d
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera2;->startPreviewWithCallback()V

    return-void
.end method

.method public declared-synchronized startPreview(Landroid/graphics/SurfaceTexture;)V
    .registers 7

    monitor-enter p0

    .line 492
    :try_start_1
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview... thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_147

    if-nez p1, :cond_27

    goto/16 :goto_147

    .line 499
    :cond_27
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4e

    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    if-eq v0, v1, :cond_4e

    .line 500
    const-string p1, "Camera2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 501
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    goto/16 :goto_173

    .line 505
    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->closePreviewSession()V

    .line 506
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 507
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 510
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera2;->sWidth:I

    iget v1, p0, Lcom/ss/android/medialib/camera/Camera2;->sHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 511
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    if-ne v0, v2, :cond_7c

    .line 512
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->setupPreviewReader()V

    .line 513
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_7a

    .line 514
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_82

    :catch_74
    move-exception p1

    goto/16 :goto_10d

    :catch_77
    move-exception p1

    goto/16 :goto_128

    :cond_7a
    const/4 p1, 0x0

    goto :goto_82

    .line 519
    :cond_7c
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object p1, v0

    .line 522
    :goto_82
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewSurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_92

    if-eqz v0, :cond_92

    .line 523
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 524
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 527
    :cond_92
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 528
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 531
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result p1

    if-eqz p1, :cond_d7

    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mTargetPicSize:Landroid/util/Size;

    if-eqz p1, :cond_c2

    .line 532
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    if-ne p1, v0, :cond_d7

    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mTargetPicSize:Landroid/util/Size;

    .line 533
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    if-ne p1, v0, :cond_d7

    .line 534
    :cond_c2
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, p1, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    iget p1, p1, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    invoke-direct {p0, v0, p1}, Lcom/ss/android/medialib/camera/Camera2;->setupPictureParams(II)V

    .line 535
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    .line 536
    :cond_d7
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mTargetPicSize:Landroid/util/Size;

    if-eqz p1, :cond_f7

    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    if-eqz v0, :cond_f7

    .line 537
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mTargetPicSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/medialib/camera/Camera2;->setupPictureParams(II)V

    .line 538
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_f7
    :goto_f7
    const-string p1, "Camera2"

    const-string v0, "createCaptureSession"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaces:Ljava/util/List;

    new-instance v1, Lcom/ss/android/medialib/camera/Camera2$5;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/Camera2$5;-><init>(Lcom/ss/android/medialib/camera/Camera2;)V

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_10c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4e .. :try_end_10c} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_10c} :catch_74
    .catchall {:try_start_4e .. :try_end_10c} :catchall_4b

    goto :goto_145

    .line 568
    :goto_10d
    :try_start_10d
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Preview IllegalArgumentException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    .line 565
    :goto_128
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Preview CameraAccessException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_145
    .catchall {:try_start_10d .. :try_end_145} :catchall_4b

    .line 570
    :goto_145
    monitor-exit p0

    return-void

    .line 494
    :cond_147
    :goto_147
    :try_start_147
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param,mCameraDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_15b

    move v2, v4

    goto :goto_15c

    :cond_15b
    move v2, v3

    :goto_15c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",surfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_167

    move v3, v4

    :cond_167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_171
    .catchall {:try_start_147 .. :try_end_171} :catchall_4b

    .line 495
    monitor-exit p0

    return-void

    :goto_173
    :try_start_173
    monitor-exit p0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_4b

    throw p1
.end method

.method public startPreviewWithCallback()V
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/camera/Camera2;->startPreview(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public startZoom(F)V
    .registers 11

    .line 746
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_c7

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_c7

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_e

    goto/16 :goto_c7

    .line 750
    :cond_e
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/high16 v1, 0x42c60000    # 99.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1d

    move p1, v1

    :cond_1d
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_23

    move p1, v1

    :cond_23
    const-wide v1, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 753
    invoke-static {v1, v2, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, p1, v3

    float-to-double v3, v3

    .line 754
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    .line 755
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    .line 756
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 757
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v7, v4

    sub-double/2addr v7, v1

    div-double/2addr v7, v5

    double-to-int v1, v7

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cropW: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cropH: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "zoom: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Camera2"

    invoke-static {v4, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 760
    iput-object v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mZoomSize:Landroid/graphics/Rect;

    .line 762
    :try_start_a6
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 764
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz p0, :cond_c7

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 765
    invoke-interface {p0, v0, p1, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->onChange(IFZ)V
    :try_end_c2
    .catchall {:try_start_a6 .. :try_end_c2} :catchall_c3

    return-void

    :catchall_c3
    move-exception p0

    .line 768
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public stopPreview()V
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->closePreviewSession()V

    return-void
.end method

.method public stopZoom()V
    .registers 1

    return-void
.end method

.method public switchFlashMode(I)Z
    .registers 9
    .param p1    # I
        .annotation build Lcom/ss/android/medialib/camera/IESCameraInterface$FlashMode;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 438
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 421
    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    if-eqz v4, :cond_6e

    iget-object v6, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v6, :cond_14

    goto :goto_6e

    :cond_14
    if-eqz p1, :cond_4a

    const/4 v6, 0x3

    if-eq p1, v2, :cond_40

    if-eq p1, v0, :cond_33

    if-eq p1, v6, :cond_2d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    return v5

    .line 441
    :cond_21
    :try_start_21
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5a

    :catch_2b
    move-exception p0

    goto :goto_6b

    .line 438
    :cond_2d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5a

    .line 434
    :cond_33
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5a

    .line 431
    :cond_40
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5a

    .line 427
    :cond_4a
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 446
    :goto_5a
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I

    .line 447
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6a} :catch_2b

    return v2

    .line 450
    :goto_6b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6e
    :goto_6e
    return v5
.end method

.method public takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
    .registers 8

    .line 1351
    iput-object p3, p0, Lcom/ss/android/medialib/camera/Camera2;->mCaptureListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    .line 1352
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mTargetPicSize:Landroid/util/Size;

    .line 1354
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_17

    goto :goto_60

    :cond_17
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1363
    :try_start_19
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    .line 1364
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v3, v0, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    if-ne v3, p1, :cond_40

    iget p1, v0, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    if-ne p1, p2, :cond_40

    .line 1365
    iget p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mFlashMode:I

    if-eqz p1, :cond_3a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3a

    .line 1366
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->lockFocus()V

    goto :goto_3d

    :catchall_38
    move-exception p1

    goto :goto_4f

    .line 1368
    :cond_3a
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    :try_end_3d
    .catchall {:try_start_19 .. :try_end_3d} :catchall_38

    .line 1406
    :goto_3d
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    return-void

    .line 1373
    :cond_40
    :try_start_40
    new-instance p1, Lcom/ss/android/medialib/camera/Camera2$12;

    invoke-direct {p1, p0, p3}, Lcom/ss/android/medialib/camera/Camera2$12;-><init>(Lcom/ss/android/medialib/camera/Camera2;Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V

    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mPictureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 1399
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/camera/Camera2;->startPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_38

    .line 1406
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    return-void

    .line 1401
    :goto_4f
    :try_start_4f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_5a

    .line 1403
    invoke-interface {p3, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_58

    goto :goto_5a

    :catchall_58
    move-exception p1

    goto :goto_5d

    .line 1406
    :cond_5a
    :goto_5a
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    return-void

    :goto_5d
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera2;->mTakingPicture:Z

    .line 1407
    throw p1

    :cond_60
    :goto_60
    if-eqz p3, :cond_65

    .line 1356
    invoke-interface {p3, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V

    :cond_65
    return-void
.end method
