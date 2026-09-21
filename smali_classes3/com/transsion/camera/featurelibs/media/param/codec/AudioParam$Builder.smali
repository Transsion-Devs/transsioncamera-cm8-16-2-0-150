.class public Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAacProfile:I

.field private mAudioFormat:I

.field private mAudioMime:Ljava/lang/String;

.field private mAudioSource:I

.field private mBitRate:I

.field private mChannelConfig:I

.field private mChannelCount:I

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mNeedMedia:Z

.field private mSampleRate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAacProfile(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAacProfile:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioFormat(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioMime(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioMime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioSource(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioSource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitRate(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mBitRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelConfig(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mChannelConfig:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelCount(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mChannelCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaFormat(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)Landroid/media/MediaFormat;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedMedia(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mNeedMedia:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSampleRate(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mSampleRate:I

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mNeedMedia:Z

    .line 101
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioMime:Ljava/lang/String;

    const/4 v0, 0x5

    .line 103
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioSource:I

    const v0, 0x1f400

    .line 105
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mBitRate:I

    const v0, 0xbb80

    .line 107
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mSampleRate:I

    const/4 v0, 0x2

    .line 109
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mChannelCount:I

    const/16 v1, 0xc

    .line 111
    iput v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mChannelConfig:I

    .line 113
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAacProfile:I

    .line 115
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioFormat:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAudioMime:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mSampleRate:I

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mChannelCount:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 164
    const-string v1, "aac-profile"

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mAacProfile:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget v2, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 166
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam-IA;)V

    return-object v0
.end method

.method public needMedia(Z)Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;
    .registers 2

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->mNeedMedia:Z

    return-object p0
.end method
