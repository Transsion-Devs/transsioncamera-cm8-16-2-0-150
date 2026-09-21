.class public Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static cameraPreviewSize:Landroid/util/Size;

.field public static isCrash:Z

.field public static isDebug:Z

.field public static isOpenSmoothing:Z

.field public static isSaveFrameData:Z

.field public static sDetectIntervalValue:I

.field public static sHandImageResize:Lcom/tetras/hand/model/HandConfig$HandImageResize;

.field public static supportPreviewSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static trackAntiShakeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isGestureDetectDebugSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isCrash:Z

    .line 14
    sput-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isOpenSmoothing:Z

    const/16 v1, 0x14

    .line 15
    sput v1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->trackAntiShakeValue:I

    .line 16
    sput-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isSaveFrameData:Z

    .line 17
    sput v1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->sDetectIntervalValue:I

    .line 18
    sget-object v0, Lcom/tetras/hand/model/HandConfig$HandImageResize;->RESIZE_640W:Lcom/tetras/hand/model/HandConfig$HandImageResize;

    sput-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->sHandImageResize:Lcom/tetras/hand/model/HandConfig$HandImageResize;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
