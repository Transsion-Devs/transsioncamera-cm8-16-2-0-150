.class public Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/base_business/transsionfilter_sdk/GLRenderDrawer;


# static fields
.field private static final BACK_CAMERA_MATRIX:[F

.field private static final FRONT_CAMERA_MATRIX:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mFilterId:I

.field private static mImageStyleId:I

.field private static sStreetPhotoDarkCorner:I

.field private static sStreetPhotoNoDarkCorner:I


# instance fields
.field private cameraId:Ljava/lang/String;

.field private cameraMatrix:[F

.field private volatile mCurrentModeName:Ljava/lang/String;

.field private mInitialized:Z

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

.field private mSensorOrientation:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mTexTransformMatrixHorizontalMirror:[F

.field private final mTexTransformMatrixVerticalMirror:[F

.field private mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

.field private orientation:I


# direct methods
.method public static synthetic $r8$lambda$4_53eBT4kayRmiuEdMjxKUUT1xw(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->updateParametersOnGLThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TranssionFilterDrawer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 22
    new-array v1, v0, [F

    fill-array-data v1, :array_24

    sput-object v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->BACK_CAMERA_MATRIX:[F

    .line 29
    new-array v0, v0, [F

    fill-array-data v0, :array_48

    sput-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->FRONT_CAMERA_MATRIX:[F

    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mFilterId:I

    .line 51
    sput v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mImageStyleId:I

    const/4 v1, 0x7

    .line 52
    sput v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->sStreetPhotoDarkCorner:I

    .line 53
    sput v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->sStreetPhotoNoDarkCorner:I

    return-void

    :array_24
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

    :array_48
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
    .registers 13

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 34
    new-array v0, p1, [F

    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTexTransformMatrixHorizontalMirror:[F

    .line 41
    new-array v6, p1, [F

    fill-array-data v6, :array_74

    iput-object v6, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTexTransformMatrixVerticalMirror:[F

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraMatrix:[F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->orientation:I

    .line 58
    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mCurrentModeName:Ljava/lang/String;

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    .line 67
    sget-object p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v7, "[VSSDrawer Construct]"

    invoke-static {p0, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 69
    invoke-static {v0, p1, v8, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v10, -0x41000000    # -0.5f

    .line 71
    invoke-static {v0, p1, v10, v10, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 73
    invoke-static {v6, p1, v8, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    .line 74
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 75
    invoke-static {v1, p1, v10, v10, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 76
    invoke-static {p0, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_50
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

    :array_74
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

.method private algoProcessTexture(IIII)V
    .registers 8

    .line 190
    sget-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawEffect() called with: inTexture = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], outTexture = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], width = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], height = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    if-nez v0, :cond_38

    return-void

    :cond_38
    const/4 v0, 0x0

    .line 194
    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 196
    :try_start_3c
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->process(IIII)Z

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraMatrix:[F

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/IRecordCallback;->onRecording(I[F)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p0

    .line 199
    sget-object p1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "drawEffect: "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateParameters()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_c

    .line 97
    new-instance v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private updateParametersOnGLThread()V
    .registers 7

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    if-eqz v0, :cond_89

    iget-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    if-nez v0, :cond_a

    goto/16 :goto_89

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x73

    if-nez v0, :cond_21

    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mFilterId:I

    const/16 v4, 0x70

    if-lt v0, v4, :cond_21

    if-gt v0, v3, :cond_21

    .line 105
    sput v2, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mFilterId:I

    .line 107
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v4, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->FILTER_INTENSITY:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v4, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->FILTER_INDEX:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    sget v5, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mFilterId:I

    invoke-virtual {v0, v4, v5}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v4, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->IMAGESTYLE_INDEX:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    sget v5, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mImageStyleId:I

    invoke-virtual {v0, v4, v5}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    .line 110
    sget v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mFilterId:I

    const/16 v4, 0x71

    if-lt v0, v4, :cond_56

    if-gt v0, v3, :cond_56

    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->FRAME_INDEX:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    sget v3, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->sStreetPhotoDarkCorner:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    goto :goto_5f

    .line 113
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->FRAME_INDEX:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    sget v3, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->sStreetPhotoNoDarkCorner:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    .line 116
    :goto_5f
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v3, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->CAMERA_TYPE:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x1

    :goto_7d
    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    sget-object v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;->ROTATE_DEGREE:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;

    iget p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->orientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->setFeature(Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConstant$Feature;I)V

    :cond_89
    :goto_89
    return-void
.end method


# virtual methods
.method public getCurrentModeName()Ljava/lang/String;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method public init()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    invoke-direct {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    .line 88
    :cond_b
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    if-nez v0, :cond_17

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->initEngine()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    .line 91
    :cond_17
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->updateParameters()V

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    return p0
.end method

.method public postInvalidate()V
    .registers 1

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->updateParameters()V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setCurrentModeName(Ljava/lang/String;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setFilterId(I)V
    .registers 2

    .line 209
    sput p1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mFilterId:I

    return-void
.end method

.method public setImageStyleId(I)V
    .registers 2

    .line 213
    sput p1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mImageStyleId:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 204
    iput p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->orientation:I

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->updateParameters()V

    return-void
.end method

.method public setPreviewOperator(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mRecordCallback:Lcom/transsion/camera/app/common/mode/IRecordCallback;

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public transsionFilterTextureProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;IIIIZI)Z
    .registers 9

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->updateCameraInfo()V

    .line 181
    iget-object p5, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    if-eqz p5, :cond_15

    iget-boolean p5, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    if-nez p5, :cond_c

    goto :goto_15

    .line 184
    :cond_c
    iget p1, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    iget p2, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->algoProcessTexture(IIII)V

    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()Z
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mTranssionFilterEngine:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;

    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterEngine;->releaseEngine()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    .line 175
    :cond_a
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mInitialized:Z

    return p0
.end method

.method public updateCameraInfo()V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 125
    :cond_f
    iput-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraId:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSensorOrientation:I

    .line 128
    sget-object v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCameraInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSensorOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->mSensorOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_55

    .line 130
    sget-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->BACK_CAMERA_MATRIX:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraMatrix:[F

    return-void

    :cond_55
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_64

    .line 132
    sget-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->FRONT_CAMERA_MATRIX:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraMatrix:[F

    return-void

    :cond_64
    const/16 v0, 0x10

    .line 134
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->cameraMatrix:[F

    const/4 p0, 0x0

    .line 135
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method
