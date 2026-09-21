.class public Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;,
        Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

.field private final mContentValues:Landroid/content/ContentValues;

.field public mIsPreProcessed:Z

.field private final mMediaStoreId:J

.field private mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field private final mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field private mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSaving:Z

.field private mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

.field private mToGalleryTimestamp:J

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProcessMediaItem"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 10

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 33
    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    .line 35
    iput-object p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 36
    iput-object p4, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    .line 37
    iput-object p5, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mContentValues:Landroid/content/ContentValues;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    .line 39
    iput-object p6, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    .line 40
    iput-object p7, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    return-object p0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public getMediaStoreId()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    return-wide v0
.end method

.method public getPercentage()I
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public getProcessStatus()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object p0
.end method

.method public getTimestamp()J
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    if-nez v0, :cond_e

    .line 89
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getTimestamp mTimestampInfo is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 92
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimestamp mTimestampInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/TimestampInfo;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToGalleryTimestamp()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mToGalleryTimestamp:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setToGalleryTimestamp(J)V
    .registers 3

    .line 101
    iput-wide p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mToGalleryTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessMediaItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureThumbInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestampInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mTimestampInfo:Lcom/transsion/camera/app/common/mode/TimestampInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
