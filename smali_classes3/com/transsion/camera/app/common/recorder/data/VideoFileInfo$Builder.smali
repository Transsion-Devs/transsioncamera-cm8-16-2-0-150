.class public Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitRateCoefficient:I

.field private mCaptureFPS:D

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mFileFolder:Ljava/lang/String;

.field private mFileTempPath:Ljava/lang/String;

.field private mMaxDuration:I

.field private mMaxFileSize:J

.field private mNeedAudio:Z

.field private mNeedModifyIFrame:Z

.field private mOrientation:I

.field private final mProfile:Landroid/media/CamcorderProfile;

.field private mSaveTargetUri:Landroid/net/Uri;

.field private mVideoFrameRate:I

.field private mVideoOrientation:I


# direct methods
.method public constructor <init>(Landroid/media/CamcorderProfile;)V
    .registers 4

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 180
    iput-wide v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mCaptureFPS:D

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mVideoFrameRate:I

    .line 182
    iput v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mBitRateCoefficient:I

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mNeedModifyIFrame:Z

    .line 186
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 25

    move-object/from16 v0, p0

    .line 259
    iget-object v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_63

    .line 268
    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->-$$Nest$smgetFileExtFromFormat(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    iget-object v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->-$$Nest$smgetMimeTypeFromFormat(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    new-instance v12, Landroid/util/Size;

    iget-object v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v12, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 271
    iget-object v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v13, v1

    .line 273
    new-instance v2, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    iget-object v5, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mFileFolder:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mFileTempPath:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-boolean v8, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mNeedAudio:Z

    iget v9, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mMaxDuration:I

    iget-wide v10, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mMaxFileSize:J

    iget-object v15, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mSaveTargetUri:Landroid/net/Uri;

    iget v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mOrientation:I

    move/from16 v16, v1

    iget v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mVideoOrientation:I

    move/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mCaptureFPS:D

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mVideoFrameRate:I

    iget v2, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mBitRateCoefficient:I

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mNeedModifyIFrame:Z

    const/16 v23, 0x0

    move/from16 v22, v0

    move/from16 v21, v2

    move-object/from16 v2, v17

    move/from16 v17, v18

    move-wide/from16 v18, v19

    move/from16 v20, v1

    invoke-direct/range {v2 .. v23}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IIDIIZLcom/transsion/camera/app/common/recorder/data/VideoFileInfo-IA;)V

    move-object/from16 v17, v2

    return-object v17

    .line 260
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CamcorderProfile should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 205
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mNeedAudio:Z

    return-object p0
.end method

.method public setBitRateCoefficient(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 240
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mBitRateCoefficient:I

    return-object p0
.end method

.method public setCaptureRate(D)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 3

    .line 245
    iput-wide p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mCaptureFPS:D

    return-object p0
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mFileFolder:Ljava/lang/String;

    return-object p0
.end method

.method public setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mFileTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxDuration(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 210
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mMaxDuration:I

    return-object p0
.end method

.method public setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 3

    .line 215
    iput-wide p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mMaxFileSize:J

    return-object p0
.end method

.method public setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mNeedModifyIFrame:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 225
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mOrientation:I

    return-object p0
.end method

.method public setTargetUri(Landroid/net/Uri;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mSaveTargetUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setVideoFrameRate(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 235
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mVideoFrameRate:I

    return-object p0
.end method

.method public setVideoOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    .registers 2

    .line 230
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->mVideoOrientation:I

    return-object p0
.end method
