.class Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

.field final synthetic val$nativePtr:J


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;J)V
    .registers 4

    .line 291
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    iput-wide p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;->val$nativePtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 295
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 296
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;->val$nativePtr:J

    const/4 v4, 0x0

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativePrepare(JI)V
    invoke-static {v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$400(JI)V

    .line 297
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->reportPrepareFinish(J)V
    invoke-static {v2, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$500(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;J)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_15

    .line 299
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeRelease(J)V
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$600(J)V

    return-void

    :catchall_15
    move-exception v0

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;->val$nativePtr:J

    # invokes: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeRelease(J)V
    invoke-static {v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$600(J)V

    throw v0
.end method
