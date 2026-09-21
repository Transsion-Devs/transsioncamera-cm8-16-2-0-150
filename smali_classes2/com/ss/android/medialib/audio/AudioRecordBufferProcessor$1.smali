.class Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->feed([BIJ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

.field final synthetic val$bytes:[B

.field final synthetic val$size:I

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;[BIJ)V
    .registers 6

    .line 86
    iput-object p1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    iput-object p2, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->val$bytes:[B

    iput p3, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->val$size:I

    iput-wide p4, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->val$timeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    # getter for: Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z
    invoke-static {v0}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->access$000(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 92
    :cond_9
    iget-object v0, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    # getter for: Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mWavFileLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->access$100(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_10
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    # getter for: Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mIsRunning:Z
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->access$000(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    # getter for: Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->access$200(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Lorg/libsdl/app/AudioRecorderInterface;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 94
    iget-object v1, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->this$0:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    # getter for: Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->mRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;
    invoke-static {v1}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->access$200(Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;)Lorg/libsdl/app/AudioRecorderInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->val$bytes:[B

    iget v3, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->val$size:I

    iget-wide v4, p0, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor$1;->val$timeStamp:J

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/libsdl/app/AudioRecorderInterface;->addPCMData([BIJ)I

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    .line 96
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_30

    throw p0
.end method
