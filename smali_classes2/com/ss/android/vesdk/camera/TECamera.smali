.class public Lcom/ss/android/vesdk/camera/TECamera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;
    }
.end annotation


# static fields
.field private static final RECT_PREVENT_TEXTURE_RENDER:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "TECamera"


# instance fields
.field private isFirstOpen:Z

.field private mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

.field private mCameraOutPutMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

.field private mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

.field mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

.field private mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

.field private mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field private mDropFrame:I

.field private mEnableNotify:Z

.field private mHandle:J

.field private mOnCameraInfoListener:Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;

.field private mPreventTextureRender:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

.field private mUseFront:I

.field private originFacing:I

.field private originFrameHeight:I

.field private originFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 58
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/ss/android/vesdk/TextureHolder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/TextureHolder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 43
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->isFirstOpen:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I

    .line 54
    iput-boolean v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mEnableNotify:Z

    .line 216
    new-instance v0, Lcom/ss/android/vesdk/camera/TECamera$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/camera/TECamera$1;-><init>(Lcom/ss/android/vesdk/camera/TECamera;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 72
    invoke-direct {p0}, Lcom/ss/android/vesdk/camera/TECamera;->nativeCameraCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/ss/android/vesdk/TextureHolder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/TextureHolder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 43
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->isFirstOpen:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I

    .line 54
    iput-boolean v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mEnableNotify:Z

    .line 216
    new-instance v0, Lcom/ss/android/vesdk/camera/TECamera$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/camera/TECamera$1;-><init>(Lcom/ss/android/vesdk/camera/TECamera;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 76
    iput-wide p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/camera/TECamera;->nativeInit(J)I

    move-result p1

    if-eqz p1, :cond_2c

    const-wide/16 p1, 0x0

    .line 79
    iput-wide p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    :cond_2c
    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/camera/TECamera;)Lcom/ss/android/vesdk/TextureHolder;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/android/vesdk/camera/TECamera;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I

    return p0
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/camera/TECamera;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I

    return p1
.end method

.method static synthetic access$1010(Lcom/ss/android/vesdk/camera/TECamera;)I
    .registers 3

    .line 36
    iget v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I

    return v0
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/camera/TECamera;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ss/android/vesdk/camera/TECamera;)J
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/ss/android/vesdk/camera/TECamera;JZ)I
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/camera/TECamera;->nativeNotifyCameraFrameAvailable(JZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ss/android/vesdk/camera/TECamera;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mEnableNotify:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/ss/android/vesdk/camera/TECamera;JLjava/lang/Object;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/camera/TECamera;->nativeExtFrameDataAttached(JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/camera/TECamera;)Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mOnCameraInfoListener:Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/camera/TECamera;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    return p0
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/camera/TECamera;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    return p1
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/camera/TECamera;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->isFirstOpen:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/camera/TECamera;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->isFirstOpen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/camera/TECamera;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->originFacing:I

    return p0
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/camera/TECamera;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->originFacing:I

    return p1
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/camera/TECamera;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->originFrameWidth:I

    return p0
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/camera/TECamera;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->originFrameWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/ss/android/vesdk/camera/TECamera;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->originFrameHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/camera/TECamera;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->originFrameHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/ss/android/vesdk/camera/TECamera;Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeCameraCreate()J
.end method

.method private native nativeCameraDestroy(J)V
.end method

.method private native nativeCameraParam(JLcom/ss/android/ttvecamera/TECameraFrameSetting;)I
.end method

.method private native nativeExtFrameDataAttached(JLjava/lang/Object;)V
.end method

.method private native nativeInit(J)I
.end method

.method private native nativeNotifyCameraFrameAvailable(JZ)I
.end method

.method private setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 20

    move-object/from16 v0, p0

    .line 279
    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 280
    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/ss/android/ttvecamera/TECameraFrame;->setTextureID(I)V

    goto :goto_18

    :cond_16
    move-object/from16 v2, p1

    .line 282
    :goto_18
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getRotation()I

    move-result v6

    .line 283
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v3, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_OpenGL_OES:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v3, :cond_8b

    .line 284
    new-instance v3, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getTextureID()I

    move-result v4

    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 285
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v7

    iget v7, v7, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMVPMatrix()[F

    move-result-object v9

    iget v10, v0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    move v8, v6

    move v6, v1

    invoke-direct/range {v3 .. v12}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(IIIII[FIII)V

    iput-object v3, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    .line 286
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v3, "ve_enable_camera_metadata"

    invoke-virtual {v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_1d7

    .line 287
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d7

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_1d7

    .line 288
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 289
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMetadata()Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    move-result-object v1

    .line 290
    iget-object v2, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->flattenForTitan()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->setMetadata(Ljava/util/HashMap;)V

    goto/16 :goto_1d7

    .line 293
    :cond_8b
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraFrame;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_143

    .line 294
    invoke-static {v2}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEImageFrame2ImageFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v1

    const/4 v4, 0x2

    .line 295
    new-array v5, v4, [I

    const/4 v7, 0x1

    aput v3, v5, v7

    const/4 v8, 0x0

    aput v3, v5, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 296
    new-array v3, v3, [Ljava/nio/ByteBuffer;

    .line 297
    new-instance v9, Lcom/ss/android/medialib/PlanFrame;

    invoke-direct {v9, v1}, Lcom/ss/android/medialib/PlanFrame;-><init>(Lcom/ss/android/medialib/camera/ImageFrame;)V

    invoke-virtual {v9, v5, v3}, Lcom/ss/android/medialib/PlanFrame;->convert([[I[Ljava/nio/ByteBuffer;)Z

    .line 298
    iget-object v9, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v9, :cond_bd

    invoke-virtual {v9}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v9

    sget-object v10, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v9, v10, :cond_c5

    :cond_bd
    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v7

    move v13, v8

    goto :goto_114

    .line 301
    :cond_c5
    iget-object v9, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v9

    sget-object v10, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v9, v10, :cond_1d7

    .line 302
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    iget-object v9, v0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v9

    iget-object v10, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v10}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object v11, v5

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v5

    move v12, v7

    move v7, v6

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v6

    move v13, v8

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMVPMatrix()[F

    move-result-object v8

    move-object v14, v3

    move v3, v9

    iget v9, v0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    move v15, v4

    move v4, v10

    aget-object v10, v14, v13

    move-object/from16 v16, v11

    aget-object v11, v16, v13

    move/from16 v17, v12

    aget-object v12, v14, v17

    aget-object v13, v16, v17

    aget-object v14, v14, v15

    aget-object v15, v16, v15

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    invoke-direct/range {v2 .. v16}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(IIIII[FILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[II)V

    iput-object v2, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    goto/16 :goto_1d7

    .line 299
    :goto_114
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    iget-object v3, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v5

    iget v7, v0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    aget-object v8, v14, v13

    aget-object v9, v16, v13

    aget-object v10, v14, v17

    aget-object v11, v16, v17

    aget-object v12, v14, v15

    aget-object v13, v16, v15

    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_YUV420P:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(IIIIILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[II)V

    iput-object v2, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    goto/16 :goto_1d7

    .line 305
    :cond_143
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-eq v1, v2, :cond_15d

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    if-ne v1, v2, :cond_154

    goto :goto_15d

    .line 316
    :cond_154
    sget-object v1, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    const-string v2, "Not support now!!"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d7

    .line 307
    :cond_15d
    :goto_15d
    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v1, :cond_1ac

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v1

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v1, v2, :cond_16a

    goto :goto_1ac

    .line 310
    :cond_16a
    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v1

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v1, v2, :cond_1d7

    .line 311
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v3

    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v5, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getMVPMatrix()[F

    move-result-object v8

    iget v9, v0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move v7, v6

    move v6, v1

    invoke-direct/range {v2 .. v11}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(IIIII[FI[BI)V

    iput-object v2, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    goto :goto_1d7

    .line 308
    :cond_1ac
    :goto_1ac
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    iget-object v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v4, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v5, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v7, v0, Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getBufferData()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getPixelFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(IIIII[BI)V

    iput-object v2, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    .line 318
    :cond_1d7
    :goto_1d7
    iget-wide v1, v0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1e4

    iget-object v3, v0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/vesdk/camera/TECamera;->nativeCameraParam(JLcom/ss/android/ttvecamera/TECameraFrameSetting;)I

    :cond_1e4
    return-void
.end method


# virtual methods
.method public createFrameOESTextureIfNeed()V
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->createOESTexture()V

    :cond_f
    return-void
.end method

.method public destroy()V
    .registers 6

    .line 153
    iget-wide v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/camera/TECamera;->nativeCameraDestroy(J)V

    .line 155
    iput-wide v2, p0, Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 157
    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mOnCameraInfoListener:Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;

    :cond_12
    return-void
.end method

.method public declared-synchronized getNextFrame()I
    .registers 6

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    .line 172
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    iget-object v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 173
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->detachFromGLContext()Z

    goto :goto_1b

    :catchall_18
    move-exception v0

    goto/16 :goto_ab

    .line 176
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 177
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    check-cast v0, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    iget-object v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;->setSurfaceTextureID(I)V

    .line 178
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TextureHolder;->setNeedAttachToGLContext(Z)V

    .line 179
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->attachToGLContext()Z

    .line 181
    :cond_3b
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v2, :cond_82

    .line 182
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_18

    if-ne v0, v2, :cond_a3

    .line 185
    :try_start_52
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getExtParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "forceRunUpdateTexImg"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 186
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->updateTexImage()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_66
    .catchall {:try_start_52 .. :try_end_65} :catchall_18

    goto :goto_a3

    :catch_66
    move-exception v0

    .line 189
    :try_start_67
    sget-object v2, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTexImage error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_67 .. :try_end_81} :catchall_18

    goto :goto_a3

    .line 194
    :cond_82
    :try_start_82
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->updateTexImage()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88
    .catchall {:try_start_82 .. :try_end_87} :catchall_18

    goto :goto_a3

    :catch_88
    move-exception v0

    .line 196
    :try_start_89
    sget-object v2, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTexImage error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_a3
    :goto_a3
    iget-boolean v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mPreventTextureRender:Z
    :try_end_a5
    .catchall {:try_start_89 .. :try_end_a5} :catchall_18

    if-eqz v0, :cond_a9

    const/16 v1, -0x3e8

    .line 203
    :cond_a9
    monitor-exit p0

    return v1

    :goto_ab
    :try_start_ab
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_18

    throw v0
.end method

.method public getTexImageTimeDelay()J
    .registers 5

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTimeStamp()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public preventTextureRender(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mPreventTextureRender:Z

    return-void
.end method

.method public release()V
    .registers 3

    .line 162
    sget-object v0, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    const-string v1, "release..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->detachFromGLContext()Z

    .line 164
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/ConcurrentList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnableCameraNotify(Z)V
    .registers 5

    .line 322
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_release_block_time_real"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_27

    .line 323
    iput-boolean p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mEnableNotify:Z

    .line 324
    sget-object p1, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableCameraNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mEnableNotify:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public setOnCameraInfoListener(Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mOnCameraInfoListener:Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;

    return-void
.end method

.method public start(Lcom/ss/android/vesdk/camera/ICameraPreview;)I
    .registers 11

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/camera/TECamera;->setEnableCameraNotify(Z)V

    .line 93
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    if-nez v0, :cond_16

    .line 95
    sget-object p0, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    const-string p1, "mCameraSetting is null."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 98
    :cond_16
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraOutPutMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    .line 99
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 100
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->onCreate()V

    goto :goto_30

    .line 102
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TextureHolder;->createSurfaceTexture(Z)V

    .line 104
    :goto_30
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 105
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isVESetCameraTwoOutputMode()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 106
    sget-object v0, Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;

    const-string v2, "VE Set Camera Two output mode."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VECameraSettings;->setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V

    .line 109
    :cond_58
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v2, :cond_94

    .line 110
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne v0, v2, :cond_8f

    .line 111
    new-instance v3, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;

    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v4, v0, v2}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v5, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 112
    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;I)V

    iput-object v3, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    goto :goto_94

    .line 115
    :cond_8f
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings;->setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V

    .line 119
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    if-ne v0, v1, :cond_c4

    .line 120
    new-instance v2, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v3, v0, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v4, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 121
    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTextureID()I

    move-result v6

    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/frame/TETextureCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    goto :goto_f0

    .line 122
    :cond_c4
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCameraSetting:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne v0, v1, :cond_f0

    .line 123
    new-instance v2, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;

    new-instance v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v3, v0, v1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iget-object v4, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 124
    invoke-virtual {v0}, Lcom/ss/android/vesdk/TextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/frame/TEBufferCapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;I)V

    iput-object v2, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    .line 127
    :cond_f0
    :goto_f0
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/ConcurrentList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    iget-object v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)I

    move-result p0

    return p0
.end method

.method public startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)I
    .registers 6

    if-eqz p1, :cond_45

    .line 134
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/frame/TECapturePipeline;

    if-eqz v2, :cond_10

    .line 137
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v0, :cond_40

    if-eqz v2, :cond_40

    .line 143
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 144
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iput v3, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 145
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput v0, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 147
    :cond_40
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/camera/ICameraPreview;->start(Lcom/ss/android/vesdk/ConcurrentList;)I

    :cond_45
    const/4 p0, 0x0

    return p0
.end method
