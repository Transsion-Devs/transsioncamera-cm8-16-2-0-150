.class public Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Brightness:I = 0x0

.field private static BrightnessP:I = 0x0

.field private static Contrast:I = 0x0

.field private static DehazeBsat:F = 0.0f

.field private static DehazeLevel:I = 0x0

.field private static DehazeType:I = 0x0

.field private static DehazeWsat:F = 0.0f

.field private static Faces:[Landroid/graphics/RectF; = null

.field private static Gamma:Z = false

.field private static HasFace:Z = false

.field public static final KEY_CONFIG:Ljava/lang/String; = "pref_live_hdr_config_key"

.field private static LutColor:Z = false

.field public static final MODEL_NAME:Ljava/lang/String; = "AIWorksModels"

.field private static Mask:Z = false

.field private static ModelType:I = 0x0

.field private static ModelTypeP:I = 0x0

.field public static final PREFERENCES_FILE_NAME_BACK:Ljava/lang/String; = "aiworks_livehdr_config_back.xml"

.field public static final PREFERENCES_FILE_NAME_FRONT:Ljava/lang/String; = "aiworks_livehdr_config_front.xml"

.field private static Saturation:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static TransformMatrixHorizontalMirror:Z

.field private static TransformMatrixVerticalMirror:Z

.field private static WaterMarkOn:Z

.field private static isHighFrameMode:Z

.field private static sBufferCount:I

.field private static sCameraId:I

.field private static sDebug:Z

.field private static sIsFlashFired:Z

.field private static sProductName:Ljava/lang/String;

.field private static sTranssionBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HDRConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sProductName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sDebug:Z

    .line 19
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isHighFrameMode:Z

    .line 20
    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sCameraId:I

    .line 21
    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sBufferCount:I

    const/4 v1, 0x1

    .line 24
    sput v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->ModelType:I

    .line 25
    sput v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->ModelTypeP:I

    const/16 v2, 0x64

    .line 26
    sput v2, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Brightness:I

    .line 27
    sput v2, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->BrightnessP:I

    .line 28
    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Saturation:I

    .line 29
    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Contrast:I

    .line 31
    sput-boolean v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->HasFace:Z

    .line 32
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Mask:Z

    .line 33
    sput-boolean v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Gamma:Z

    .line 34
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->LutColor:Z

    .line 35
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->WaterMarkOn:Z

    .line 36
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TransformMatrixVerticalMirror:Z

    .line 37
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TransformMatrixHorizontalMirror:Z

    .line 43
    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->DehazeType:I

    const/16 v1, 0xf

    .line 44
    sput v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->DehazeLevel:I

    const v1, 0x3ba3d70a    # 0.005f

    .line 45
    sput v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->DehazeWsat:F

    const v1, 0x37fba882    # 3.0E-5f

    .line 46
    sput v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->DehazeBsat:F

    .line 49
    sput-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sIsFlashFired:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferCountAdd()V
    .registers 1

    .line 201
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sBufferCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sBufferCount:I

    return-void
.end method

.method public static bufferCountRemove()V
    .registers 1

    .line 205
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sBufferCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sBufferCount:I

    return-void
.end method

.method public static getBrightness()I
    .registers 1

    .line 116
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Brightness:I

    return v0
.end method

.method public static getBrightnessP()I
    .registers 1

    .line 120
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->BrightnessP:I

    return v0
.end method

.method public static getBufferCount()I
    .registers 1

    .line 197
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sBufferCount:I

    return v0
.end method

.method public static getCameraId()I
    .registers 1

    .line 210
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sCameraId:I

    return v0
.end method

.method public static getContrast()I
    .registers 1

    .line 136
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Contrast:I

    return v0
.end method

.method public static getFaces()[Landroid/graphics/RectF;
    .registers 1

    .line 103
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Faces:[Landroid/graphics/RectF;

    return-object v0
.end method

.method public static getModelType()I
    .registers 1

    .line 148
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->ModelType:I

    return v0
.end method

.method public static getModelTypeP()I
    .registers 1

    .line 152
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->ModelTypeP:I

    return v0
.end method

.method public static getSaturation()I
    .registers 1

    .line 132
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Saturation:I

    return v0
.end method

.method public static getTranssionBrightness()I
    .registers 1

    .line 124
    sget v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sTranssionBrightness:I

    return v0
.end method

.method public static hasFace()Z
    .registers 1

    .line 112
    sget-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->HasFace:Z

    return v0
.end method

.method public static isFlashFired()Z
    .registers 1

    .line 164
    sget-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sIsFlashFired:Z

    return v0
.end method

.method public static declared-synchronized isTransformMatrixHorizontalMirror()Z
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;

    monitor-enter v0

    .line 188
    :try_start_3
    sget-boolean v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TransformMatrixHorizontalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized isTransformMatrixVerticalMirror()Z
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;

    monitor-enter v0

    .line 180
    :try_start_3
    sget-boolean v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TransformMatrixVerticalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized isWaterMarkOn()Z
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;

    monitor-enter v0

    .line 172
    :try_start_3
    sget-boolean v1, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->WaterMarkOn:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setCameraId(I)V
    .registers 1

    .line 214
    sput p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sCameraId:I

    return-void
.end method

.method public static setFaceInfo([Landroid/graphics/RectF;)V
    .registers 1

    .line 99
    sput-object p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Faces:[Landroid/graphics/RectF;

    return-void
.end method

.method public static setFlashFired(Z)V
    .registers 1

    .line 168
    sput-boolean p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sIsFlashFired:Z

    return-void
.end method

.method public static setHasFace(Z)V
    .registers 1

    .line 108
    sput-boolean p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->HasFace:Z

    return-void
.end method

.method public static setLutColor(Z)V
    .registers 1

    .line 156
    sput-boolean p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->LutColor:Z

    return-void
.end method

.method public static declared-synchronized setTransformMatrixHorizontalMirror(Z)V
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;

    monitor-enter v0

    .line 192
    :try_start_3
    sput-boolean p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TransformMatrixHorizontalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 193
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static declared-synchronized setTransformMatrixVerticalMirror(Z)V
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;

    monitor-enter v0

    .line 184
    :try_start_3
    sput-boolean p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->TransformMatrixVerticalMirror:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 185
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setTranssionBrightness(I)V
    .registers 1

    .line 128
    sput p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->sTranssionBrightness:I

    return-void
.end method

.method public static declared-synchronized setWaterMarkOn(Z)V
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;

    monitor-enter v0

    .line 176
    :try_start_3
    sput-boolean p0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->WaterMarkOn:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 177
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static useGamma()Z
    .registers 1

    .line 144
    sget-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Gamma:Z

    return v0
.end method

.method public static useLutColor()Z
    .registers 1

    .line 160
    sget-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->LutColor:Z

    return v0
.end method

.method public static useMask()Z
    .registers 1

    .line 140
    sget-boolean v0, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->Mask:Z

    return v0
.end method
