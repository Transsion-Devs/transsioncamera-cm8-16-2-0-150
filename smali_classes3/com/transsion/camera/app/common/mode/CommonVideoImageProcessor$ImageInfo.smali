.class final Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageInfo"
.end annotation


# instance fields
.field private mBGImage:Z

.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mOrientation:I

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBGImage(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mBGImage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmData(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mData:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFormat(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mWidth:I

    return p0
.end method

.method constructor <init>([BIIIIZ)V
    .registers 7

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mData:[B

    .line 393
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mFormat:I

    .line 394
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mWidth:I

    .line 395
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mHeight:I

    .line 396
    iput p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mOrientation:I

    .line 397
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mBGImage:Z

    return-void
.end method
