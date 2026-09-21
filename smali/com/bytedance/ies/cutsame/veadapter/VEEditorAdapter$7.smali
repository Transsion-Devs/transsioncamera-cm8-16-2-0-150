.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


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

    .line 293
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .registers 6

    .line 296
    const-string p3, "cut.VEEditorAdapter"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VEEditor onInfo : type = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1002

    if-eq p1, p2, :cond_6e

    const/16 p2, 0x1014

    if-eq p1, p2, :cond_48

    const/16 p2, 0x1032

    if-eq p1, p2, :cond_2f

    goto :goto_47

    .line 322
    :cond_2f
    const-string p1, "cut.VEEditorAdapter"

    const-string p2, "TE_INFO_SEEK_FLUSH_DONE"

    invoke-static {p1, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekCommandFlushedListener:Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$900(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 324
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekCommandFlushedListener:Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$900(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/ies/cutsame/veadapter/ISeekCommandFlushedListener;->onSeekFlushDone()V

    :cond_47
    :goto_47
    return-void

    .line 308
    :cond_48
    const-string p1, "cut.VEEditorAdapter"

    const-string p2, "TE_INFO_VIDEO_PROCESSOR_PREPARED"

    invoke-static {p1, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$500(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 310
    :try_start_56
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object p2

    if-eqz p2, :cond_6a

    .line 311
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPrepared()V

    goto :goto_6a

    :catchall_68
    move-exception p0

    goto :goto_6c

    .line 313
    :cond_6a
    :goto_6a
    monitor-exit p1

    return-void

    :goto_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_56 .. :try_end_6d} :catchall_68

    throw p0

    .line 300
    :cond_6e
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->statusListenerLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$500(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 301
    :try_start_75
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object p2

    if-eqz p2, :cond_89

    .line 303
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$7;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mTemplatePlayerStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$600(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlayEOF()V

    goto :goto_89

    :catchall_87
    move-exception p0

    goto :goto_8b

    .line 305
    :cond_89
    :goto_89
    monitor-exit p1

    return-void

    :goto_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_87

    throw p0
.end method
