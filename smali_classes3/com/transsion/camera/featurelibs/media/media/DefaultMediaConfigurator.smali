.class public Lcom/transsion/camera/featurelibs/media/media/DefaultMediaConfigurator;
.super Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DftMdaCfg"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/media/DefaultMediaConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaRecorder;Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V
    .registers 7

    .line 31
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 33
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->fullConfig()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->audioNeeded()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 34
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->audioSource()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 35
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->audioChannels()I

    move-result p0

    if-lez p0, :cond_23

    .line 37
    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 39
    :cond_23
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->profile()Landroid/media/CamcorderProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 41
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->encodingprofile()I

    move-result p0

    .line 42
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->encodingLevel()I

    move-result v0

    if-ltz p0, :cond_39

    if-ltz v0, :cond_39

    .line 44
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 46
    :cond_39
    sget-object v1, Lcom/transsion/camera/featurelibs/media/media/DefaultMediaConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoEncodingProfileLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_b9

    .line 48
    :cond_58
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->profile()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 50
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoEncoder()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 52
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoEncodingBitRate()I

    move-result v0

    if-lez v0, :cond_75

    .line 53
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoEncodingBitRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 56
    :cond_75
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoFrameRate()I

    move-result v0

    if-lez v0, :cond_82

    .line 57
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 60
    :cond_82
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoFrameWidth()I

    move-result v0

    if-lez v0, :cond_99

    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoFrameHeight()I

    move-result v0

    if-lez v0, :cond_99

    .line 61
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoFrameWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->videoFrameHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 64
    :cond_99
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->extraParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 65
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a8

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->setExtraParam(Landroid/media/MediaRecorder;Ljava/util/List;)V

    .line 69
    :cond_a8
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->captureRate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_b9

    .line 70
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->captureRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 74
    :cond_b9
    :goto_b9
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->outputFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_c7

    .line 75
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->outputFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_d3

    .line 77
    :cond_c7
    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->outputFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 80
    :goto_d3
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->orientationHint()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 82
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->maxDuration()I

    move-result p0

    if-lez p0, :cond_e7

    .line 83
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->maxDuration()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 85
    :cond_e7
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->maxFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_f8

    .line 86
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;->maxFileSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_f8
    return-void
.end method
