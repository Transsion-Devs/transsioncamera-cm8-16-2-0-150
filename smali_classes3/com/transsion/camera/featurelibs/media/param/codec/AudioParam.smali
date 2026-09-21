.class public Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;
    }
.end annotation


# instance fields
.field private final mAacProfile:I

.field private final mAudioFormat:I

.field private final mAudioMime:Ljava/lang/String;

.field private final mAudioSource:I

.field private final mBitRate:I

.field private final mChannelConfig:I

.field private final mChannelCount:I

.field private final mSampleRate:I


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmNeedMedia(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mNeedMedia:Z

    .line 52
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmMediaFormat(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mMediaFormat:Landroid/media/MediaFormat;

    .line 53
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmAudioMime(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mAudioMime:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmAudioSource(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mAudioSource:I

    .line 55
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmBitRate(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mBitRate:I

    .line 56
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmSampleRate(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mSampleRate:I

    .line 57
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmChannelCount(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mChannelCount:I

    .line 58
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmChannelConfig(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mChannelConfig:I

    .line 59
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmAacProfile(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mAacProfile:I

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->-$$Nest$fgetmAudioFormat(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mAudioFormat:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;)V

    return-void
.end method


# virtual methods
.method public audioFormat()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mAudioFormat:I

    return p0
.end method

.method public audioSource()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mAudioSource:I

    return p0
.end method

.method public channelConfig()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mChannelConfig:I

    return p0
.end method

.method public sampleRate()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;->mSampleRate:I

    return p0
.end method
