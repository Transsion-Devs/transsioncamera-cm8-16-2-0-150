.class public Lcom/ss/android/medialib/camera/Camera1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/IESCameraInterface;
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera1"


# instance fields
.field private currentCameraPosition:I

.field private isClosed:Z

.field private isPreviewStarted:Z

.field private mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

.field mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

.field private mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

.field private mCameraZoomStep:I

.field private mCurrentCamera:Landroid/hardware/Camera;

.field private mFlashMode:I

.field private mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

.field private mIsCapturing:Z

.field private mIsZslSupport:Z

.field private mRotation:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field public sCamIdx:I

.field private sHeight:I

.field private sWidth:I

.field private shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

.field private zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera1;->sCamIdx:I

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/ss/android/medialib/camera/Camera1;->currentCameraPosition:I

    .line 41
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    .line 42
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsZslSupport:Z

    .line 44
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mFlashMode:I

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z

    .line 53
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraZoomStep:I

    .line 289
    new-instance v0, Lcom/ss/android/medialib/camera/Camera1$2;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/Camera1$2;-><init>(Lcom/ss/android/medialib/camera/Camera1;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/camera/Camera1;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/camera/Camera1;)Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/camera/Camera1;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/ss/android/medialib/camera/Camera1;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/camera/Camera1;)Landroid/hardware/Camera;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/camera/Camera1;)Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/medialib/camera/Camera1;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$702(Lcom/ss/android/medialib/camera/Camera1;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ss/android/medialib/camera/Camera1;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z

    return p0
.end method

.method private calcPictureSize(Ljava/util/List;)Landroid/graphics/Point;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 563
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 564
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x780

    if-le v3, v4, :cond_1f

    goto :goto_6

    .line 565
    :cond_1f
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    mul-int/2addr v4, v3

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    mul-int/2addr v5, v6

    if-eq v4, v5, :cond_2c

    goto :goto_6

    :cond_2c
    if-eqz v1, :cond_32

    .line 568
    iget v4, v1, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_6

    :cond_32
    move-object v1, v2

    goto :goto_6

    :cond_34
    if-eqz v1, :cond_43

    .line 573
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    if-lt p1, v2, :cond_43

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    if-lt p1, p0, :cond_43

    return-object v1

    :cond_43
    return-object v0
.end method

.method private static clamp(I)I
    .registers 3

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    .line 976
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/camera/Camera1;->clamp(III)I

    move-result p0

    return p0
.end method

.method private static clamp(III)I
    .registers 3

    .line 0
    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method private getCamera(I)Landroid/hardware/Camera;
    .registers 9

    .line 981
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 982
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCamera cameraCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera1"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    const/4 v4, 0x0

    if-ge v2, v1, :cond_7e

    const/4 v5, 0x1

    .line 986
    :try_start_24
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 987
    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v6, p1, :cond_31

    if-ne v1, v5, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 989
    :cond_31
    :goto_31
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 990
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result p1

    if-nez p1, :cond_49

    .line 991
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 992
    invoke-direct {p0, v4, p1}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    goto :goto_49

    :catch_47
    move-exception p1

    goto :goto_50

    .line 994
    :cond_49
    :goto_49
    iput v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sCamIdx:I

    .line 995
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput p1, p0, Lcom/ss/android/medialib/camera/Camera1;->currentCameraPosition:I
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_4f} :catch_47

    return-object v4

    .line 1000
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera failed to open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_74

    .line 1003
    :try_start_6a
    iput-boolean v5, p0, Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z

    .line 1004
    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    .line 1006
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1010
    :cond_74
    :goto_74
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    return-object v4
.end method

