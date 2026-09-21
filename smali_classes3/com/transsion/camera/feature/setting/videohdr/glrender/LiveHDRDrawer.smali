.class public Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/videohdr/glrender/GLRenderDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;
    }
.end annotation


# static fields
.field private static final INIT_MODEL:I = 0x101

.field private static final MODULE_PROCESS_THREAD_NAME:Ljava/lang/String; = "ModuleProcessThread"

.field private static final PROCESS_PIXEL:I = 0x100

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mProcessLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceNumFlag:I

.field private mIsNeedUpdateParam:Z

.field private mModelPath:Ljava/lang/String;

.field private mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

.field private mP32DTexture:I

.field private mP3Fbo:[I

.field private mP3GLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private final mTexTransformMatrix:[F

.field private final mTexTransformMatrixHorizontalMirror:[F

.field private final mTexTransformMatrixVerticalMirror:[F

.field private mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

.field private volatile sInit:Z


# direct methods
.method static bridge synthetic -$$Nest$minitModel(Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->initModel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmProcessLock()Ljava/lang/Object;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mProcessLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveHDRDrawer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mProcessLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    const/16 v1, 0x10

    .line 78
    new-array v2, v1, [F

    fill-array-data v2, :array_54

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrix:[F

    .line 86
    new-array v3, v1, [F

    fill-array-data v3, :array_78

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrixHorizontalMirror:[F

    .line 93
    new-array v1, v1, [F

    fill-array-data v1, :array_9c

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrixVerticalMirror:[F

    .line 52
    sget-object v2, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[LiveHDRDrawer Construct]"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->getModelPath(Landroid/content/Context;)V

    const/high16 p0, 0x3f000000    # 0.5f

    const/4 p1, 0x0

    .line 56
    invoke-static {v3, v0, p0, p0, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 57
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v2, -0x41000000    # -0.5f

    .line 58
    invoke-static {v3, v0, v2, v2, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 60
    invoke-static {v1, v0, p0, p0, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    move-object v4, v1

    .line 61
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 62
    invoke-static {v4, v0, v2, v2, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void

    :array_54
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

    :array_78
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

    :array_9c
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

.method private copyModelFile(Landroid/content/Context;)V
    .registers 4

    .line 208
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-nez p0, :cond_2b

    .line 209
    sget-object p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[copyModelFile] start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "AIWorksModels"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_26
    const-string p1, "[copyModelFile] end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method private createP3GLProgram()V
    .registers 3

    .line 428
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3GLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    return-void
.end method

.method private decodeWaterMarks()V
    .registers 8

    .line 151
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[decodeWaterMarks start]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 152
    new-array v1, v1, [Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->getWatermarkId(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->decodeWaterMark(Landroid/graphics/Bitmap;)Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 156
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->getWatermarkId(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->decodeWaterMark(Landroid/graphics/Bitmap;)Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    move-result-object v4

    aput-object v4, p0, v2

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    const-string p0, "[decodeWaterMarks end]"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private drawEffect(IIII)V
    .registers 15

    .line 432
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    if-eqz v0, :cond_3b

    .line 433
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v1

    .line 434
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->hasFace()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getBrightnessP()I

    move-result v0

    :goto_12
    move v2, v0

    goto :goto_19

    :cond_14
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getBrightness()I

    move-result v0

    goto :goto_12

    .line 435
    :goto_19
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getSaturation()I

    move-result v3

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getContrast()I

    move-result v4

    .line 436
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->hasFace()Z

    move-result v5

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->useMask()Z

    move-result v6

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->useGamma()Z

    move-result v7

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->useLutColor()Z

    move-result v8

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getCameraId()I

    move-result v9

    .line 433
    invoke-virtual/range {v1 .. v9}, Lcom/aiworks/android/livehdr/JniInterface;->setParameters(IIIZZZZI)V

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    .line 440
    :cond_3b
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrix:[F

    move v6, p2

    move v7, p3

    move v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/aiworks/android/livehdr/JniInterface;->drawFrame(I[FIIIII)I

    move-result p1

    if-nez p1, :cond_5f

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    if-eqz p1, :cond_5f

    const/16 p2, 0x100

    .line 443
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5f
    return-void
.end method

.method private drawP3Preview(III[F)V
    .registers 17

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    const/4 v10, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x1

    .line 400
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    .line 401
    invoke-static {v1, v2, v10}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 403
    :cond_d
    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    const/16 v11, 0xde1

    if-nez v1, :cond_1d

    .line 404
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mPreviewWidth:I

    .line 405
    iput p2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mPreviewHeight:I

    .line 406
    invoke-virtual {p0, v11, p1, p2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->generateTexture(III)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    .line 408
    :cond_1d
    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    if-eqz v1, :cond_43

    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mPreviewWidth:I

    if-ne p1, v2, :cond_29

    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mPreviewHeight:I

    if-eq p2, v2, :cond_43

    .line 409
    :cond_29
    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mPreviewWidth:I

    .line 410
    iput p2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mPreviewHeight:I

    .line 411
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0x1401

    const/4 v9, 0x0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    move v4, p1

    move v5, p2

    .line 412
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 413
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 415
    :cond_43
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    aget v1, v1, v10

    const v6, 0x8d40

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    .line 416
    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    invoke-static {v6, v1, v11, v2, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 417
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3GLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v1, :cond_5c

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->createP3GLProgram()V

    .line 421
    :cond_5c
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    aget v1, v1, v10

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 422
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    aget v5, v1, v10

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v1, p3

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawTexture(I[FIII)V

    .line 423
    invoke-static {v6, v10}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 424
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3GLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->drawTexture(I)V

    return-void
.end method

.method private drawTexture(I[FIII)V
    .registers 13

    .line 450
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v0

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/aiworks/android/livehdr/JniInterface;->drawTexture(IZ[FIII)V

    return-void
.end method

.method private drawWaterMark(Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;I)V
    .registers 10

    .line 454
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v0

    iget v1, p1, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmLeft:F

    iget v2, p1, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTop:F

    iget v3, p1, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmWidth:F

    iget v4, p1, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmHeight:F

    iget-object v5, p1, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTexTransform:[F

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/aiworks/android/livehdr/JniInterface;->drawWaterMark(FFFF[FI)V

    return-void
.end method

.method private getModelPath(Landroid/content/Context;)V
    .registers 4

    .line 66
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    const-string v1, "AIWorksModels"

    if-eqz v0, :cond_46

    .line 68
    :try_start_a
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModelPath:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 71
    sget-object p1, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveHDRDrawer :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModelPath:Ljava/lang/String;

    return-void
.end method

.method private getWatermarkId(Z)I
    .registers 6

    if-eqz p1, :cond_e

    .line 171
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "ic_video_watermark_source_1080_special"

    goto :goto_19

    :cond_b
    const-string p0, "ic_video_watermark_source_1080"

    goto :goto_19

    .line 173
    :cond_e
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "ic_video_watermark_source_720_special"

    goto :goto_19

    :cond_17
    const-string p0, "ic_video_watermark_source_720"

    .line 175
    :goto_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoWatermarkBrandCustomize:Z

    const-string v0, "raw"

    if-eqz p1, :cond_4b

    .line 176
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 177
    sget-object v1, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "watermarkCustomize_videoWatermark: getBrandWatermark = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 181
    :cond_4b
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getIdByResName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initModel()V
    .registers 10

    .line 185
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    if-eqz v0, :cond_c

    .line 186
    sget-object p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[initModel] return, has inited"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initModel] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->decodeWaterMarks()V

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->copyModelFile(Landroid/content/Context;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AW_LiveHDR_License.data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModelPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_59

    .line 201
    :cond_3d
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModelPath:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getModelType()I

    move-result v7

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getModelTypeP()I

    move-result v8

    .line 201
    const-string v5, "system/etc/aiworks_livehdr_config.xml"

    invoke-virtual/range {v3 .. v8}, Lcom/aiworks/android/livehdr/JniInterface;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    .line 204
    const-string p0, "[initModel] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_59
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initModel] Path is NULL!!!!!  licensePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   mModelPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModelPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 257
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    if-nez v0, :cond_c

    .line 258
    sget-object p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[destroy] return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[destroy] start Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 263
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 265
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    .line 268
    :cond_3d
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    .line 270
    sget-object v1, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_42
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aiworks/android/livehdr/JniInterface;->destory()V

    .line 272
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_53

    const/4 v1, 0x0

    .line 273
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    .line 274
    const-string p0, "[destroy] end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_53
    move-exception p0

    .line 272
    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public destroyFilter()V
    .registers 5

    .line 229
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[destroyFilter] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aiworks/android/livehdr/JniInterface;->destoryFilter()V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3GLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 232
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    .line 233
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3GLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 235
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    .line 236
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 237
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP3Fbo:[I

    .line 239
    :cond_3a
    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    if-eqz v0, :cond_47

    .line 240
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 241
    iput v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mP32DTexture:I

    :cond_47
    return-void
.end method

.method public drawLiveHDR(III[I[I[FIIIZ)V
    .registers 19

    .line 329
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    if-nez v1, :cond_c

    .line 330
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onDrawFrame] , not inited, return!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_c
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getFaces()[Landroid/graphics/RectF;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_19

    .line 334
    array-length v2, v1

    if-lez v2, :cond_19

    move v2, v7

    goto :goto_1a

    :cond_19
    move v2, v6

    .line 335
    :goto_1a
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->hasFace()Z

    move-result v3

    if-eq v3, v2, :cond_3b

    if-eqz v2, :cond_2b

    .line 337
    invoke-static {v7}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setHasFace(Z)V

    .line 338
    iput-boolean v7, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    const/4 v3, 0x3

    .line 339
    iput v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    goto :goto_3b

    .line 341
    :cond_2b
    iget v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    if-lez v3, :cond_32

    sub-int/2addr v3, v7

    .line 342
    iput v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    .line 344
    :cond_32
    iget v3, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    if-gtz v3, :cond_3b

    .line 345
    invoke-static {v6}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setHasFace(Z)V

    .line 346
    iput-boolean v7, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    :cond_3b
    :goto_3b
    if-eqz v2, :cond_45

    .line 352
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aiworks/android/livehdr/JniInterface;->setFaceRect([Landroid/graphics/RectF;)V

    goto :goto_51

    .line 354
    :cond_45
    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    if-gtz v1, :cond_51

    .line 355
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aiworks/android/livehdr/JniInterface;->setFaceRect([Landroid/graphics/RectF;)V

    .line 359
    :cond_51
    :goto_51
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v1

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->getTranssionBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aiworks/android/livehdr/JniInterface;->setCameraBrightnessValue(I)V

    .line 362
    aget v1, p5, v6

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawEffect(IIII)V

    if-eqz p10, :cond_de

    .line 365
    sget-object v1, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTransformMatrixHorizontalMirror:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isTransformMatrixHorizontalMirror()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isTransformMatrixVerticalMirror:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isTransformMatrixVerticalMirror()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    aget v1, p4, v6

    .line 369
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isTransformMatrixVerticalMirror()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 370
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrixVerticalMirror:[F

    aget v5, p5, v7

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawTexture(I[FIII)V

    goto :goto_b7

    .line 371
    :cond_9c
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isTransformMatrixHorizontalMirror()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 372
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrixHorizontalMirror:[F

    aget v5, p5, v7

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawTexture(I[FIII)V

    goto :goto_b7

    .line 374
    :cond_ad
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mTexTransformMatrix:[F

    aget v5, p5, v7

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawTexture(I[FIII)V

    .line 376
    :goto_b7
    aget v1, p4, v7

    .line 377
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isWaterMarkOn()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 378
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    aget-object v3, v2, v6

    const/16 v5, 0x438

    if-ne p3, v5, :cond_c8

    goto :goto_ce

    :cond_c8
    const/16 v5, 0x2d0

    if-ne p3, v5, :cond_ce

    .line 382
    aget-object v3, v2, v7

    .line 384
    :cond_ce
    :goto_ce
    aget v2, p5, v7

    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawWaterMark(Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;I)V

    :cond_d3
    const/4 v2, 0x2

    .line 387
    aget v5, p5, v2

    move-object v0, p0

    move-object v2, p6

    move v3, p7

    move/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawTexture(I[FIII)V

    .line 389
    :cond_de
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->getP3VideoPreviewSwitch(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v7, :cond_ee

    .line 392
    aget v1, p4, v6

    move/from16 v4, p8

    invoke-direct {p0, p7, v4, v1, p6}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawP3Preview(III[F)V

    return-void

    :cond_ee
    move/from16 v4, p8

    .line 394
    aget v1, p4, v6

    move-object v0, p0

    move-object v2, p6

    move v3, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->drawTexture(I[FIII)V

    return-void
.end method

.method public generateTexture(III)I
    .registers 15

    const/4 p0, 0x1

    .line 312
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 313
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 314
    aget p0, v0, v1

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0xde1

    if-ne p1, p0, :cond_20

    const/16 v9, 0x1401

    const/4 v10, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move v5, p2

    move v6, p3

    .line 316
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_20
    const/16 p0, 0x2801

    const/high16 p2, 0x46180000    # 9728.0f

    .line 318
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2800

    const p2, 0x46180400    # 9729.0f

    .line 319
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const p2, 0x47012f00    # 33071.0f

    .line 320
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2803

    .line 321
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 322
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 323
    aget p0, v0, v1

    return p0
.end method

.method public init()V
    .registers 4

    .line 133
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    if-eqz v0, :cond_c

    .line 134
    sget-object p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[Init] return,  has inited"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[Init]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    if-nez v0, :cond_2d

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleProcessThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 142
    new-instance v1, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;-><init>(Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    .line 145
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mModuleProcessHandler:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_40
    return-void
.end method

.method public initFilter(Z)I
    .registers 5

    .line 220
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initFilter] Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aiworks/android/livehdr/JniInterface;->initFilter(Z)V

    .line 222
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aiworks/android/livehdr/JniInterface;->setDebuggable(Z)V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    return p1
.end method

.method public initWaterMark(I)V
    .registers 5

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    if-eqz v0, :cond_38

    .line 280
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initWaterMark] surfaceWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/16 v1, 0x438

    if-ne p1, v1, :cond_24

    goto :goto_2b

    :cond_24
    const/16 v1, 0x2d0

    if-ne p1, v1, :cond_2b

    const/4 p1, 0x1

    .line 285
    aget-object v0, p0, p1

    .line 288
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object p0

    iget-object p1, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkBuffer:[B

    iget v1, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkW:I

    iget v0, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkH:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/aiworks/android/livehdr/JniInterface;->initWaterMark([BII)V

    :cond_38
    return-void
.end method

.method public isInit()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->sInit:Z

    return p0
.end method

.method public reset()V
    .registers 3

    .line 247
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mFaceNumFlag:I

    const/4 v1, 0x0

    .line 249
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setFaceInfo([Landroid/graphics/RectF;)V

    .line 250
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setHasFace(Z)V

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mIsNeedUpdateParam:Z

    .line 252
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/aiworks/android/livehdr/JniInterface;->reset()V

    return-void
.end method

.method public updateWaterMarkPosition(IIIIZ)V
    .registers 15

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->mWaterMarkArrays:[Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    if-eqz p0, :cond_26

    array-length v0, p0

    if-nez v0, :cond_8

    goto :goto_26

    :cond_8
    const/4 v0, 0x0

    .line 299
    aget-object v0, p0, v0

    const/16 v1, 0x438

    if-ne p2, v1, :cond_11

    :cond_f
    :goto_f
    move-object v1, v0

    goto :goto_19

    :cond_11
    const/16 v1, 0x2d0

    if-ne p2, v1, :cond_f

    const/4 v0, 0x1

    .line 303
    aget-object v0, p0, v0

    goto :goto_f

    :goto_19
    if-eqz v1, :cond_25

    const/4 v2, 0x6

    const/4 v3, 0x6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 306
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->setWaterMarkPosition(IIIIIIZ)V

    :cond_25
    return-void

    .line 296
    :cond_26
    :goto_26
    sget-object p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateWaterMarkPosition] No WaterMark"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
