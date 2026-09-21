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

    .line 161
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8e

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    .line 167
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

    .line 168
    iget-object v6, v5, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    if-nez v6, :cond_2b

    goto :goto_18

    .line 171
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

    .line 178
    iget-object p0, v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getTimestamp()J

    move-result-wide p0

    .line 179
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

    .line 184
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

    .line 185
    iget-wide p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mCapturePreviewTimeStamp:J

    return-wide p0

    .line 162
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

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    if-nez v0, :cond_b

    goto/16 :goto_c3

    :cond_b
    if-eqz p1, :cond_bb

    .line 194
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_bb

    .line 198
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    if-lez v8, :cond_b3

    if-gtz v9, :cond_30

    goto/16 :goto_b3

    .line 204
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->getCamFilePath()Ljava/lang/String;

    move-result-object v4

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->getGyroFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_ab

    if-nez v5, :cond_41

    goto :goto_ab

    .line 210
    :cond_41
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    if-nez v2, :cond_4d

    .line 211
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: guard is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 214
    :cond_4d
    monitor-enter v2

    .line 215
    :try_start_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 216
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: filter already released, skip bstAiframeSelectProcess"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    monitor-exit v2

    return-object v1

    :catchall_61
    move-exception v0

    move-object p0, v0

    goto :goto_a9

    :cond_64
    const/4 v0, 0x4

    .line 219
    new-array v11, v0, [J

    .line 220
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

    .line 222
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    move-wide v6, p2

    .line 222
    invoke-virtual/range {v3 .. v11}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->bstAiframeSelectProcess(Ljava/lang/String;Ljava/lang/String;JIII[J)I

    const/4 p0, 0x0

    :goto_98
    if-ge p0, v0, :cond_a7

    .line 224
    aget-wide p1, v11, p0

    const-wide/16 v3, -0x1

    cmp-long p1, p1, v3

    if-nez p1, :cond_a4

    .line 226
    monitor-exit v2

    return-object v1

    :cond_a4
    add-int/lit8 p0, p0, 0x1

    goto :goto_98

    .line 229
    :cond_a7
    monitor-exit v2

    return-object v11

    .line 230
    :goto_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_4e .. :try_end_aa} :catchall_61

    throw p0

    .line 207
    :cond_ab
    :goto_ab
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: file paths are null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 201
    :cond_b3
    :goto_b3
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: invalid video dimensions"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 195
    :cond_bb
    :goto_bb
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processBstAiFrameSelect: sample list is null or empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 191
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

    if-eqz v9, :cond_dd

    .line 90
    iget-object v9, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mFrameInfoTxtWriter:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    if-eqz v9, :cond_7c

    .line 91
    invoke-virtual {v9}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->flush()V

    .line 93
    :cond_7c
    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->processBstAiFrameSelect(Ljava/util/List;J)[J

    move-result-object v7

    if-eqz v7, :cond_dd

    .line 95
    aget-wide v8, v7, v12

    long-to-int v8, v8

    .line 96
    aget-wide v14, v7, v13

    long-to-int v7, v14

    .line 97
    sget-object v9, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writeSample, headIndex: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", tailIndex: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz v8, :cond_d7

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_d7

    if-ltz v7, :cond_d7

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_d7

    .line 100
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    iget-object v2, v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 101
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    iget-object v4, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v13

    if-ne v7, v8, :cond_dd

    .line 103
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v4, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->tail:J

    goto :goto_dd

    .line 106
    :cond_d7
    const-string/jumbo v7, "writeSample: invalid indices returned"

    invoke-static {v9, v7}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    :cond_dd
    :goto_dd
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

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v14, v12

    const-wide/16 v15, 0x0

    :goto_103
    if-ge v14, v7, :cond_1db

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v13, v17

    check-cast v13, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;

    const-wide/16 v18, 0x0

    .line 117
    iget-object v8, v13, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mData:Ljava/nio/ByteBuffer;

    .line 118
    iget-object v9, v13, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 120
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v13

    if-eqz v13, :cond_1d2

    iget v13, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v17, v13, 0x4

    if-eqz v17, :cond_123

    goto/16 :goto_1d2

    :cond_123
    move/from16 v20, v7

    .line 125
    iget-wide v6, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v21, v6, v2

    if-ltz v21, :cond_12f

    cmp-long v21, v6, v4

    if-lez v21, :cond_136

    :cond_12f
    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    const/4 v1, 0x4

    goto/16 :goto_1ba

    :cond_136
    sub-long v22, v6, v15

    cmp-long v22, v10, v22

    if-gez v22, :cond_1ab

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_15a

    if-nez v12, :cond_15a

    .line 133
    sget-object v8, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "writeSample: drop non-key frame before first key frame, timestamp: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1ab

    :cond_15a
    if-nez v12, :cond_188

    .line 137
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v11, v10, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->head:J

    sub-long v11, v6, v11

    iput-wide v11, v10, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->offset:J

    .line 138
    iget-object v13, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;

    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    if-eqz v13, :cond_185

    .line 140
    iget-wide v1, v10, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->tail:J

    sub-long/2addr v1, v4

    .line 141
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    cmp-long v10, v1, v18

    if-lez v10, :cond_178

    goto :goto_17a

    :cond_178
    move-wide/from16 v1, v18

    :goto_17a
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;->notify([Ljava/lang/Object;)V

    :cond_185
    move-wide v15, v6

    const/4 v12, 0x1

    goto :goto_18c

    :cond_188
    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    :goto_18c
    if-ltz v21, :cond_19a

    .line 147
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSample: stop writing as reaching the ending timestamp"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 148
    iput v1, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    goto :goto_19b

    :cond_19a
    const/4 v1, 0x4

    .line 150
    :goto_19b
    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v2, v15

    iput-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 151
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v3, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoTrackId:I

    invoke-virtual {v2, v3, v8, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 152
    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide v10, v2

    goto :goto_1b0

    :cond_1ab
    :goto_1ab
    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    const/4 v1, 0x4

    :goto_1b0
    move v6, v1

    move/from16 v7, v20

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    const/4 v13, 0x1

    goto/16 :goto_103

    .line 128
    :goto_1ba
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeSample: skip frame outside stable interval, timestamp: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1b0

    .line 121
    :cond_1d2
    :goto_1d2
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "writeSample: end of stream"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1dd

    :cond_1db
    const-wide/16 v18, 0x0

    .line 155
    :goto_1dd
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v1, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    sub-long/2addr v1, v15

    move-wide/from16 v3, v18

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    .line 156
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
