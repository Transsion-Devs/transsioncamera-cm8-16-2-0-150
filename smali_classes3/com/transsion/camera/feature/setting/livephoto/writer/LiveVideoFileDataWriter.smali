.class public Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;
.super Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;
.source "SourceFile"


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

.field private final mBstAIFrameSlFilterGuard:Ljava/lang/Object;

.field private final mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCapturePreviewTimeStamp:J

.field private final mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private final mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

.field private final mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoTrackId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveVideoFileDataWriter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMuxer;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;ILcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;JLcom/bst/aiframesl/BstAIFrameSlFilter;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaMuxer;",
            "Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;",
            "I",
            "Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;",
            "J",
            "Lcom/bst/aiframesl/BstAIFrameSlFilter;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    .line 43
    iput p3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoTrackId:I

    .line 44
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;

    .line 45
    iput-object p5, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    .line 46
    iput-wide p6, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mCapturePreviewTimeStamp:J

    .line 47
    iput-object p8, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    .line 48
    iput-object p9, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p10, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    return-void
.end method

.method private getEffectiveCaptureTimeStamp(Ljava/util/List;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;",
            ">;)J"
        }
    .end annotation

    if-eqz p1, :cond_8e

    .line 169
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8e

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    if-eqz v5, :cond_18

    .line 176
    iget-object v6, v5, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    if-nez v6, :cond_2b

    goto :goto_18

    .line 179
    :cond_2b
    iget-object v6, v5, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gez v8, :cond_18

    move-object v2, v5

    move-wide v3, v6

    goto :goto_18

    :cond_3b
    if-eqz v2, :cond_73

    .line 186
    iget-object p0, v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getTimestamp()J

    move-result-wide p0

    .line 187
    sget-object v3, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEffectiveCaptureTimeStamp: middlePtsUs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", effectiveCaptureTimeStamp="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (from frame at presentationTimeUs="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide p0

    .line 192
    :cond_73
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEffectiveCaptureTimeStamp: fallback to mCapturePreviewTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mCapturePreviewTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-wide p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mCapturePreviewTimeStamp:J

    return-wide p0

    .line 170
    :cond_8e
    :goto_8e
    iget-wide p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mCapturePreviewTimeStamp:J

    return-wide p0
.end method

.method private processBstAiFrameSelect(Ljava/util/List;J)[J
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;",
            ">;J)[J"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    if-nez v0, :cond_b

    goto/16 :goto_c3

    :cond_b
    if-eqz p1, :cond_bb

    .line 202
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_bb

    .line 206
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    if-lez v8, :cond_b3

    if-gtz v9, :cond_30

    goto/16 :goto_b3

    .line 212
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->getCamFilePath()Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->getGyroFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_ab

    if-nez v5, :cond_41

    goto :goto_ab

    .line 218
    :cond_41
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    if-nez v2, :cond_4d

    .line 219
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: guard is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 222
    :cond_4d
    monitor-enter v2

    .line 223
    :try_start_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 224
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: filter already released, skip bstAiframeSelectProcess"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    monitor-exit v2

    return-object v1

    :catchall_61
    move-exception v0

    move-object p0, v0

    goto :goto_a9

    :cond_64
    const/4 v0, 0x4

    .line 227
    new-array v11, v0, [J

    .line 228
    sget-object v3, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processBstAiFrameSelect, effectiveCaptureTimeStamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", videoWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", videoHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    move-wide v6, p2

    .line 230
    invoke-virtual/range {v3 .. v11}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->bstAiframeSelectProcess(Ljava/lang/String;Ljava/lang/String;JIII[J)I

    const/4 p0, 0x0

    :goto_98
    if-ge p0, v0, :cond_a7

    .line 232
    aget-wide p1, v11, p0

    const-wide/16 v3, -0x1

    cmp-long p1, p1, v3

    if-nez p1, :cond_a4

    .line 234
    monitor-exit v2

    return-object v1

    :cond_a4
    add-int/lit8 p0, p0, 0x1

    goto :goto_98

    .line 237
    :cond_a7
    monitor-exit v2

    return-object v11

    .line 238
    :goto_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_4e .. :try_end_aa} :catchall_61

    throw p0

    .line 215
    :cond_ab
    :goto_ab
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: file paths are null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 209
    :cond_b3
    :goto_b3
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: invalid video dimensions"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 203
    :cond_bb
    :goto_bb
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: sample list is null or empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 199
    :cond_c3
    :goto_c3
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: parameters is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public writeSample()J
    .registers 26

    move-object/from16 v0, p0

    .line 54
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v2, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->head:J

    .line 55
    iget-wide v4, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->tail:J

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_d
    const/4 v6, 0x4

    .line 61
    :try_start_e
    iget-object v7, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v7, v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    if-nez v7, :cond_23

    .line 63
    sget-object v7, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v8, "writeSample: sample is null, break collection"

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_56

    .line 66
    :cond_23
    iget-object v8, v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mData:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v9, v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 68
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    if-eqz v10, :cond_32

    iget-object v11, v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    if-eqz v11, :cond_32

    .line 69
    invoke-virtual {v10, v11}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->logFrame(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    .line 71
    :cond_32
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v8

    if-eqz v8, :cond_42

    iget v8, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_3e

    goto :goto_42

    .line 76
    :cond_3e
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 72
    :cond_42
    :goto_42
    sget-object v8, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v9, "writeSample: end of stream, break collection"

    invoke-static {v8, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_4d} :catch_4e

    goto :goto_56

    .line 78
    :catch_4e
    sget-object v7, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v8, "writeSample: take interrupted during collection"

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    :goto_56
    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->getEffectiveCaptureTimeStamp(Ljava/util/List;)J

    move-result-wide v7

    .line 84
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-wide/16 v10, -0x1

    if-eqz v9, :cond_6b

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "writeSample: no samples collected"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v10

    .line 89
    :cond_6b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v9

    iget-boolean v9, v9, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v9, :cond_121

    .line 90
    iget-object v9, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    if-eqz v9, :cond_7c

    .line 91
    invoke-virtual {v9}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->flush()V

    .line 93
    :cond_7c
    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->processBstAiFrameSelect(Ljava/util/List;J)[J

    move-result-object v7

    if-eqz v7, :cond_121

    .line 95
    aget-wide v8, v7, v12

    long-to-int v8, v8

    .line 96
    aget-wide v14, v7, v13

    long-to-int v9, v14

    .line 97
    array-length v14, v7

    const/4 v15, 0x3

    if-lt v14, v15, :cond_91

    const/4 v14, 0x2

    aget-wide v16, v7, v14

    move-wide/from16 v10, v16

    .line 98
    :cond_91
    array-length v14, v7

    if-lt v14, v6, :cond_97

    aget-wide v14, v7, v15

    goto :goto_99

    :cond_97
    const-wide/16 v14, -0x1

    .line 99
    :goto_99
    sget-object v7, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v13

    const-string/jumbo v13, "writeSample, headIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", tailIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz v8, :cond_11a

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_11a

    if-ltz v9, :cond_11a

    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_11a

    .line 102
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    iget-object v2, v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 103
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    iget-object v4, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v9, v8, :cond_ea

    .line 105
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v4, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->tail:J

    .line 107
    :cond_ea
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    if-eqz v8, :cond_123

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    if-eqz v8, :cond_123

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeSample: rewrite frame info by stable range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "~"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object v7, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-virtual {v7, v10, v11, v14, v15}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->rewriteByStableTimestampRange(JJ)V

    goto :goto_123

    .line 114
    :cond_11a
    const-string/jumbo v8, "writeSample: invalid indices returned"

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_123

    :cond_121
    move/from16 v19, v13

    .line 119
    :cond_123
    :goto_123
    sget-object v7, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeSample, snapShotHead: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", snapShotTail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_14c
    if-ge v13, v7, :cond_213

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v17, 0x0

    move-object/from16 v8, v16

    check-cast v8, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    .line 125
    iget-object v9, v8, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mData:Ljava/nio/ByteBuffer;

    .line 126
    iget-object v8, v8, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 128
    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    move-result v16

    if-eqz v16, :cond_20a

    iget v6, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v20, v6, 0x4

    if-eqz v20, :cond_16c

    goto/16 :goto_20a

    :cond_16c
    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    .line 133
    iget-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v3, v1, v21

    if-ltz v3, :cond_17a

    cmp-long v3, v1, v4

    if-lez v3, :cond_17d

    :cond_17a
    const/4 v3, 0x4

    goto/16 :goto_1f2

    :cond_17d
    sub-long v23, v1, v14

    cmp-long v23, v10, v23

    if-gez v23, :cond_1ea

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1a1

    if-nez v12, :cond_1a1

    .line 141
    sget-object v3, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeSample: drop non-key frame before first key frame, timestamp: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1ea

    :cond_1a1
    if-nez v12, :cond_1cb

    .line 145
    iget-object v6, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v10, v6, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->head:J

    sub-long v10, v1, v10

    iput-wide v10, v6, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->offset:J

    .line 146
    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;

    if-eqz v12, :cond_1c8

    .line 148
    iget-wide v14, v6, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->tail:J

    sub-long/2addr v14, v4

    .line 149
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    cmp-long v10, v14, v17

    if-lez v10, :cond_1bb

    goto :goto_1bd

    :cond_1bb
    move-wide/from16 v14, v17

    :goto_1bd
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;->notify([Ljava/lang/Object;)V

    :cond_1c8
    move-wide v14, v1

    move/from16 v12, v19

    :cond_1cb
    if-ltz v3, :cond_1d9

    .line 155
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSample: stop writing as reaching the ending timestamp"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 156
    iput v3, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    goto :goto_1da

    :cond_1d9
    const/4 v3, 0x4

    .line 158
    :goto_1da
    iget-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v1, v14

    iput-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 159
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoTrackId:I

    invoke-virtual {v1, v2, v9, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 160
    iget-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide v10, v1

    goto :goto_1eb

    :cond_1ea
    :goto_1ea
    const/4 v3, 0x4

    :goto_1eb
    move v6, v3

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    goto/16 :goto_14c

    .line 136
    :goto_1f2
    sget-object v6, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeSample: skip frame outside stable interval, timestamp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1eb

    .line 129
    :cond_20a
    :goto_20a
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSample: end of stream"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_215

    :cond_213
    const-wide/16 v17, 0x0

    .line 163
    :goto_215
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v1, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    sub-long/2addr v1, v14

    move-wide/from16 v3, v17

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeSample: duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v10
.end method
