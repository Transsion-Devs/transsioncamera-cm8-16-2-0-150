.class Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/veadapter/CompileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->export(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

.field final synthetic val$draft:Lcom/cutsame/solution/draft/ICutSameDraft;

.field final synthetic val$finalExportStartTime:J

.field final synthetic val$tempPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Ljava/lang/String;JLcom/cutsame/solution/draft/ICutSameDraft;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 740
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$tempPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$finalExportStartTime:J

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$draft:Lcom/cutsame/solution/draft/ICutSameDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileDone()V
    .registers 5

    .line 751
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export onCompileDone, tempPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$tempPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$tempPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onExportProgress(F)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mcheckSdkState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateVlogAnalytics(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/player/CutSamePlayer;->releaseCompile()V

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$draft:Lcom/cutsame/solution/draft/ICutSameDraft;

    invoke-interface {v0}, Lcom/cutsame/solution/draft/ICutSameDraft;->release()V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->val$tempPath:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onExportDone(Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method public onCompileError(IIFLjava/lang/String;)V
    .registers 8

    .line 744
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export onCompileError, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 745
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onExportError(IIFLjava/lang/String;)V

    return-void
.end method

.method public onCompileProgress(F)V
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->cancelExport()V

    .line 780
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onExportProgress(F)V

    return-void
.end method
