.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->compile(Ljava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoCompileParam;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

.field final synthetic val$compileListener:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V
    .registers 3

    .line 1939
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->val$compileListener:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileDone()V
    .registers 3

    .line 1951
    const-string v0, "cut.VEEditorAdapter"

    const-string v1, "onCompileDone"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->val$compileListener:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    if-eqz v0, :cond_e

    .line 1953
    invoke-interface {v0}, Lcom/bytedance/ies/cutsame/veadapter/CompileListener;->onCompileDone()V

    .line 1955
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$200(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object v0

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$1000(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    return-void
.end method

.method public onCompileError(IIFLjava/lang/String;)V
    .registers 7

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompileError: error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.VEEditorAdapter"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->val$compileListener:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    if-eqz v0, :cond_35

    .line 1944
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/CompileListener;->onCompileError(IIFLjava/lang/String;)V

    .line 1946
    :cond_35
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$200(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->asyncHandlerThread:Landroid/os/HandlerThread;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$1000(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    return-void
.end method

.method public onCompileProgress(F)V
    .registers 2

    .line 1960
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$9;->val$compileListener:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    if-eqz p0, :cond_7

    .line 1961
    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/CompileListener;->onCompileProgress(F)V

    :cond_7
    return-void
.end method
