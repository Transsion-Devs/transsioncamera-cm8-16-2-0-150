.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V
    .registers 2

    .line 2116
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 2116
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;->invoke()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Lkotlin/Unit;
    .registers 3

    .line 2119
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$500(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2120
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onDestroy()V

    .line 2121
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$10;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$602(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    .line 2122
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 2123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1a
    move-exception p0

    .line 2122
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method
