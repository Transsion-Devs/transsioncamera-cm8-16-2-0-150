.class public Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    }
.end annotation


# instance fields
.field private final mAudioChannels:I

.field private final mAudioEncoder:I

.field private final mAudioNeeded:Z

.field private final mAudioSource:I

.field private final mCaptureRate:D

.field private final mEncodingLevel:I

.field private final mEncodingProfile:I

.field private final mExtraParam:Ljava/util/List;

.field private final mFullConfig:Z

.field private final mMaxDuration:I

.field private final mMaxFileSize:J

.field private final mOrientationHint:I

.field private final mOutputFileDescriptor:Ljava/io/FileDescriptor;

.field private final mOutputFilePath:Ljava/lang/String;

.field private final mProfile:Landroid/media/CamcorderProfile;

.field private final mVideoEncoder:I

.field private final mVideoEncodingBitRate:I

.field private final mVideoFrameHeight:I

.field private final mVideoFrameRate:I

.field private final mVideoFrameWidth:I

.field private final mVideoSource:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmFullConfig(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mFullConfig:Z

    .line 68
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmAudioNeeded(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioNeeded:Z

    .line 69
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmAudioSource(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioSource:I

    .line 70
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmAudioEncoder(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioEncoder:I

    .line 71
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmAudioChannels(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioChannels:I

    .line 73
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmVideoSource(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoSource:I

    .line 74
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoEncoder:I

    .line 75
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmVideoEncodingBitRate(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoEncodingBitRate:I

    .line 76
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmVideoFrameRate(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoFrameRate:I

    .line 77
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmVideoFrameWidth(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoFrameWidth:I

    .line 78
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmVideoFrameHeight(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoFrameHeight:I

    .line 80
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmCaptureRate(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mCaptureRate:D

    .line 81
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmProfile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mProfile:Landroid/media/CamcorderProfile;

    .line 82
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmExtraParam(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mExtraParam:Ljava/util/List;

    .line 84
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmOutputFileDescriptor(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mOutputFileDescriptor:Ljava/io/FileDescriptor;

    .line 85
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmOutputFilePath(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mOutputFilePath:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmOrientationHint(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mOrientationHint:I

    .line 87
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmMaxDuration(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mMaxDuration:I

    .line 88
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmMaxFileSize(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mMaxFileSize:J

    .line 90
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmEncodingprofile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mEncodingProfile:I

    .line 91
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->-$$Nest$fgetmEncodingLevel(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mEncodingLevel:I

    return-void
.end method


# virtual methods
.method public audioChannels()I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioChannels:I

    return p0
.end method

.method public audioNeeded()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioNeeded:Z

    return p0
.end method

.method public audioSource()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mAudioSource:I

    return p0
.end method

.method public captureRate()D
    .registers 3

    .line 147
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mCaptureRate:D

    return-wide v0
.end method

.method public encodingLevel()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mEncodingLevel:I

    return p0
.end method

.method public encodingprofile()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mEncodingProfile:I

    return p0
.end method

.method public extraParams()Ljava/util/List;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mExtraParam:Ljava/util/List;

    return-object p0
.end method

.method public fullConfig()Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mFullConfig:Z

    return p0
.end method

.method public maxDuration()I
    .registers 1

    .line 171
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mMaxDuration:I

    return p0
.end method

.method public maxFileSize()J
    .registers 3

    .line 175
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mMaxFileSize:J

    return-wide v0
.end method

.method public orientationHint()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mOrientationHint:I

    return p0
.end method

.method public outputFileDescriptor()Ljava/io/FileDescriptor;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mOutputFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public outputFilePath()Ljava/lang/String;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mOutputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public profile()Landroid/media/CamcorderProfile;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method

.method public videoEncoder()I
    .registers 1

    .line 127
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoEncoder:I

    return p0
.end method

.method public videoEncodingBitRate()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoEncodingBitRate:I

    return p0
.end method

.method public videoFrameHeight()I
    .registers 1

    .line 143
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoFrameHeight:I

    return p0
.end method

.method public videoFrameRate()I
    .registers 1

    .line 135
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoFrameRate:I

    return p0
.end method

.method public videoFrameWidth()I
    .registers 1

    .line 139
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoFrameWidth:I

    return p0
.end method

.method public videoSource()I
    .registers 1

    .line 123
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->mVideoSource:I

    return p0
.end method
