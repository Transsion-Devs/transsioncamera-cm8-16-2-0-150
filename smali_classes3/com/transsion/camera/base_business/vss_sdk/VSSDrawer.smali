.class public Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/base_business/vss_sdk/GLRenderDrawer;


# static fields
.field private static final BACK_CAMERA_MATRIX:[F

.field private static final FRONT_CAMERA_MATRIX:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mEffectId:I

.field private static mFilterId:I

.field private static mFilterLevel:I

.field private static mFrameId:I


# instance fields
.field private cameraId:Ljava/lang/String;

.field private cameraMatrix:[F

.field private enableBlur:Z

.field private volatile filterInited:Z

.field private gaussianBlur2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

.field private volatile inited:Z

.field private lastUpdateTime:J

.field private mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field public mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mSensorOrientation:I

.field private final mTexTransformMatrix:[F

.field private final mTexTransformMatrixHorizontalMirror:[F

.field private final mTexTransformMatrixVerticalMirror:[F

.field private mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

.field private final mVssHandler:Landroid/os/Handler;

.field private oesFBO:[I

.field private orientation:I

.field public settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field public statusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$KyxmErnWioPYXo-oB7E8CksJNxg(Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->updateParametersOnGLThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$xCekt7SQL-g-KMF9SPm6dsaA_hk(Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->updateParameters()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VSSDrawer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 34
    new-array v1, v0, [F

    fill-array-data v1, :array_26

    sput-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->BACK_CAMERA_MATRIX:[F

    .line 39
    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->FRONT_CAMERA_MATRIX:[F

    const/4 v0, 0x0

    .line 56
    sput v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFilterId:I

    const/16 v1, 0x64

    .line 57
    sput v1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFilterLevel:I

    .line 58
    sput v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mEffectId:I

    .line 59
    sput v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFrameId:I

    return-void

    nop

    :array_26
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4a
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 47
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraMatrix:[F

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVssHandler:Landroid/os/Handler;

    .line 65
    iput v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->orientation:I

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->oesFBO:[I

    .line 80
    new-array v1, p1, [F

    fill-array-data v1, :array_62

    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mTexTransformMatrix:[F

    .line 88
    new-array v2, p1, [F

    fill-array-data v2, :array_86

    iput-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mTexTransformMatrixHorizontalMirror:[F

    .line 95
    new-array p1, p1, [F

    fill-array-data p1, :array_aa

    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mTexTransformMatrixVerticalMirror:[F

    .line 306
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->enableBlur:Z

    .line 103
    sget-object p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[VSSDrawer Construct]"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 107
    invoke-static {v2, v0, p0, p0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 108
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v9, -0x41000000    # -0.5f

    .line 109
    invoke-static {v2, v0, v9, v9, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 111
    invoke-static {p1, v0, p0, p0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    move-object v3, p1

    .line 112
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 113
    invoke-static {v3, v0, v9, v9, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void

    :array_62
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_86
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_aa
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private create2DProgram()V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_25

    .line 376
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 377
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DProgram,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_32

    .line 380
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 382
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->oesFBO:[I

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    .line 383
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->oesFBO:[I

    const/4 p0, 0x0

    .line 384
    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    :cond_3f
    return-void
.end method

.method private destroy2DProgram()V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    .line 391
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 393
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_13

    .line 394
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    .line 395
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 397
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->oesFBO:[I

    if-eqz v0, :cond_1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 399
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->oesFBO:[I

    :cond_1e
    return-void
.end method

.method private drawEffect(IIIII)V
    .registers 8

    .line 309
    sget-object p3, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawEffect() called with: inTexture = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], outTexture = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], width = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], height = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    iget-object p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    if-nez p3, :cond_38

    return-void

    :cond_38
    const/4 p3, 0x0

    .line 311
    invoke-static {p3, p3, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 313
    :try_start_3c
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->process(IIII)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p0

    .line 315
    sget-object p1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "drawEffect: "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private drawNoEffect(IIII)V
    .registers 6

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->create2DProgram()V

    const/4 v0, 0x0

    .line 353
    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const p3, 0x8d40

    .line 354
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->drawTexture(I)V

    return-void
.end method

.method private drawOESTexture(Landroid/graphics/SurfaceTexture;I)V
    .registers 5

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->create2DProgram()V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 369
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgramOES:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 371
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private drawTexture(I[FIII)V
    .registers 6

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->create2DProgram()V

    const p3, 0x8d40

    .line 360
    invoke-static {p3, p5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 361
    iget-object p4, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p4, p2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->updateTransformMatrix([F)V

    .line 362
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->setUseMatrixFromTexture(Z)V

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->drawTexture(I)V

    .line 364
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private initFilter(II)V
    .registers 4

    .line 185
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    .line 188
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    .line 191
    new-instance p1, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->gaussianBlur2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->updateParametersOnGLThread()V

    return-void
.end method

.method private needUpdateTime()Z
    .registers 5

    .line 245
    iget-wide v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->lastUpdateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 246
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->lastUpdateTime:J

    const/4 p0, 0x1

    return p0
.end method

.method private updateParameters()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_c

    .line 150
    new-instance v1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private updateParametersOnGLThread()V
    .registers 4

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    if-nez v0, :cond_5

    goto :goto_9

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 159
    :cond_a
    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FILTER_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget v2, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFilterId:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->setFeature(Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->EFFECT_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget v2, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mEffectId:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->setFeature(Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;I)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FRAME_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget v2, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFrameId:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->setFeature(Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;I)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FILTER_INTENSITY:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget v2, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFilterLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->setFeature(Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;I)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    sget-object v2, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->CAMERA_TYPE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x0

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x1

    :goto_4b
    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->setFeature(Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;I)V

    .line 167
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParametersOnGLThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->ROTATE_DEGREE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    iget p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->orientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->setFeature(Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    return-void
.end method

.method public destroyFilter()V
    .registers 3

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    if-nez v0, :cond_5

    goto :goto_1e

    :cond_5
    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 217
    invoke-virtual {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;->close()V

    .line 218
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    .line 220
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->destroy2DProgram()V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->gaussianBlur2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

    if-eqz v0, :cond_1e

    .line 222
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->release()V

    .line 223
    iput-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->gaussianBlur2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

    :cond_1e
    :goto_1e
    return-void
.end method

.method public drawLiveHDR(Landroid/graphics/SurfaceTexture;III[I[I[FIIZI)V
    .registers 23

    move v4, p4

    move/from16 v6, p8

    move/from16 v7, p11

    .line 253
    iget-boolean v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    if-nez v1, :cond_a

    return-void

    .line 254
    :cond_a
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->initFilter(II)V

    .line 255
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->updateCameraInfo()V

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVSSEngine:Lcom/transsion/camera/base_business/vss_sdk/VSSEngine;

    const/4 v8, 0x0

    if-nez v1, :cond_1b

    .line 261
    aget v1, p6, v8

    invoke-direct {p0, p2, v1, p3, p4}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawNoEffect(IIII)V

    goto :goto_26

    .line 263
    :cond_1b
    aget v2, p5, v8

    aget v3, p6, v8

    move-object v0, p0

    move v1, p2

    move v5, v4

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawEffect(IIIII)V

    :goto_26
    if-eqz p10, :cond_90

    .line 268
    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTransformMatrixHorizontalMirror:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->isTransformMatrixHorizontalMirror()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTransformMatrixVerticalMirror:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->isTransformMatrixVerticalMirror()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    aget v1, p5, v8

    .line 272
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->isTransformMatrixVerticalMirror()Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_63

    .line 273
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mTexTransformMatrixVerticalMirror:[F

    aget v5, p6, v9

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawTexture(I[FIII)V

    :goto_61
    move v10, p4

    goto :goto_7f

    .line 274
    :cond_63
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConfig;->isTransformMatrixHorizontalMirror()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 275
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mTexTransformMatrixHorizontalMirror:[F

    aget v5, p6, v9

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawTexture(I[FIII)V

    goto :goto_61

    .line 277
    :cond_74
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mTexTransformMatrix:[F

    aget v5, p6, v9

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawTexture(I[FIII)V

    move v10, v4

    .line 279
    :goto_7f
    aget v1, p5, v9

    .line 281
    invoke-static {v8, v8, v7, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 282
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraMatrix:[F

    const/4 v3, 0x2

    aget v5, p6, v3

    move-object v0, p0

    move v4, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawTexture(I[FIII)V

    goto :goto_92

    :cond_90
    move v10, p4

    move v4, v6

    .line 284
    :goto_92
    aget v1, p5, v8

    .line 285
    iget-boolean v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->enableBlur:Z

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->gaussianBlur2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

    if-eqz v2, :cond_a5

    .line 286
    invoke-virtual {v2, v1, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->draw(III)Z

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->gaussianBlur2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->getOutTextureId()I

    move-result v1

    .line 289
    :cond_a5
    invoke-static {v8, v8, v7, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 290
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraMatrix:[F

    move-object v0, p0

    move v3, p3

    move/from16 v5, p9

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->drawTexture(I[FIII)V

    .line 291
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public enableBlur(Z)V
    .registers 2

    .line 303
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->enableBlur:Z

    return-void
.end method

.method public init()V
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    return-void
.end method

.method public initFilter(Z)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public initPram(IIII)V
    .registers 7

    .line 117
    invoke-virtual {p0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFilterId(I)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFilterLevel(I)V

    .line 119
    invoke-virtual {p0, p3}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setEffectId(I)V

    .line 120
    invoke-virtual {p0, p4}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFrameId(I)V

    .line 121
    sget-object p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: filterValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterLevel = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", effect = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", frame = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isInit()Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->inited:Z

    return p0
.end method

.method public onSettingReady()V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->updateParameters()V

    return-void
.end method

.method public postInvalidate(I)V
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mVssHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setEffectId(I)V
    .registers 2

    .line 417
    sput p1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mEffectId:I

    return-void
.end method

.method public setFilterId(I)V
    .registers 2

    .line 409
    sput p1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFilterId:I

    return-void
.end method

.method public setFilterInited(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->filterInited:Z

    return-void
.end method

.method public setFilterLevel(I)V
    .registers 2

    .line 413
    sput p1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFilterLevel:I

    return-void
.end method

.method public setFrameId(I)V
    .registers 2

    .line 421
    sput p1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mFrameId:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 404
    iput p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->orientation:I

    .line 405
    invoke-direct {p0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->updateParameters()V

    return-void
.end method

.method public updateCameraInfo()V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 198
    :cond_f
    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraId:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mSensorOrientation:I

    .line 201
    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCameraInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mSensorOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->mSensorOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_55

    .line 203
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->BACK_CAMERA_MATRIX:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraMatrix:[F

    return-void

    :cond_55
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_64

    .line 205
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->FRONT_CAMERA_MATRIX:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraMatrix:[F

    return-void

    :cond_64
    const/16 v0, 0x10

    .line 207
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->cameraMatrix:[F

    const/4 p0, 0x0

    .line 208
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method
