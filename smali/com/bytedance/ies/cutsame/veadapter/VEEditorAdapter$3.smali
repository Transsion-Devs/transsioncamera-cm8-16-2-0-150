.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

.field final synthetic val$surfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Landroid/view/SurfaceView;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->videoData:Lcom/bytedance/ies/cutsame/veadapter/VideoData;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$000(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/VideoData;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceView.post initOrUpdateCanvas. videoData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->videoData:Lcom/bytedance/ies/cutsame/veadapter/VideoData;
    invoke-static {v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$000(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/VideoData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cut.VEEditorAdapter"

    invoke-static {v2, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3b

    .line 208
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->veConfig:Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$100(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->getAutoPrepare()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 209
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$3;->val$surfaceView:Landroid/view/SurfaceView;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$200(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object v2

    # invokes: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->initOrUpdateCanvas(Lcom/bytedance/ies/cutsame/veadapter/VideoData;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEEditor;)I
    invoke-static {v1, v0, p0, v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$300(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/VideoData;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEEditor;)I

    :cond_3b
    return-void
.end method
