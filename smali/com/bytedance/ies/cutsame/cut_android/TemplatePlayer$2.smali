.class Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

.field final synthetic val$nativePtr:J


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;J)V
    .registers 4

    .line 580
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    iput-wide p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 585
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativePrepare(J)V
    invoke-static {v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$300(J)V

    .line 586
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;
    invoke-static {v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$400(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 588
    iget-wide v4, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    .line 589
    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetErrorCode(J)I
    invoke-static {v4, v5}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$500(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "2.1.0.e0deccef.debug"

    const/4 v4, 0x2

    .line 588
    invoke-interface/range {v3 .. v8}, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;->report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_2b
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetErrorCode(J)I
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$500(J)I

    move-result v0

    if-nez v0, :cond_69

    .line 598
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareAsync success"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$600(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 601
    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetTemplateModel(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
    invoke-static {v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$700(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;

    move-result-object v1

    .line 602
    invoke-interface {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onPreSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 603
    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onProgress(FLjava/lang/String;)V

    .line 604
    invoke-interface {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V

    .line 608
    :cond_59
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 610
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v2, 0x3ea

    invoke-interface {v0, v1, v2}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    goto :goto_b2

    .line 614
    :cond_69
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAsync error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$600(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 617
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeGetErrorMsg(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$800(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onError(ILjava/lang/String;)V

    .line 620
    :cond_94
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 622
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v3, 0x3ee

    invoke-interface {v1, v2, v3}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    .line 625
    :cond_a3
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newErrorListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$900(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 627
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v3, -0xa

    invoke-interface {v1, v2, v3, v0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;->onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V

    .line 631
    :cond_b2
    :goto_b2
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$2;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->nativeReleasePtr(J)V
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$1000(J)V

    return-void
.end method
