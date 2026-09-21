.class public Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;
    }
.end annotation


# static fields
.field private static final MAX_VE_COUNT:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sDiskCacheManager:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentVEGetFrameCount:I

.field private final mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

.field private final mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

.field private mStopGetFrame:Z

.field private final mVELoadingFrame:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-SfdZ9bMpttY2fIRcGrxRCPdb24(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .registers 3

    .line 283
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ud-nrRL1cV0n_j56bxZw8tnwy5o(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->lambda$loadBitmapsFromDisk$0(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_FrameHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 31
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->getInstance()Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->sDiskCacheManager:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVELoadingFrame:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mStopGetFrame:Z

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 51
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    return-void
.end method

.method private extractBitmapFromVe(Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 130
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 131
    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractBitmapFromVe, currentThread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ptsList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mVideoPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mFrameInfo.getThumbWidth(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 132
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFrameInfo.getThumbHeight(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 135
    :goto_5c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_80

    .line 136
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 137
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 138
    sget-object v8, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->sDiskCacheManager:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    invoke-virtual {v8, v7}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_7d

    .line 141
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 144
    :cond_80
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 146
    sget-object v5, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractBitmapFromVe, removeList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_b7

    .line 148
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    iget v0, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    sub-int/2addr v0, v5

    iput v0, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    return-void

    .line 153
    :cond_b7
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v3

    .line 154
    iget-object v6, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    .line 156
    iget-object v6, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbnailOrientation()I

    move-result v6

    if-ne v6, v5, :cond_d4

    .line 157
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x9

    .line 160
    :cond_d4
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 162
    :try_start_d9
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    move v7, v4

    .line 163
    :goto_df
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_20c

    .line 164
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 166
    sget-object v10, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extractBitmapFromVe getFrame start, position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mStopGetFrame: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mStopGetFrame:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object v11, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    invoke-static {v11, v9}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    int-to-long v12, v9

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 169
    invoke-virtual {v6, v12, v13}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 171
    const-string v13, "extractBitmapFromVe getFrame end"

    invoke-static {v10, v13}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 174
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v15, v3

    int-to-float v13, v13

    div-float/2addr v15, v13

    mul-float/2addr v13, v15

    .line 177
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v14, v14

    mul-float/2addr v15, v14

    .line 178
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 180
    invoke-static {v12, v13, v14, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 181
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_14d

    .line 182
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_14d

    :catchall_146
    move-exception v0

    move-object v1, v0

    goto/16 :goto_23b

    :catch_14a
    move-exception v0

    goto/16 :goto_21c

    .line 187
    :cond_14d
    :goto_14d
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v12}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbnailOrientation()I

    move-result v12

    if-nez v12, :cond_16f

    .line 188
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v12}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v12

    sub-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    .line 189
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v12}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v12

    iget-object v13, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v13}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v13

    invoke-static {v15, v4, v14, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_188

    .line 191
    :cond_16f
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v12}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v12

    sub-int/2addr v13, v12

    div-int/lit8 v13, v13, 0x2

    .line 192
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v12}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v12

    iget-object v14, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v14}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v14

    invoke-static {v15, v13, v4, v12, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 195
    :goto_188
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 196
    invoke-static {v11, v12}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 197
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    const/16 v14, 0xb

    if-le v13, v14, :cond_1a8

    .line 198
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    const/16 v14, 0x17

    if-eq v13, v14, :cond_1a8

    .line 199
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_1b9

    .line 200
    :cond_1a8
    iget-object v13, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mContext:Landroid/content/Context;

    check-cast v13, Landroid/app/Activity;

    iget-object v14, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda0;

    invoke-direct {v15, v14}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V

    invoke-virtual {v13, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    :cond_1b9
    invoke-direct {v1, v11, v12}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->writeFileCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 204
    monitor-enter p0
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_1bd} :catch_14a
    .catchall {:try_start_d9 .. :try_end_1bd} :catchall_146

    .line 205
    :try_start_1bd
    iget-object v11, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVELoadingFrame:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v11, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-eq v8, v11, :cond_1d3

    iget-boolean v8, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mStopGetFrame:Z

    if-eqz v8, :cond_1d8

    goto :goto_1d3

    :catchall_1d1
    move-exception v0

    goto :goto_20a

    .line 208
    :cond_1d3
    :goto_1d3
    iget v8, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    sub-int/2addr v8, v5

    iput v8, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    .line 210
    :cond_1d8
    monitor-exit p0
    :try_end_1d9
    .catchall {:try_start_1bd .. :try_end_1d9} :catchall_1d1

    .line 212
    :try_start_1d9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extractBitmapFromVe end, position: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mStopGetFrame: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mStopGetFrame:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_20c

    iget-boolean v8, v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mStopGetFrame:Z
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_203} :catch_14a
    .catchall {:try_start_1d9 .. :try_end_203} :catchall_146

    if-eqz v8, :cond_206

    goto :goto_20c

    :cond_206
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_df

    .line 210
    :goto_20a
    :try_start_20a
    monitor-exit p0
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_1d1

    :try_start_20b
    throw v0
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20c} :catch_14a
    .catchall {:try_start_20b .. :try_end_20c} :catchall_146

    .line 222
    :cond_20c
    :goto_20c
    :try_start_20c
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 223
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "extractBitmapFromVe, release retriever"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_216} :catch_217

    return-void

    :catch_217
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23a

    .line 219
    :goto_21c
    :try_start_21c
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractBitmapFromVe, ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_232
    .catchall {:try_start_21c .. :try_end_232} :catchall_146

    .line 222
    :try_start_232
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 223
    const-string v0, "extractBitmapFromVe, release retriever"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23a} :catch_217

    :goto_23a
    return-void

    .line 222
    :goto_23b
    :try_start_23b
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 223
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "extractBitmapFromVe, release retriever"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_245} :catch_246

    goto :goto_24a

    :catch_246
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    :goto_24a
    throw v1
