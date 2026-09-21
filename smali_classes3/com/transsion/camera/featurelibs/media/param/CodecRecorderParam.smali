.class public Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;
    }
.end annotation


# instance fields
.field private final mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

.field private final mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

.field private final mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->-$$Nest$fgetmAudioParam(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    .line 28
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->-$$Nest$fgetmVideoParam(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    .line 29
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;->-$$Nest$fgetmMuxerParam(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam$Builder;)V

    return-void
.end method


# virtual methods
.method public audioParam()Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->mAudioParam:Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    return-object p0
.end method

.method public muxerParam()Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->mMuxerParam:Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    return-object p0
.end method

.method public videoParam()Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->mVideoParam:Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    return-object p0
.end method
