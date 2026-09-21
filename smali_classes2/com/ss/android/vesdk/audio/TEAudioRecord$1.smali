.class Lcom/ss/android/vesdk/audio/TEAudioRecord$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/audio/TEAudioRecord;->start(Lcom/bytedance/bpea/basics/Cert;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/audio/TEAudioRecord;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 174
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$000(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->getDataStore()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 175
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$100(Lcom/ss/android/vesdk/audio/TEAudioRecord;)I

    move-result v0

    new-array v0, v0, [B

    .line 176
    iget-object v2, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    invoke-virtual {v2, v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->read([B)I

    move-result v2

    if-lez v2, :cond_40

    .line 177
    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I
    invoke-static {v1}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$100(Lcom/ss/android/vesdk/audio/TEAudioRecord;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->createByteArrayAudioSample([BI)Lcom/ss/android/vesdk/audio/VEAudioSample;

    move-result-object v1

    goto :goto_40

    .line 180
    :cond_28
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->read()I

    move-result v2

    if-lez v2, :cond_40

    .line 181
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$200(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mBufferSizeInBytes:I
    invoke-static {v1}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$100(Lcom/ss/android/vesdk/audio/TEAudioRecord;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/audio/VEAudioSample;->createByteBufferAudioSample(Ljava/nio/ByteBuffer;I)Lcom/ss/android/vesdk/audio/VEAudioSample;

    move-result-object v1

    :cond_40
    :goto_40
    if-ltz v2, :cond_8a

    .line 185
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$300(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/audio/TEAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_81

    if-eqz v1, :cond_81

    .line 186
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mTimestampStrategy:Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$400(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 187
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mTimestampStrategy:Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$400(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;

    move-result-object v3

    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$500(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v4

    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleSize:I
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$600(Lcom/ss/android/vesdk/audio/TEAudioRecord;)I

    move-result v0

    div-int/2addr v2, v0

    int-to-long v5, v2

    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mSampleNanoTimePerSecond:D
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$700(Lcom/ss/android/vesdk/audio/TEAudioRecord;)D

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/audio/TEAudioRecordTimestampStrategy;->calNanoTimeStamp(Landroid/media/AudioRecord;JD)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 188
    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/audio/VEAudioSample;->setTimeStamp(J)V

    .line 190
    :cond_78
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mAudioCallback:Lcom/ss/android/vesdk/audio/TEAudioCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$300(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Lcom/ss/android/vesdk/audio/TEAudioCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/audio/TEAudioCallback;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    .line 192
    :cond_81
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioRecord$1;->this$0:Lcom/ss/android/vesdk/audio/TEAudioRecord;

    # getter for: Lcom/ss/android/vesdk/audio/TEAudioRecord;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/vesdk/audio/TEAudioRecord;->access$800(Lcom/ss/android/vesdk/audio/TEAudioRecord;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8a
    return-void
.end method
