.class public Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitRate:I

.field private mColorFormat:I

.field private mFrameRate:I

.field private mIFrameInterval:I

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mMimeType:Ljava/lang/String;

.field private mNeedMedia:Z

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBitRate(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mBitRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorFormat(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mColorFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameRate(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mFrameRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIFrameInterval(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mIFrameInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaFormat(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)Landroid/media/MediaFormat;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMimeType(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedMedia(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mNeedMedia:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHeight(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mVideoHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoWidth(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mVideoWidth:I

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mNeedMedia:Z

    .line 88
    const-string/jumbo v1, "video/avc"

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMimeType:Ljava/lang/String;

    const v1, 0x7f000789

    .line 94
    iput v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mColorFormat:I

    const/16 v1, 0x1e

    .line 98
    iput v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mFrameRate:I

    .line 100
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mIFrameInterval:I

    return-void
.end method


# virtual methods
.method public bitRate(I)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;
    .registers 2

    .line 124
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mBitRate:I

    return-object p0
.end method

.method public build()Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mVideoWidth:I

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mVideoHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 140
    const-string v1, "color-format"

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mColorFormat:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "frame-rate"

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "i-frame-interval"

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 144
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)V

    return-object v0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public videoSize(II)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;
    .registers 3

    .line 113
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mVideoWidth:I

    .line 114
    iput p2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->mVideoHeight:I

    return-object p0
.end method
