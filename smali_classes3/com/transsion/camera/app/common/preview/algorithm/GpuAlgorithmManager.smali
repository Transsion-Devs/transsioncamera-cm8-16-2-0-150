.class public Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgos:Ljava/util/HashMap;

.field private final mContext:Landroid/content/Context;

.field private mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

.field private mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mGpuProcessRunnable:Ljava/lang/Runnable;

.field private final mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mHasMakeupAlgo:Z

.field private mHasTranssionFilterAlgo:Z

.field private mIsFacingBack:Z

.field private final mOESMatrix:[F

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mSensorOrientation:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSupportPostAlgoDeferRequest:Z

.field private final mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

.field private final mtx:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlgos(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGpuProcessers(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordCallback(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Lcom/transsion/camera/app/common/mode/IRecordCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportPostAlgoDeferRequest(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSupportPostAlgoDeferRequest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHasMakeupAlgo(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mHasMakeupAlgo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasTranssionFilterAlgo(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mHasTranssionFilterAlgo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestoryResources(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->destoryResources()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedPreviewFrame(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->needPreviewFrame()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAlgoPut(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->setAlgoPut([I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GpuAlgorithmMan"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    const/16 v0, 0x10

    .line 51
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mtx:[F

    .line 52
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mOESMatrix:[F

    const/16 v0, 0x10e

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSensorOrientation:I

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 66
    new-instance p1, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    return-void
.end method

.method private create2DProgram()V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_25

    .line 476
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 477
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DProgram,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private createRecordingBuffer(III)I
    .registers 13

    .line 343
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->initProgram()V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mtx:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mOESMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->updateSensorOrientation()V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mOESMatrix:[F

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mIsFacingBack:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->flip([FZZ)[F

    .line 348
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mOESMatrix:[F

    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSensorOrientation:I

    int-to-float v5, v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mOESMatrix:[F

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->drawFrameOffScreen(III[F)I

    move-result p0

    return p0
.end method

.method private destory2DProgram()V
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_a

    .line 483
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_a
    return-void
.end method

.method private destoryResources()V
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->clear()V

    .line 490
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->destory2DProgram()V

    .line 491
    sget-object p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "destoryResources"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private draw2DTexture(Landroid/graphics/SurfaceTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II)V
    .registers 5

    .line 470
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->create2DProgram()V

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p2, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    return-void
.end method

.method private flip([FZZ)[F
    .registers 5

    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_6

    :cond_5
    return-object p1

    :cond_6
    :goto_6
    const/high16 p0, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_e

    move p2, p0

    goto :goto_f

    :cond_e
    move p2, v0

    :goto_f
    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    const/4 p3, 0x0

    .line 364
    invoke-static {p1, p3, p2, p0, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-object p1
.end method

.method private getAlgoName(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_16

    const/4 p0, 0x1

    if-eq p1, p0, :cond_13

    const/4 p0, 0x2

    if-eq p1, p0, :cond_10

    const/4 p0, 0x3

    if-eq p1, p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_d
    const-string p0, "com.transsion.camera.base_business.transsionfilter_sdk.TranssionFilterAlgorithm"

    return-object p0

    .line 85
    :cond_10
    const-string p0, "com.transsion.camera.featurelibs.facebeauty.FaceBeautyAlgorithm"

    return-object p0

    .line 83
    :cond_13
    const-string p0, "com.transsion.algorithm.STBlurAlgorithm"

    return-object p0

    .line 81
    :cond_16
    const-string p0, "com.transsion.camera.featurelibs.makeup.MakeUpAlgorithm"

    return-object p0
.end method

.method private getFirstAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    const/4 v0, 0x1

    .line 427
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setPreProcessed(Z)V

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
    .registers 3

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 434
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->getPreProcessed()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 p0, 0x1

    .line 435
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setPreProcessed(Z)V

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private instanceAlgo(ILandroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
    .registers 5

    .line 105
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->isAlgoSupport(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->getAlgoName(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private isAlgoSupport(I)Z
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p1, :cond_f

    .line 96
    sget p1, Lcom/transsion/camera/app/common/R$bool;->make_up_algo_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 99
    sget p1, Lcom/transsion/camera/app/common/R$bool;->stblur_algo_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_19
    return v0
.end method

.method private needPreviewFrame()Z
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    if-eqz v0, :cond_6

    .line 496
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->needPreviewFrame()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private peekFirstAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
    .registers 18

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    .line 395
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->getA2DTexture(II)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_27

    .line 400
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->getFirstAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    move-result-object v1

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-wide v7, p5

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x0

    .line 402
    iput-boolean p0, v3, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return-object v3

    :cond_27
    :goto_27
    return-object p1
.end method

.method private peekNextAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
    .registers 18

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {p0, p4, p3}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->getA2DTexture(II)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_1b

    :cond_9
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    move/from16 v8, p8

    .line 414
    invoke-interface/range {v0 .. v8}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    .line 416
    iput-boolean p0, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return-object v2

    :cond_1b
    :goto_1b
    return-object p2
.end method

.method private resetStatusForNextFrame()V
    .registers 4

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    const/4 v2, 0x0

    .line 464
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setPreProcessed(Z)V

    goto :goto_6

    .line 466
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->resetStatusToIdle()V

    return-void
.end method

.method private declared-synchronized setAlgoPut([I)V
    .registers 9

    monitor-enter p0

    .line 70
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlgoPut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_44

    aget v2, p1, v1

    .line 72
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 73
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-direct {p0, v2, v5, v6}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->instanceAlgo(ILandroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3f

    goto :goto_41

    :catchall_3f
    move-exception p1

    goto :goto_46

    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 76
    :cond_44
    monitor-exit p0

    return-void

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_3f

    throw p1
.end method


# virtual methods
.method public algoAvoidFrameHasDrawCheck(Z)Z
    .registers 3

    .line 150
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mHasTranssionFilterAlgo:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_6
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mHasMakeupAlgo:Z

    if-eqz p0, :cond_b

    return p1

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public algorithmRender(Landroid/graphics/SurfaceTexture;III[FJI)Z
    .registers 21

    move/from16 v3, p4

    const/4 v9, 0x0

    if-eqz p3, :cond_94

    if-eqz v3, :cond_94

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_94

    .line 275
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->resetStatusForNextFrame()V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 277
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "algothimRender +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    invoke-direct {v1, p2, v9, p3, v3}, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;-><init>(IIII)V

    move-object v0, p0

    move v2, p3

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    move/from16 v7, p8

    .line 280
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->peekFirstAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object p2

    move-object v2, p2

    .line 283
    :goto_31
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->getNextAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    move-result-object v1

    if-eqz v1, :cond_46

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 284
    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->peekNextAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v2

    goto :goto_31

    :cond_46
    move/from16 v4, p4

    .line 287
    invoke-static {v9, v9, p3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 288
    iget p2, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    const-string v1, "ms"

    const/4 v5, 0x1

    if-ne p2, v5, :cond_76

    .line 289
    invoke-direct {p0, p1, v2, p3, v4}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->draw2DTexture(Landroid/graphics/SurfaceTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II)V

    .line 290
    iput-boolean v5, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isTexToDraw:Z

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 292
    sget-object p2, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "algothimRender 2d - : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v10

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v5

    .line 296
    :cond_76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 297
    sget-object p2, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "algothimRender oes - : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v10

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_94
    :goto_94
    return v9
.end method

.method public algorithmRenderOffScreen(Landroid/graphics/SurfaceTexture;II)Z
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->getTexForDraw()Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 305
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->draw2DTexture(Landroid/graphics/SurfaceTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getYUVCallback()Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;
    .registers 3

    .line 387
    new-instance v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$YUVCallback;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager-IA;)V

    return-object v0
.end method

.method public initProgram()V
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez v0, :cond_b

    .line 444
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 446
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-nez v0, :cond_16

    .line 447
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    :cond_16
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 251
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onCameraOperateAction(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 6

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-direct {p0, v1, v3, v4}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->instanceAlgo(ILandroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 245
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onFirstSteadyFrame()V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public onModeInit([ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .registers 15

    .line 113
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModeInit, algos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_61

    .line 114
    array-length v3, p1

    if-nez v3, :cond_28

    goto :goto_61

    .line 117
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onModeInit, mIsFacingBack: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mIsFacingBack:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Orientation:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSensorOrientation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iput-object p6, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 119
    iput-object p5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 120
    new-instance v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;[ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessRunnable:Ljava/lang/Runnable;

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v1, :cond_61

    .line 144
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public onModePaused()V
    .registers 3

    .line 179
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModePaused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_13

    .line 181
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public onModeResumed()V
    .registers 3

    .line 207
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeResumed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_13

    .line 209
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$5;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public onModeUnInit()V
    .registers 3

    .line 160
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_13

    .line 162
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$2;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_13
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 506
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRecording(III)V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 333
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->createRecordingBuffer(III)I

    move-result p1

    if-gez p1, :cond_10

    goto :goto_19

    .line 337
    :cond_10
    iget-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    if-eqz p2, :cond_19

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mtx:[F

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onSettingReady()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_c

    .line 229
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public onSurfaceCreated()V
    .registers 3

    .line 257
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_13

    .line 259
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$7;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 3

    .line 313
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_13

    .line 315
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$8;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    .line 325
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->unInitProgram()V

    return-void
.end method

.method public previewViewTypeChanged()V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_b

    .line 377
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    .line 379
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeResumed()V

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
    .registers 3

    .line 221
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 223
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public setSupportPostAlgoDeferRequest(Z)V
    .registers 2

    .line 383
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSupportPostAlgoDeferRequest:Z

    return-void
.end method

.method public unInitProgram()V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 453
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 454
    iput-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 456
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-eqz v0, :cond_13

    .line 457
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 458
    iput-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    :cond_13
    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .registers 6

    .line 193
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewSize() called with: oldPreviewSize = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], newPreviewSize = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_30

    .line 195
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Landroid/util/Size;Landroid/util/Size;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public updateSensorOrientation()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 354
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mIsFacingBack:Z

    const/16 v0, 0x10e

    .line 355
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSensorOrientation:I

    return-void

    .line 358
    :cond_c
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mIsFacingBack:Z

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSensorOrientation()I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mSensorOrientation:I

    return-void
.end method
