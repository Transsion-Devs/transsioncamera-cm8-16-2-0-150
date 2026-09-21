.class public final Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

.field private mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

.field private mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioParam(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMuxerParam(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoParam(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    .line 48
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    return-void
.end method


# virtual methods
.method public audioParam(Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;)Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    return-object p0
.end method

.method public build()Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    if-eqz v0, :cond_b

    .line 71
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam-IA;)V

    return-object v0

    .line 69
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mMuxerParam is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public muxerParam(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;)Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    return-object p0
.end method

.method public videoParam(Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;)Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    return-object p0
.end method
