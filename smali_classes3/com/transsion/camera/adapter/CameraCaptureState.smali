.class public Lcom/transsion/camera/adapter/CameraCaptureState;
.super Lcom/transsion/camera/adapter/NullCameraCaptureState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAiRawScene:I

.field private final mIsCusDeferRequestMode:I

.field private final mIsSupportHighQualityMode:I

.field private final mIsSupportLowQualityMode:I

.field private final mPortraitModeEnhanceMode:Ljava/lang/String;

.field private final mPostAlgoType:I

.field private final mSlimBodyMode:I

.field private final mTimestamp:J

.field private final mTranssionTurboFusionMode:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/adapter/CameraCaptureState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraCaptureState"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraCaptureState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(JIIIIIIILjava/lang/String;)V
    .registers 11

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mTimestamp:J

    .line 27
    iput p3, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mPostAlgoType:I

    .line 28
    iput p4, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mTranssionTurboFusionMode:I

    .line 29
    iput p5, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mSlimBodyMode:I

    .line 30
    iput p6, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mIsCusDeferRequestMode:I

    .line 31
    iput p7, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mIsSupportLowQualityMode:I

    .line 32
    iput p8, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mIsSupportHighQualityMode:I

    .line 33
    iput p9, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mAiRawScene:I

    .line 34
    iput-object p10, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JIIIIIIILjava/lang/String;Lcom/transsion/camera/adapter/CameraCaptureState-IA;)V
    .registers 12

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/transsion/camera/adapter/CameraCaptureState;-><init>(JIIIIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAiRawScene()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mAiRawScene:I

    return p0
.end method

.method public getPortraitModeEnhanceMode()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPostAlgoType()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mPostAlgoType:I

    return p0
.end method

.method public getSlimBodyMode()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mSlimBodyMode:I

    return p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mTimestamp:J

    return-wide v0
.end method

.method public getTranssionTurboFusionMode()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mTranssionTurboFusionMode:I

    return p0
.end method

.method public isCusDeferRequestMode()Z
    .registers 1

    .line 64
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mIsCusDeferRequestMode:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHighQualityMode()Z
    .registers 1

    .line 74
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mIsSupportHighQualityMode:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLowQualityMode()Z
    .registers 1

    .line 69
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState;->mIsSupportLowQualityMode:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
