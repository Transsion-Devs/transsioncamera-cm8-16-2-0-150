.class Lcom/ss/android/vesdk/VEBingoInvoker$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEBingoInvoker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

.field final synthetic val$lastbuffer:[Ljava/nio/ByteBuffer;

.field final synthetic val$time:[F


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEBingoInvoker$1;[Ljava/nio/ByteBuffer;[F)V
    .registers 4

    .line 448
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$lastbuffer:[Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$time:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processFrame(Ljava/nio/ByteBuffer;III)Z
    .registers 16

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object v2, v2, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$softTime:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    sub-long/2addr v0, v4

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frameProcessSoft"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget v4, v4, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$index:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cost time :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ptsMs: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$softTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 454
    iget-object v0, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$lastbuffer:[Ljava/nio/ByteBuffer;

    aget-object v1, v0, v3

    if-nez v1, :cond_6f

    .line 455
    aput-object p1, v0, v3

    .line 456
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$time:[F

    int-to-float p2, p4

    aput p2, p1, v3

    .line 457
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object p1, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

    # getter for: Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEBingoInvoker;->access$000(Lcom/ss/android/vesdk/VEBingoInvoker;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 460
    :cond_6f
    iget-object p4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object p4, p4, Lcom/ss/android/vesdk/VEBingoInvoker$1;->this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

    # getter for: Lcom/ss/android/vesdk/VEBingoInvoker;->mNativeBingoHandler:Lcom/ss/android/vesdk/jni/TEBingoInterface;
    invoke-static {p4}, Lcom/ss/android/vesdk/VEBingoInvoker;->access$100(Lcom/ss/android/vesdk/VEBingoInvoker;)Lcom/ss/android/vesdk/jni/TEBingoInterface;

    move-result-object v4

    iget-object p4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$lastbuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, p4, v3

    iget-object p4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$time:[F

    aget v9, p4, v3

    iget-object p4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object v10, p4, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$videoPath:Ljava/lang/String;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->processBingoFrames(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I

    .line 461
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$lastbuffer:[Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    aput-object p2, p1, v3

    .line 463
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->val$time:[F

    const/4 p2, 0x0

    aput p2, p1, v3

    .line 464
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object v0, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

    iget-object v1, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

    iget v2, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$steps:I

    iget v3, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$index:I

    iget-wide v4, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$startTime:J

    iget-object v6, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$res:[I

    # invokes: Lcom/ss/android/vesdk/VEBingoInvoker;->progressBack(Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IIJ[I)V
    invoke-static/range {v0 .. v6}, Lcom/ss/android/vesdk/VEBingoInvoker;->access$200(Lcom/ss/android/vesdk/VEBingoInvoker;Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IIJ[I)V

    .line 465
    iget-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget-object p1, p1, Lcom/ss/android/vesdk/VEBingoInvoker$1;->this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

    # getter for: Lcom/ss/android/vesdk/VEBingoInvoker;->genFrameMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEBingoInvoker;->access$000(Lcom/ss/android/vesdk/VEBingoInvoker;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;->this$1:Lcom/ss/android/vesdk/VEBingoInvoker$1;

    iget p0, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
