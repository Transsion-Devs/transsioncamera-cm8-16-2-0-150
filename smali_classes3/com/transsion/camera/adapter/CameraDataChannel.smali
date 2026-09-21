.class public Lcom/transsion/camera/adapter/CameraDataChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAuxPreviewSurface:Landroid/view/Surface;

.field private mBackgroundPreviewSurface:Landroid/view/Surface;

.field private mFastThumbSurface:Landroid/view/Surface;

.field private mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mIsPrepareSuccess:Z

.field private mPostAlgoSensorIds:[I

.field private mPostAlgoSurfaces:[Landroid/view/Surface;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mRawImageSurfaces:[Landroid/view/Surface;

.field private mSlavePreviewSurface:Landroid/view/Surface;

.field private mThumbnailSurface:Landroid/view/Surface;

.field private mType:I

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mVideoSurface:Landroid/view/Surface;

.field private mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraDataChannel"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraDataChannel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;[I[Landroid/view/Surface;IIIZ)V
    .registers 19

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mType:I

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    .line 52
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mSlavePreviewSurface:Landroid/view/Surface;

    .line 53
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mAuxPreviewSurface:Landroid/view/Surface;

    .line 54
    iput-object p5, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mBackgroundPreviewSurface:Landroid/view/Surface;

    .line 55
    iput-object p6, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoSurface:Landroid/view/Surface;

    .line 56
    iput p15, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameRate:I

    move/from16 p1, p16

    .line 57
    iput p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameWidth:I

    move/from16 p1, p17

    .line 58
    iput p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameHeight:I

    .line 59
    iput-object p7, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 60
    iput-object p14, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mRawImageSurfaces:[Landroid/view/Surface;

    .line 61
    iput-object p8, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 62
    iput-object p9, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 63
    iput-object p10, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mThumbnailSurface:Landroid/view/Surface;

    .line 64
    iput-object p11, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mFastThumbSurface:Landroid/view/Surface;

    .line 65
    iput-object p12, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPostAlgoSurfaces:[Landroid/view/Surface;

    .line 66
    iput-object p13, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPostAlgoSensorIds:[I

    move/from16 p1, p18

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mIsPrepareSuccess:Z

    return-void
.end method


# virtual methods
.method public getAuxPreviewSurface()Landroid/view/Surface;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mAuxPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getBackgroundPreviewSurface()Landroid/view/Surface;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mBackgroundPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getCameraDataType()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mType:I

    return p0
.end method

.method getFastThumbSurface()Landroid/view/Surface;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mFastThumbSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getImageSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method getPostAlgoSensorIds()[I
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPostAlgoSensorIds:[I

    return-object p0
.end method

.method getPostAlgoSurface()[Landroid/view/Surface;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPostAlgoSurfaces:[Landroid/view/Surface;

    return-object p0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getQcomJpegSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mQcomJpegSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method getRawImageSurface()[Landroid/view/Surface;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mRawImageSurfaces:[Landroid/view/Surface;

    return-object p0
.end method

.method public getSlavePreviewSurface()Landroid/view/Surface;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mSlavePreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getThumbnailSurface()Landroid/view/Surface;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mThumbnailSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getVideoFrameHeight()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameHeight:I

    return p0
.end method

.method getVideoFrameRate()I
    .registers 1

    .line 105
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameRate:I

    return p0
.end method

.method getVideoFrameWidth()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameWidth:I

    return p0
.end method

.method getVideoSurface()Landroid/view/Surface;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getYuvImageSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method isPrepareSuccess()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mIsPrepareSuccess:Z

    return p0
.end method

.method public replacePreviewSurface(Landroid/view/Surface;)V
    .registers 5

    .line 91
    sget-object v0, Lcom/transsion/camera/adapter/CameraDataChannel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacePreviewSurface oldSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method
