.class public Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    }
.end annotation


# instance fields
.field private mBitRateCoefficient:I

.field private final mBytePerS:J

.field private mCaptureFPS:D

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mFileExt:Ljava/lang/String;

.field private final mFileFolder:Ljava/lang/String;

.field private final mFileTempPath:Ljava/lang/String;

.field private final mMaxDuration:I

.field private final mMaxFileSize:J

.field private final mMimeType:Ljava/lang/String;

.field private final mNeedAudio:Z

.field private mNeedModifyIFrame:Z

.field private final mOrientation:I

.field private final mSaveTargetUri:Landroid/net/Uri;

.field private mVideoFrameRate:I

.field private final mVideoOrientation:I

.field private final mVideoSize:Landroid/util/Size;


# direct methods
.method static bridge synthetic -$$Nest$smgetFileExtFromFormat(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileExtFromFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetMimeTypeFromFormat(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMimeTypeFromFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IIDIIZ)V
    .registers 21

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileExt:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mMimeType:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileFolder:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileTempPath:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 59
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mNeedAudio:Z

    .line 60
    iput p7, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mMaxDuration:I

    .line 61
    iput-wide p8, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mMaxFileSize:J

    .line 62
    iput-object p10, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mVideoSize:Landroid/util/Size;

    .line 63
    iput-wide p11, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mBytePerS:J

    .line 64
    iput-object p13, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mSaveTargetUri:Landroid/net/Uri;

    .line 65
    iput p14, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mOrientation:I

    .line 66
    iput p15, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mVideoOrientation:I

    move-wide/from16 p1, p16

    .line 67
    iput-wide p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mCaptureFPS:D

    move/from16 p1, p18

    .line 68
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mVideoFrameRate:I

    move/from16 p1, p19

    .line 69
    iput p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mBitRateCoefficient:I

    move/from16 p1, p20

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mNeedModifyIFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IIDIIZLcom/transsion/camera/app/common/recorder/data/VideoFileInfo-IA;)V
    .registers 22

    .line 0
    invoke-direct/range {p0 .. p20}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IIDIIZ)V

    return-void
.end method

.method private static getFileExtFromFormat(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 155
    const-string p0, ".mp4"

    return-object p0

    .line 157
    :cond_6
    const-string p0, ".3gp"

    return-object p0
.end method

.method private static getMimeTypeFromFormat(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    .line 162
    const-string/jumbo p0, "video/mp4"

    return-object p0

    .line 164
    :cond_7
    const-string/jumbo p0, "video/3gp"

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 1

    .line 146
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->clone()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBitRateCoefficient()I
    .registers 1

    .line 135
    iget p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mBitRateCoefficient:I

    return p0
.end method

.method public getBytePerS()J
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mBytePerS:J

    return-wide v0
.end method

.method public getCaptureFPS()D
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mCaptureFPS:D

    return-wide v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getFileExt()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileExt:Ljava/lang/String;

    return-object p0
.end method

.method public getFileFolder()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileFolder:Ljava/lang/String;

    return-object p0
.end method

.method public getFileTempPath()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mFileTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDuration()I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mMaxDuration:I

    return p0
.end method

.method public getMaxFileSize()J
    .registers 3

    .line 123
    iget-wide v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mOrientation:I

    return p0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mSaveTargetUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getVideoFrameRate()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mVideoFrameRate:I

    return p0
.end method

.method public getVideoOrientation()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mVideoOrientation:I

    return p0
.end method

.method public getVideoSize()Landroid/util/Size;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mVideoSize:Landroid/util/Size;

    return-object p0
.end method

.method public isNeedAudio()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mNeedAudio:Z

    return p0
.end method

.method public isNeedModifyIFrame()Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->mNeedModifyIFrame:Z

    return p0
.end method
