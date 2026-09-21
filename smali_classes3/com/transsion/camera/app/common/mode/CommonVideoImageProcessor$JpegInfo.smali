.class final Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JpegInfo"
.end annotation


# instance fields
.field private mBGImage:Z

.field private mHeight:I

.field private mJpeg:[B

.field private mResults:Lcom/transsion/camera/adapter/CameraResults;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBGImage(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mBGImage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmJpeg(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mJpeg:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResults(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mResults:Lcom/transsion/camera/adapter/CameraResults;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mWidth:I

    return p0
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V
    .registers 6

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mResults:Lcom/transsion/camera/adapter/CameraResults;

    .line 411
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mJpeg:[B

    .line 412
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mWidth:I

    .line 413
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mHeight:I

    .line 414
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mBGImage:Z

    return-void
.end method