.end method

.method private synthetic lambda$loadBitmapsFromDisk$0(Ljava/util/List;)V
    .registers 8

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getFrameDuration()I

    move-result v3

    mul-int/2addr v1, v3

    .line 88
    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBitmapsFromDisk, framePosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 91
    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->sDiskCacheManager:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 96
    :try_start_45
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 100
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 101
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 104
    invoke-static {v3, v1}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_7a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_45 .. :try_end_7a} :catch_7b
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_7a} :catch_7b

    goto :goto_9

    :catch_7b
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 109
    :cond_80
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVELoadingFrame:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 115
    :cond_95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c1

    .line 118
    :cond_ad
    monitor-enter p0

    .line 119
    :try_start_ae
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    if-ge p1, v2, :cond_c0

    add-int/2addr p1, v2

    .line 120
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mCurrentVEGetFrameCount:I

    .line 121
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->extractBitmapFromVe(Ljava/util/List;)V

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVELoadingFrame:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_c0

    :catchall_be
    move-exception p1

    goto :goto_c2

    .line 124
    :cond_c0
    :goto_c0
    monitor-exit p0

    :goto_c1
    return-void

    :goto_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_ae .. :try_end_c3} :catchall_be

    throw p1
.end method

.method private loadBitmapsFromDisk(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadBitmapsFromDisk, no path set to analysis"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    :cond_f
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBitmapsFromDisk, ptsList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;Ljava/util/List;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeFileCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 282
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->sDiskCacheManager:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    if-eqz p0, :cond_c

    .line 283
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->put(Ljava/lang/String;Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public checkMemoryCache(II)V
    .registers 6

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMemoryCache, startNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-gt p1, p2, :cond_42

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mVideoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getFrameDuration()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 68
    :cond_42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 69
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->loadBitmapsFromDisk(Ljava/util/List;)V

    return-void

    .line 71
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;->refresh()V

    return-void
.end method

.method public getPositionBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_1e

    if-ltz p1, :cond_1e

    const/16 v2, 0x17

    if-gt v0, v2, :cond_1e

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getFrameDuration()I

    move-result v1

    mul-int/2addr v1, p1

    .line 301
    invoke-static {p2, v1}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    return-object v1
.end method

.method public stopGetFrame()V
    .registers 3

    .line 288
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopGetFrame"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->mStopGetFrame:Z

    return-void
.end method