.method private getCameraErrorCode(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    const/16 p0, 0x64

    if-eq p1, p0, :cond_b

    const/4 p0, -0x1

    :cond_b
    return p0
.end method

.method private openAndStartPreview()V
    .registers 3

    .line 255
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->close()V

    .line 256
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->getCameraPosition()I

    move-result v0

    new-instance v1, Lcom/ss/android/medialib/camera/Camera1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/Camera1$1;-><init>(Lcom/ss/android/medialib/camera/Camera1;)V

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/camera/Camera1;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    return-void
.end method

.method private setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 3

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    .line 1054
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p0

    .line 1057
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x9s plus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    .line 1058
    :cond_18
    throw p0

    :cond_19
    :goto_19
    return-void
.end method

.method private setupPictureParam(Landroid/hardware/Camera$Parameters;II)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 424
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 427
    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 429
    :cond_29
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    iget v3, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-static {v1, v0, p2, p3}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPictureMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p2

    .line 431
    iget p3, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p3, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    const/16 p3, 0x64

    .line 432
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 434
    iget-object p3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p3}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result p3

    if-eqz p3, :cond_ac

    .line 435
    const-string p3, "zsl-values"

    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 436
    const-string v0, "zsl"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "on"

    if-eqz v1, :cond_6d

    if-eqz p3, :cond_6d

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 437
    invoke-virtual {p1, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_6d
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsZslSupport:Z

    if-nez v0, :cond_ac

    .line 443
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_ac

    iget-object p3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget-boolean p3, p3, Lcom/ss/android/medialib/camera/CameraParams;->enableMTKZsl:Z

    if-eqz p3, :cond_ac

    .line 445
    const-string p3, "zsd-mode-values"

    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 446
    const-string v0, "zsd-mode"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    if-eqz p3, :cond_a2

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a2

    .line 447
    invoke-virtual {p1, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_a2
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsZslSupport:Z

    .line 454
    :cond_ac
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/camera/CameraParams;->setCameraPictureSize(Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public calculateArea(IIF[FII)Landroid/graphics/Rect;
    .registers 10

    const/4 v0, 0x0

    .line 937
    aget v0, p4, v0

    const/4 v1, 0x1

    .line 938
    aget p4, p4, v1

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    .line 940
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    if-eqz p6, :cond_18

    mul-int/lit8 p3, p3, 0x2

    :cond_18
    const/high16 p6, 0x44fa0000    # 2000.0f

    mul-float/2addr v0, p6

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/16 v0, 0x3e8

    sub-int/2addr p1, v0

    mul-float/2addr p4, p6

    int-to-float p2, p2

    div-float/2addr p4, p2

    float-to-int p2, p4

    sub-int/2addr p2, v0

    .line 947
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->getCameraPosition()I

    move-result p0

    if-ne p0, v1, :cond_2d

    neg-int p1, p1

    .line 951
    :cond_2d
    div-int/lit8 p0, p3, 0x2

    sub-int/2addr p1, p0

    const/16 p4, -0x3e8

    invoke-static {p1, p4, v0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(III)I

    move-result p1

    sub-int/2addr p2, p0

    .line 952
    invoke-static {p2, p4, v0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(III)I

    move-result p0

    .line 953
    new-instance p2, Landroid/graphics/RectF;

    int-to-float p6, p1

    int-to-float v1, p0

    add-int/2addr p1, p3

    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera1;->clamp(I)I

    move-result p1

    int-to-float p1, p1

    add-int/2addr p0, p3

    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(I)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p6, v1, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 954
    new-instance p0, Landroid/graphics/Rect;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p3, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p6, p2, Landroid/graphics/RectF;->right:F

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p0, p1, p3, p6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 955
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p4, p4, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 956
    invoke-static {p5, p1, p0}, Lcom/ss/android/medialib/util/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 957
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget p3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v0

    iget p4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-direct {p1, p2, p3, p4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 958
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 959
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 960
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 961
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method public cancelAutoFocus()V
    .registers 1

    .line 733
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez p0, :cond_5

    goto :goto_8

    .line 735
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_8

    :catchall_8
    :goto_8
    return-void
.end method

.method public changeCamera(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
    .registers 9

    .line 344
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 345
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCamera cameraPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera1"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCamera cameraCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_34
    const/4 v3, 0x1

    if-ge v2, v1, :cond_72

    .line 349
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v4, 0x0

    if-ne p1, v3, :cond_57

    .line 352
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v5, v3, :cond_43

    if-ne v1, v3, :cond_6f

    .line 353
    :cond_43
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->close()V

    .line 354
    invoke-virtual {p0, v2, v4}, Lcom/ss/android/medialib/camera/Camera1;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    .line 356
    iput v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sCamIdx:I

    .line 357
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput p1, p0, Lcom/ss/android/medialib/camera/Camera1;->currentCameraPosition:I

    if-eqz p2, :cond_54

    .line 359
    invoke-interface {p2, v3}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenSuccess(I)V

    .line 361
    :cond_54
    sput-boolean v3, Lcom/ss/android/medialib/camera/IESCameraManager;->misPrintMVP:Z

    return v3

    .line 366
    :cond_57
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_6f

    .line 367
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->close()V

    .line 368
    invoke-virtual {p0, v2, v4}, Lcom/ss/android/medialib/camera/Camera1;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    .line 369
    iput v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sCamIdx:I

    .line 370
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput p1, p0, Lcom/ss/android/medialib/camera/Camera1;->currentCameraPosition:I

    if-eqz p2, :cond_6c

    .line 372
    invoke-interface {p2, v3}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenSuccess(I)V

    .line 374
    :cond_6c
    sput-boolean v3, Lcom/ss/android/medialib/camera/IESCameraManager;->misPrintMVP:Z

    return v3

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_72
    if-eqz p2, :cond_91

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change camera failed @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " camera count = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p2, v3, v0, p1}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 383
    :cond_91
    iput-boolean v3, p0, Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z

    return v3
.end method

.method public close()V
    .registers 4

    .line 175
    const-string v0, "camera close >>"

    const-string v1, "Camera1"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 178
    :try_start_c
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 179
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 180
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 181
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z

    .line 183
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 184
    const-string v0, "camera released"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    .line 190
    iput-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    .line 191
    iput-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    .line 192
    iput v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mFlashMode:I

    .line 193
    const-string p0, "camera close <<"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public configMTKParameters(Landroid/hardware/Camera$Parameters;)Z
    .registers 3

    .line 551
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result p0

    const-string v0, "MTK_CAMERA_MODE"

    if-eqz p0, :cond_10

    .line 552
    const-string p0, "CAMERA_MODE_MTK_PRV"

    invoke-virtual {p1, v0, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 554
    :cond_10
    const-string p0, "CAMERA_MODE_MTK_PVO"

    invoke-virtual {p1, v0, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public currentValid()Z
    .registers 1

    .line 743
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public enableTorch(Z)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    goto :goto_1a

    .line 82
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_10

    .line 85
    const-string p1, "torch"

    goto :goto_12

    :cond_10
    const-string p1, "off"

    .line 84
    :goto_12
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .registers 1

    .line 1018
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method public getCameraPosition()I
    .registers 1

    .line 847
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->currentCameraPosition:I

    return p0
.end method

.method public getImageFormat()I
    .registers 1

    const/16 p0, 0x11

    return p0
.end method

.method public getMaxZoom()F
    .registers 10

    .line 613
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_54

    .line 615
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 616
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 617
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz v1, :cond_4e

    .line 618
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 619
    const-string v2, "Camera1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera Max Zoom is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .line 620
    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraZoomStep:I

    const/16 v3, 0x63

    if-le v1, v3, :cond_39

    move v1, v3

    :cond_39
    if-gtz v2, :cond_3e

    const/4 v2, 0x1

    .line 625
    iput v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraZoomStep:I

    .line 627
    :cond_3e
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v6

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->onZoomSupport(IZZFLjava/util/List;)V

    .line 629
    :cond_4e
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p0
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_54

    int-to-float p0, p0

    return p0

    .line 636
    :catchall_54
    :cond_54
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz v0, :cond_61

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 637
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->onZoomSupport(IZZFLjava/util/List;)V

    :cond_61
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getOrientationDegrees()I
    .registers 1

    .line 418
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mRotation:I

    return p0
.end method

.method public getPreviewWH()[I
    .registers 2

    .line 751
    :try_start_0
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_13

    .line 756
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 758
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0

    :catch_13
    move-exception p0

    .line 753
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShaderStep()F
    .registers 8

    .line 644
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 646
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 647
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 648
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 649
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 650
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

    if-eqz v3, :cond_50

    if-gtz v2, :cond_23

    .line 652
    invoke-interface {v3, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;->getShaderStep(F)V

    return v1

    :cond_23
    const/4 v2, 0x1

    .line 655
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 656
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v0, v2

    .line 657
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

    invoke-interface {p0, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;->getShaderStep(F)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    return v0

    :catchall_50
    :cond_50
    return v1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 829
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez p0, :cond_a

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 832
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 835
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_34

    goto :goto_1b

    :cond_33
    return-object v0

    .line 842
    :catchall_34
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public init(Lcom/ss/android/medialib/camera/CameraParams;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    return-void
.end method

.method public initCameraParam()[I
    .registers 14

    .line 459
    const-string v0, "auto"

    const-string v1, "continuous-picture"

    const-string v2, "continuous-video"

    const-string v3, ", "

    const-string v4, "Camera1"

    iget-object v5, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_172

    .line 461
    :try_start_e
    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 462
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 463
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 465
    new-instance v9, Landroid/graphics/Point;

    iget v10, v8, Landroid/hardware/Camera$Size;->width:I

    iget v8, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v9, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :catchall_38
    move-exception v0

    goto/16 :goto_16a

    .line 468
    :cond_3b
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 469
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 471
    new-instance v9, Landroid/graphics/Point;

    iget v11, v8, Landroid/hardware/Camera$Size;->width:I

    iget v8, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v9, v11, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 475
    :cond_61
    iget-object v6, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {v6}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 476
    iget-object v6, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v8, v6, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    iget v9, v6, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    iget v11, v6, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    iget v12, v6, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    invoke-static/range {v7 .. v12}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPreviewByPictureMatchSize(Ljava/util/List;IILjava/util/List;II)Landroid/graphics/Point;

    move-result-object v6

    goto :goto_82

    .line 480
    :cond_78
    iget-object v6, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v8, v6, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    iget v6, v6, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    invoke-static {v7, v8, v6}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPreviewMatchSize(Ljava/util/List;II)Landroid/graphics/Point;

    move-result-object v6

    :goto_82
    if-eqz v6, :cond_8c

    .line 484
    iget v7, v6, Landroid/graphics/Point;->x:I

    iput v7, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    .line 485
    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    .line 487
    :cond_8c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreviewSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget v6, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    iget v7, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 490
    iget-object v6, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {v6}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 491
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v6, v3, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    iget v3, v3, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    invoke-direct {p0, v5, v6, v3}, Lcom/ss/android/medialib/camera/Camera1;->setupPictureParam(Landroid/hardware/Camera$Parameters;II)V

    goto :goto_f6

    .line 493
    :cond_c3
    iget-object v6, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget-byte v6, v6, Lcom/ss/android/medialib/camera/CameraParams;->mOptionFlags:B

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_f6

    .line 496
    invoke-direct {p0, v10}, Lcom/ss/android/medialib/camera/Camera1;->calcPictureSize(Ljava/util/List;)Landroid/graphics/Point;

    move-result-object v6

    if-eqz v6, :cond_f6

    .line 498
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PictureSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_f6
    :goto_f6
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12f

    .line 508
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :cond_102
    :goto_102
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_118

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_102

    move v8, v9

    goto :goto_102

    :cond_118
    if-nez v8, :cond_12a

    .line 513
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_12a

    .line 514
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_12a
    if-eqz v8, :cond_12f

    .line 517
    invoke-virtual {v5, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 521
    :cond_12f
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 522
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 523
    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_150

    .line 524
    :cond_13d
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 525
    invoke-virtual {v5, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_150

    .line 526
    :cond_147
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 527
    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_150
    :goto_150
    const/16 v0, 0x11

    .line 530
    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 532
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget-boolean v1, v0, Lcom/ss/android/medialib/camera/CameraParams;->isMTKPlatform:Z

    if-eqz v1, :cond_164

    iget-byte v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mOptionFlags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_164

    .line 534
    invoke-virtual {p0, v5}, Lcom/ss/android/medialib/camera/Camera1;->configMTKParameters(Landroid/hardware/Camera$Parameters;)Z

    .line 538
    :cond_164
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0, v5}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    :try_end_169
    .catchall {:try_start_e .. :try_end_169} :catchall_38

    goto :goto_172

    .line 540
    :goto_16a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 541
    const-string v0, "Set camera params failed"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_172
    :goto_172
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public isCapturing()Z
    .registers 1

    .line 923
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsCapturing:Z

    return p0
.end method

.method public isTorchSupported()Z
    .registers 3

    const/4 v0, 0x0

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    .line 71
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :catch_19
    :cond_19
    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .registers 2

    .line 853
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 854
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 855
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .registers 4

    .line 1033
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Camera1"

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    if-eqz p2, :cond_24

    .line 1035
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/camera/Camera1;->getCameraErrorCode(I)I

    move-result p0

    const-string p1, "camera1::error"

    const/4 v0, 0x1

    invoke-interface {p2, v0, p0, p1}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    :cond_24
    return-void
.end method

.method public open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
    .registers 7

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " >>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "iesve_record_camera_type"

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    .line 148
    :goto_29
    :try_start_29
    invoke-direct {p0, v3}, Lcom/ss/android/medialib/camera/Camera1;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_5e

    if-eqz v3, :cond_41

    .line 158
    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    if-eqz p2, :cond_39

    .line 160
    invoke-interface {p2, v2}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenSuccess(I)V

    .line 162
    :cond_39
    const-string p1, "open success: "

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z

    return v2

    :cond_41
    if-eqz p2, :cond_58

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No find camera @"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p2, v2, p1, p0}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 169
    :cond_58
    const-string p0, "open failed: 2"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_5e
    move-exception p0

    if-eqz p2, :cond_69

    const/4 p1, -0x3

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, p1, v3}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 153
    :cond_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "open failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public release()V
    .registers 3

    .line 203
    const-string v0, "camera  release >>"

    const-string v1, "Camera1"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->close()V

    .line 205
    const-string p0, "camera  release <<"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraPreviewListener(Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;)V
    .registers 2

    .line 1028
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

    return-void
.end method

.method public setEnableAntiShake(Z)V
    .registers 2

    return-void
.end method

.method public setFocusAreas(IIF[FI)Z
    .registers 16

    .line 763
    const-string v0, "off"

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 765
    invoke-virtual/range {v3 .. v9}, Lcom/ss/android/medialib/camera/Camera1;->calculateArea(IIF[FII)Landroid/graphics/Rect;

    move-result-object p0

    .line 767
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 768
    new-instance p2, Landroid/hardware/Camera$Area;

    const/16 p3, 0x3e8

    invoke-direct {p2, p0, p3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    .line 769
    invoke-virtual/range {v3 .. v9}, Lcom/ss/android/medialib/camera/Camera1;->calculateArea(IIF[FII)Landroid/graphics/Rect;

    move-result-object p0

    .line 770
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 771
    new-instance p4, Landroid/hardware/Camera$Area;

    invoke-direct {p4, p0, p3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :try_start_34
    iget-object p0, v3, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 774
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_58

    const-string p4, "Camera1"

    const-string p5, "MS40"

    const-string v1, "Multilaser"

    if-lez p3, :cond_5b

    .line 775
    :try_start_46
    sget-object p3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-static {p3, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_60

    .line 776
    invoke-virtual {p0, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_60

    :catch_58
    move-exception v0

    move-object p0, v0

    goto :goto_b2

    .line 779
    :cond_5b
    const-string p2, "metering areas not supported"

    invoke-static {p4, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p2

    if-lez p2, :cond_a7

    .line 782
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a6

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a6

    .line 783
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 792
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 793
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_90

    const-string p2, "torch"

    .line 794
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    .line 795
    iget p1, v3, Lcom/ss/android/medialib/camera/Camera1;->mFlashMode:I

    .line 796
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 797
    iput p1, v3, Lcom/ss/android/medialib/camera/Camera1;->mFlashMode:I

    .line 800
    :cond_90
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 801
    iget-object p1, v3, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {v3, p1, p0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 802
    iget-object p0, v3, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    new-instance p1, Lcom/ss/android/medialib/camera/Camera1$4;

    invoke-direct {p1, v3}, Lcom/ss/android/medialib/camera/Camera1$4;-><init>(Lcom/ss/android/medialib/camera/Camera1;)V

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_a6
    return v2

    .line 788
    :cond_a7
    iget-object p1, v3, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {v3, p1, p0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 789
    const-string p0, "focus areas not supported"

    invoke-static {p4, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_b1} :catch_58

    return v2

    .line 821
    :goto_b2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method public setFrameCallback(Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;)V
    .registers 2

    .line 928
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    return-void
.end method

.method public setOrientationDegrees(I)I
    .registers 5

    .line 389
    const-string v0, "Camera1"

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 390
    iget v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sCamIdx:I

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 394
    :try_start_c
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_1a

    .line 396
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/ss/android/medialib/camera/Camera1;->mRotation:I

    goto :goto_25

    .line 400
    :cond_1a
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x168

    rsub-int p1, v1, 0x21c

    .line 401
    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mRotation:I

    .line 403
    :goto_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sCamIdx: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/camera/Camera1;->sCamIdx:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRotation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/camera/Camera1;->mRotation:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    iget v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 408
    iget p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mRotation:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5a} :catch_5b

    return p0

    :catch_5b
    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewRatio(F)V
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    return-void
.end method

.method public setShaderZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;)V
    .registers 2

    .line 881
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->shaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1023
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setVideoStabilization(Z)Z
    .registers 3

    .line 860
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 861
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 864
    :try_start_e
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    const/4 p0, 0x1

    return p0

    :catch_13
    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public setZoom(F)V
    .registers 9

    .line 583
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    return-void

    .line 585
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    .line 587
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr p1, v3

    const/4 v3, 0x0

    .line 590
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_25

    goto :goto_5e

    :cond_25
    move v4, v3

    :goto_26
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_5e

    .line 594
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x12c

    if-lt v5, v6, :cond_39

    goto :goto_59

    .line 598
    :cond_39
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5b

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_5b

    :goto_59
    move v3, v4

    goto :goto_5e

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 604
    :cond_5e
    :goto_5e
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 605
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_67

    return-void

    :catchall_67
    move-exception p0

    .line 607
    const-string p1, "Camera1"

    const-string v0, "Camera1 set zoom failed:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;)V
    .registers 2

    .line 876
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    return-void
.end method

.method public startPreview()V
    .registers 3

    .line 244
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsZslSupport:Z

    if-eqz v0, :cond_8

    .line 245
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/Camera1;->openAndStartPreview()V

    return-void

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 247
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/camera/Camera1;->startPreview(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 249
    :cond_15
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->startPreviewWithCallback()V

    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 210
    const-string v0, "camera  startPreview >>"

    const-string v1, "Camera1"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_8d

    if-nez p1, :cond_f

    goto/16 :goto_8d

    .line 216
    :cond_f
    const-string v0, "startPreview..."

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :try_start_14
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    if-eqz v0, :cond_20

    .line 219
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_20

    :catch_1e
    move-exception p1

    goto :goto_6e

    .line 222
    :cond_20
    :goto_20
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 224
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 225
    const-string p1, "camera  startPreviewing..."

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x2

    .line 227
    new-array p1, p1, [I

    .line 228
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fps Range: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    .line 231
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

    if-eqz p1, :cond_6d

    .line 232
    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;->onPreview()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6d} :catch_1e

    :cond_6d
    return-void

    .line 235
    :goto_6e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->close()V

    return-void

    .line 212
    :cond_8d
    :goto_8d
    const-string p0, "Camera || SurfaceTexture is null."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startPreviewWithCallback()V
    .registers 10

    .line 304
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    const-string v1, "Camera1"

    if-nez v0, :cond_c

    .line 305
    const-string p0, "Camera || SurfaceTexture is null."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_c
    const-string v0, "startPreview..."

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :try_start_11
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    if-eqz v0, :cond_1e

    .line 312
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_1e

    :catch_1b
    move-exception v0

    goto/16 :goto_ad

    .line 315
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/ss/android/medialib/camera/Camera1;->sWidth:I

    iget v2, p0, Lcom/ss/android/medialib/camera/Camera1;->sHeight:I

    mul-int/2addr v0, v2

    const/4 v2, 0x3

    mul-int/2addr v0, v2

    const/4 v3, 0x2

    div-int/2addr v0, v3

    .line 316
    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v0, 0x0

    aput v2, v4, v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .line 317
    array-length v4, v2

    move v6, v0

    :goto_39
    if-ge v6, v4, :cond_45

    aget-object v7, v2, v6

    .line 318
    iget-object v8, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v8, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 321
    :cond_45
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera1;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 322
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ss/android/medialib/camera/Camera1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 323
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "x9s plus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 324
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/16 v4, 0x1b58

    const/16 v6, 0x61a8

    invoke-virtual {v2, v4, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 326
    :cond_6e
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 327
    new-array v2, v3, [I

    .line 328
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fps Range: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iput-boolean v5, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    .line 331
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraPreviewListener:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;

    if-eqz v0, :cond_ac

    .line 332
    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;->onPreview()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_ac} :catch_1b

    :cond_ac
    return-void

    .line 335
    :goto_ad
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview: Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->close()V

    return-void
.end method

.method public startZoom(F)V
    .registers 6

    .line 673
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    goto :goto_70

    .line 677
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_70

    .line 681
    :cond_10
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    const/high16 v2, 0x42c60000    # 99.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_29

    int-to-float v2, v1

    cmpl-float v3, p1, v2

    if-nez v3, :cond_20

    goto :goto_29

    .line 686
    :cond_20
    iget v1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraZoomStep:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int v1, p1

    .line 688
    :cond_29
    :goto_29
    const-string p1, "Camera1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZoom realZoom is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz p1, :cond_5f

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->enablbeSmooth()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 690
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 691
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    new-instance v0, Lcom/ss/android/medialib/camera/Camera1$3;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/Camera1$3;-><init>(Lcom/ss/android/medialib/camera/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    return-void

    .line 700
    :cond_5f
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 702
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 703
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz p0, :cond_70

    int-to-float p1, v1

    const/4 v0, 0x1

    .line 704
    invoke-interface {p0, v0, p1, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->onChange(IFZ)V
    :try_end_70
    .catchall {:try_start_5 .. :try_end_70} :catchall_70

    :catchall_70
    :cond_70
    :goto_70
    return-void
.end method

.method public stopPreview()V
    .registers 5

    .line 276
    const-string v0, "stopPreview >>"

    const-string v1, "Camera1"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2e

    const/4 v2, 0x0

    .line 279
    :try_start_c
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 280
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_2e

    :catch_15
    move-exception v0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPreview: Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    .line 286
    const-string p0, "stopPreview <<"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopZoom()V
    .registers 3

    .line 714
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    goto :goto_25

    .line 718
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_25

    .line 723
    :cond_10
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->enablbeSmooth()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 724
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->stopSmoothZoom()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_25

    :catchall_25
    :cond_25
    :goto_25
    return-void
.end method

.method public switchFlashMode(I)Z
    .registers 7
    .param p1    # I
        .annotation build Lcom/ss/android/medialib/camera/IESCameraInterface$FlashMode;
        .end annotation
    .end param

    .line 95
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 97
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 99
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    if-eqz p1, :cond_2e

    if-eq p1, v3, :cond_2b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_28

    const/4 v4, 0x3

    if-eq p1, v4, :cond_25

    const/4 v4, 0x4

    if-eq p1, v4, :cond_22

    const/4 v4, 0x0

    goto :goto_30

    .line 116
    :cond_22
    const-string v4, "red-eye"

    goto :goto_30

    .line 113
    :cond_25
    const-string v4, "auto"

    goto :goto_30

    .line 110
    :cond_28
    const-string v4, "torch"

    goto :goto_30

    .line 107
    :cond_2b
    const-string v4, "on"

    goto :goto_30

    .line 104
    :cond_2e
    const-string v4, "off"

    :goto_30
    if-eqz v4, :cond_42

    .line 121
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 122
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v2, v0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 124
    iput p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mFlashMode:I
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_42} :catch_43

    :cond_42
    return v3

    :catch_43
    :cond_43
    return v1
.end method

.method public takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
    .registers 9

    .line 890
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 891
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsCapturing:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 893
    :try_start_a
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 894
    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {v3}, Lcom/ss/android/medialib/camera/CameraParams;->isEnableTakePictrueOpt()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v4, v3, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    if-ne v4, p1, :cond_23

    iget v3, v3, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    if-eq v3, p2, :cond_2b

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_47

    .line 895
    :cond_23
    :goto_23
    invoke-direct {p0, v0, p1, p2}, Lcom/ss/android/medialib/camera/Camera1;->setupPictureParam(Landroid/hardware/Camera$Parameters;II)V

    .line 896
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 898
    :cond_2b
    iget p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mFlashMode:I

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/camera/Camera1;->switchFlashMode(I)Z

    .line 899
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;

    new-instance p2, Lcom/ss/android/medialib/camera/Camera1$5;

    invoke-direct {p2, p0, p3}, Lcom/ss/android/medialib/camera/Camera1$5;-><init>(Lcom/ss/android/medialib/camera/Camera1;Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V

    invoke-virtual {p1, v1, v1, p2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_3d
    .catchall {:try_start_a .. :try_end_3a} :catchall_21

    .line 917
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    return-void

    :catch_3d
    if-eqz p3, :cond_42

    .line 913
    :try_start_3f
    invoke-interface {p3, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V

    .line 915
    :cond_42
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera1;->mIsCapturing:Z
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_21

    .line 917
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    return-void

    :goto_47
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/Camera1;->isPreviewStarted:Z

    .line 918
    throw p1
.end method
