.class public Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannels:I

.field private mAudioEncoder:I

.field private mAudioNeeded:Z

.field private mAudioSource:I

.field private mCaptureRate:D

.field private mEncodingLevel:I

.field private mEncodingprofile:I

.field private mExtraParam:Ljava/util/List;

.field private mFullConfig:Z

.field private mMaxDuration:I

.field private mMaxFileSize:J

.field private mOrientationHint:I

.field private mOutputFileDescriptor:Ljava/io/FileDescriptor;

.field private mOutputFilePath:Ljava/lang/String;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mVideoEncoder:I

.field private mVideoEncodingBitRate:I

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mVideoSource:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioChannels(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioChannels:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioEncoder(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioEncoder:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioNeeded(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioNeeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioSource(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioSource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureRate(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)D
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mCaptureRate:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEncodingLevel(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mEncodingLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEncodingprofile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mEncodingprofile:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtraParam(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mExtraParam:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullConfig(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mFullConfig:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxDuration(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mMaxDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxFileSize(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mMaxFileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationHint(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mOrientationHint:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputFileDescriptor(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Ljava/io/FileDescriptor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mOutputFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputFilePath(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mOutputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)Landroid/media/CamcorderProfile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoEncoder:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoEncodingBitRate(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoEncodingBitRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoFrameHeight(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoFrameHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoFrameRate(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoFrameRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoFrameWidth(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoFrameWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSource(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoSource:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioNeeded:Z

    return-void
.end method


# virtual methods
.method public audioChannels(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 253
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioChannels:I

    return-object p0
.end method

.method public audioNeeded(Z)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 238
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioNeeded:Z

    return-object p0
.end method

.method public audioSource(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 243
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mAudioSource:I

    return-object p0
.end method

.method public build()Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;
    .registers 2

    .line 328
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)V

    return-object v0
.end method

.method public captureRate(D)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 3

    .line 288
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mCaptureRate:D

    return-object p0
.end method

.method public extraParam(Ljava/util/List;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mExtraParam:Ljava/util/List;

    return-object p0
.end method

.method public fullConfig(Z)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 233
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mFullConfig:Z

    return-object p0
.end method

.method public maxDuration(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 318
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mMaxDuration:I

    return-object p0
.end method

.method public maxFileSize(J)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 3

    .line 323
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mMaxFileSize:J

    return-object p0
.end method

.method public orientationHint(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 313
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mOrientationHint:I

    return-object p0
.end method

.method public outputFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mOutputFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public outputFilePath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mOutputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public profile(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method

.method public setEncodingLevel(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 228
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mEncodingLevel:I

    return-object p0
.end method

.method public setEncodingprofile(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 223
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mEncodingprofile:I

    return-object p0
.end method

.method public videoEncoder(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 263
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoEncoder:I

    return-object p0
.end method

.method public videoEncodingBitRate(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 268
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoEncodingBitRate:I

    return-object p0
.end method

.method public videoFrameHeight(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 283
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoFrameHeight:I

    return-object p0
.end method

.method public videoFrameRate(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 273
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoFrameRate:I

    return-object p0
.end method

.method public videoFrameWidth(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 278
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoFrameWidth:I

    return-object p0
.end method

.method public videoSource(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;
    .registers 2

    .line 258
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->mVideoSource:I

    return-object p0
.end method
