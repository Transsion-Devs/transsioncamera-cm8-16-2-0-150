.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;


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


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(II)V
    .registers 7

    .line 237
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$500(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 238
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 239
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlayProgress(J)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_2f

    .line 240
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 241
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$5;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onFrameRefresh(II)V

    .line 243
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_1a

    throw p0
.end method
