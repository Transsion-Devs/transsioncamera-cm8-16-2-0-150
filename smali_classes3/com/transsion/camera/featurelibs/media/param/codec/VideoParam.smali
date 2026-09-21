.class public Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;
    }
.end annotation


# instance fields
.field private final mBitRate:I

.field private final mColorFormat:I

.field private final mFrameRate:I

.field private final mIFrameInterval:I

.field private final mMimeType:Ljava/lang/String;

.field private final mVideoHeight:I

.field private final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmNeedMedia(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mNeedMedia:Z

    .line 44
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmMediaFormat(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mMediaFormat:Landroid/media/MediaFormat;

    .line 45
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmMimeType(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mMimeType:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmVideoWidth(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mVideoWidth:I

    .line 47
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmVideoHeight(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mVideoHeight:I

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmColorFormat(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mColorFormat:I

    .line 49
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmBitRate(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mBitRate:I

    .line 50
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmFrameRate(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mFrameRate:I

    .line 51
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->-$$Nest$fgetmIFrameInterval(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;->mIFrameInterval:I

    return-void
.end method
