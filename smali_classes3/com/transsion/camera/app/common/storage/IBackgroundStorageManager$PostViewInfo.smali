.class public Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostViewInfo"
.end annotation


# instance fields
.field private mMediaStoreId:J

.field private mPostViewBitmap:Landroid/graphics/Bitmap;

.field private mPostViewJpeg:[B

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getLastPostViewJpeg()[B
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewJpeg:[B

    return-object p0
.end method

.method public getMediaStoreId()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mMediaStoreId:J

    return-wide v0
.end method

.method public getPostViewJpeg(J)[B
    .registers 5

    .line 112
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mMediaStoreId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewJpeg:[B

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mTimestamp:J

    return-wide v0
.end method

.method public release()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewBitmap:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method public setMediaStoreId(J)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
    .registers 3

    .line 83
    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mMediaStoreId:J

    return-object p0
.end method

.method public setPostViewBitmap(Landroid/graphics/Bitmap;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setPostViewJpeg([B)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewJpeg:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostViewInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->mPostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
