.class final Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
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
.method static bridge synthetic -$$Nest$fgetmBGImage(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mBGImage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmData(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mData:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFormat(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mWidth:I

    return p0
.end method

.method constructor <init>([BIIIIZ)V
    .registers 7

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mData:[B

    .line 961
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mFormat:I

    .line 962
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mWidth:I

    .line 963
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mHeight:I

    .line 964
    iput p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mOrientation:I

    .line 965
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mBGImage:Z

    return-void
.end method
