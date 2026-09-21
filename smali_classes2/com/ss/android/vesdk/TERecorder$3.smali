.class Lcom/ss/android/vesdk/TERecorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/common/TECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;-><init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .registers 9

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info:: type: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 400
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_RECORDING_TIMESTAMP:I

    if-ne p1, v0, :cond_44

    .line 401
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    sget v1, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_RECORDING_CLIP_TIMESTAMP:I

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v3, "SegmentFrameTime"

    invoke-virtual {v2, v3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, p2, v2, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    .line 403
    :cond_44
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$3;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_4d
    return-void
.end method
