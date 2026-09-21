.class public Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraCaptureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAiRawScene:I

.field private mDescription:Ljava/lang/String;

.field private mIsCusDeferRequestMode:I

.field private mIsSupportHighQualityMode:I

.field private mIsSupportLowQualityMode:I

.field private mPortraitModeEnhanceMode:Ljava/lang/String;

.field private mPostAlgoType:I

.field private mSlimBodyMode:I

.field private final mTimestamp:J

.field private mTranssionTurboFusionMode:I


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPostAlgoType:I

    .line 85
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTranssionTurboFusionMode:I

    .line 86
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mSlimBodyMode:I

    .line 91
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 92
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mDescription:Ljava/lang/String;

    .line 107
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPostAlgoType:I

    .line 85
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTranssionTurboFusionMode:I

    .line 86
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mSlimBodyMode:I

    .line 91
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 92
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mDescription:Ljava/lang/String;

    .line 95
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTimestamp:J

    .line 96
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getPostAlgoType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPostAlgoType:I

    .line 97
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTranssionTurboFusionMode()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTranssionTurboFusionMode:I

    .line 98
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getSlimBodyMode()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mSlimBodyMode:I

    .line 99
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isCusDeferRequestMode()Z

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsCusDeferRequestMode:I

    .line 100
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsSupportLowQualityMode:I

    .line 101
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportHighQualityMode()Z

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsSupportHighQualityMode:I

    .line 102
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 103
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getAiRawScene()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mAiRawScene:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/adapter/CameraCaptureState;
    .registers 13

    .line 156
    new-instance v0, Lcom/transsion/camera/adapter/CameraCaptureState;

    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTimestamp:J

    iget v3, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPostAlgoType:I

    iget v4, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTranssionTurboFusionMode:I

    iget v5, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mSlimBodyMode:I

    iget v6, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsCusDeferRequestMode:I

    iget v7, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsSupportLowQualityMode:I

    iget v8, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsSupportHighQualityMode:I

    iget v9, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mAiRawScene:I

    iget-object v10, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPortraitModeEnhanceMode:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/transsion/camera/adapter/CameraCaptureState;-><init>(JIIIIIIILjava/lang/String;Lcom/transsion/camera/adapter/CameraCaptureState-IA;)V

    .line 159
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCaptureState;->isCusDeferRequestMode()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCaptureState;->isSupportLowQualityMode()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCaptureState;->isSupportHighQualityMode()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-object v0

    .line 160
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/transsion/camera/adapter/CameraCaptureState;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAiRawScene(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 2

    .line 126
    iput p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mAiRawScene:I

    return-object p0
.end method

.method public setCusDeferRequestMode([I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 4

    if-eqz p1, :cond_20

    .line 132
    array-length v0, p1

    if-lez v0, :cond_c

    const/4 v0, 0x0

    aget v0, p1, v0

    if-lez v0, :cond_c

    .line 133
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsCusDeferRequestMode:I

    .line 135
    :cond_c
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    aget v0, p1, v1

    if-lez v0, :cond_16

    .line 136
    iput v0, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsSupportLowQualityMode:I

    .line 138
    :cond_16
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_20

    aget p1, p1, v1

    if-lez p1, :cond_20

    .line 139
    iput p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mIsSupportHighQualityMode:I

    :cond_20
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-object p0
.end method

.method public setPostAlgoType(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 2

    .line 111
    iput p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mPostAlgoType:I

    return-object p0
.end method

.method public setSlimBodyMode(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 2

    .line 121
    iput p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mSlimBodyMode:I

    return-object p0
.end method

.method public setTranssionTurboFusionMode(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;
    .registers 2

    .line 116
    iput p1, p0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->mTranssionTurboFusionMode:I

    return-object p0
.end method
