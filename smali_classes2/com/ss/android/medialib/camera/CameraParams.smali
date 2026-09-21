.class public Lcom/ss/android/medialib/camera/CameraParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/camera/CameraParams$CameraMode;
    }
.end annotation


# static fields
.field public static final MTK_CAMERA_MODE:Ljava/lang/String; = "MTK_CAMERA_MODE"

.field public static final MTK_CAMERA_MODE_PRV:Ljava/lang/String; = "CAMERA_MODE_MTK_PRV"

.field public static final MTK_CAMERA_MODE_PVO:Ljava/lang/String; = "CAMERA_MODE_MTK_PVO"

.field public static final OPTION_FLAG_DEFAULT:B = 0x1t

.field public static final OPTION_FLAG_FIRST_FRAME_NOT_INVERTED:B = 0x8t

.field public static final OPTION_FLAG_FPS_RANGE:B = 0x2t

.field public static final OPTION_FLAG_MTK_3DNR:B = 0x4t

.field public static final OPTION_FLAG_PICTURE_SIZE:B = 0x1t

.field public static final OUTPUT_NV21IMAGE:I = 0x2

.field public static final OUTPUT_SURFACETEXURE:I = 0x1

.field public static final OUTPUT_SURFACE_FRAME:I = 0x4

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field public static final sCameraSceneMode:[Ljava/lang/String;


# instance fields
.field public enableFallBack:Z

.field public enableMTKZsl:Z

.field private enableTakePictureOpt:Z

.field public enableVideoStabilization:Z

.field public isMTKPlatform:Z

.field public mCameraHardwareSupportLevel:I

.field private mCameraPictureSize:Landroid/graphics/Point;

.field public mContext:Landroid/content/Context;

.field public mFpsRangeMax:I

.field public mFpsRangeMin:I

.field public mHeight:I

.field public mOptionFlags:B

.field public mOutputType:I

.field public mPicHeight:I

.field public mPicWidth:I

.field public mSceneMode:Ljava/lang/String;

.field public mType:I

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 36
    const-string v8, "landscape"

    const-string v9, "snow"

    const-string v0, "auto"

    const-string v1, "portrait"

    const-string v2, "party"

    const-string v3, "sunset"

    const-string v4, "candlelight"

    const-string v5, "night"

    const-string v6, "hdr"

    const-string v7, "action"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/camera/CameraParams;->sCameraSceneMode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 63
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMin:I

    const/16 v0, 0x1e

    .line 64
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMax:I

    const/16 v0, 0x500

    .line 65
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    const/16 v0, 0x2d0

    .line 66
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    .line 70
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableMTKZsl:Z

    .line 72
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->isMTKPlatform:Z

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableVideoStabilization:Z

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    .line 86
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mCameraHardwareSupportLevel:I

    .line 93
    iput-byte v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOptionFlags:B

    .line 98
    const-string v1, "auto"

    iput-object v1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mSceneMode:Ljava/lang/String;

    .line 103
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableFallBack:Z

    .line 107
    iput-object p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    .line 108
    iput p2, p0, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 7

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 63
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMin:I

    const/16 v0, 0x1e

    .line 64
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMax:I

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    .line 70
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableMTKZsl:Z

    .line 72
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->isMTKPlatform:Z

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableVideoStabilization:Z

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    .line 86
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mCameraHardwareSupportLevel:I

    .line 93
    iput-byte v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOptionFlags:B

    .line 98
    const-string v1, "auto"

    iput-object v1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mSceneMode:Ljava/lang/String;

    .line 103
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableFallBack:Z

    .line 112
    iput-object p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    .line 113
    iput p2, p0, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    .line 114
    iput p3, p0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    .line 115
    iput p4, p0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 128
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/camera/CameraParams;-><init>(Landroid/content/Context;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .registers 11

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 63
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMin:I

    const/16 v0, 0x1e

    .line 64
    iput v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMax:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableMTKZsl:Z

    .line 72
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->isMTKPlatform:Z

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableVideoStabilization:Z

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    .line 86
    iput v1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mCameraHardwareSupportLevel:I

    .line 93
    iput-byte v1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOptionFlags:B

    .line 98
    const-string v2, "auto"

    iput-object v2, p0, Lcom/ss/android/medialib/camera/CameraParams;->mSceneMode:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableFallBack:Z

    .line 142
    iput-object p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    .line 143
    iput p2, p0, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    .line 144
    iput p3, p0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    .line 145
    iput p4, p0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    .line 146
    iput p5, p0, Lcom/ss/android/medialib/camera/CameraParams;->mPicWidth:I

    .line 147
    iput p6, p0, Lcom/ss/android/medialib/camera/CameraParams;->mPicHeight:I

    if-lez p5, :cond_2f

    if-lez p6, :cond_2f

    move v0, v1

    .line 148
    :cond_2f
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableTakePictureOpt:Z

    .line 149
    iput-boolean p7, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableMTKZsl:Z

    return-void
.end method


# virtual methods
.method public getCameraPictureSize()Landroid/graphics/Point;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mCameraPictureSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public isEnableTakePictrueOpt()Z
    .registers 1

    .line 158
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/CameraParams;->enableTakePictureOpt:Z

    return p0
.end method

.method public isValid()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mWidth:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mHeight:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMin:I

    if-lez v0, :cond_16

    iget p0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mFpsRangeMax:I

    if-lt p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public setCameraPictureSize(Landroid/graphics/Point;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mCameraPictureSize:Landroid/graphics/Point;

    return-void
.end method

.method public setOutputMode(I)V
    .registers 2

    .line 178
    iput p1, p0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    return-void
.end method
