.class Lcom/ss/android/vesdk/TERecorder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder$1;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/TERecorder$1;

.field final synthetic val$ext:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder$1;I)V
    .registers 3

    .line 287
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->this$1:Lcom/ss/android/vesdk/TERecorder$1;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->val$ext:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->this$1:Lcom/ss/android/vesdk/TERecorder$1;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz v0, :cond_d

    .line 291
    iget v1, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->val$ext:I

    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 293
    :cond_d
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->this$1:Lcom/ss/android/vesdk/TERecorder$1;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 295
    # getter for: Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 296
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->this$1:Lcom/ss/android/vesdk/TERecorder$1;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->val$ext:I

    const-string v2, "stopRecord in stopPreview!!"

    const/16 v3, 0x3fe

    # invokes: Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V
    invoke-static {v0, v3, v1, v2}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;IILjava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$1$1;->this$1:Lcom/ss/android/vesdk/TERecorder$1;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->access$102(Lcom/ss/android/vesdk/TERecorder;Z)Z

    :cond_2f
    return-void
.end method
