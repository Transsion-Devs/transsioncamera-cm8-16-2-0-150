.class public Lcom/transsion/camera/app/common/provider/QuickCaptureItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurJpeg:[B

.field private mCurMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mIsBGImage:Z

.field private mTimestamp:J

.field private mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

.field private mWhichThumbnail:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getCurBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method public getCurJpeg()[B
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurJpeg:[B

    return-object p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mTimestamp:J

    return-wide v0
.end method

.method public getTimestampInfo()Lcom/transsion/camera/app/common/mode/TimestampInfo;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    return-object p0
.end method

.method public getWhichThumbnail()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mWhichThumbnail:I

    return p0
.end method

.method public isCurBGImage()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mIsBGImage:Z

    return p0
.end method

.method public setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-void
.end method

.method public setJpegItem([BZJ)V
    .registers 5

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurJpeg:[B

    .line 33
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mIsBGImage:Z

    .line 34
    iput-wide p3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mTimestamp:J

    return-void
.end method

.method public setThumbnailItem(ILandroid/graphics/Bitmap;)V
    .registers 3

    .line 27
    iput p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mWhichThumbnail:I

    .line 28
    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTimestampInfo(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    return-void
.end method
