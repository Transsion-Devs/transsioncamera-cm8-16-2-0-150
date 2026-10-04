.class final Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field private mHeight:I

.field private mThumbnail:[B

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mThumbnail:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mWidth:I

    return p0
.end method

.method constructor <init>([BII)V
    .registers 4

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mThumbnail:[B

    .line 1024
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mWidth:I

    .line 1025
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mHeight:I

    return-void
.end method
