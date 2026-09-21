.class Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/source/PrepareSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->prepareSource(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

.field final synthetic val$surfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Landroid/view/SurfaceView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6

    .line 417
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSource onError, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    return-void
.end method

.method public onProgress(F)V
    .registers 4

    .line 331
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSource progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            ")V"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    const-string v0, "prepareSource onSuccess"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    if-nez p1, :cond_1b

    .line 343
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "prepareSource, no mediaItem to be replaced"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 347
    :cond_1b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_26
    :goto_26
    if-ge v3, v1, :cond_3a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 351
    invoke-virtual {v4}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 352
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 356
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmOriginTemplateWrapItem(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object p1

    .line 358
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmOriginMediaList(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_5e

    .line 359
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "prepareSource, but vlog media item is not correct"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 364
    :cond_5e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_62
    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 365
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7d

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f6

    :cond_7d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I

    move-result v3

    if-ne v3, v0, :cond_92

    .line 367
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f6

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_92

    goto :goto_f6

    .line 372
    :cond_92
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :goto_97
    if-ge v5, v3, :cond_62

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 373
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getMaterial_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b0

    goto :goto_97

    .line 377
    :cond_b0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I

    move-result v3

    if-ne v3, v4, :cond_c0

    .line 378
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setSource(Ljava/lang/String;)V

    goto :goto_db

    .line 380
    :cond_c0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmOriginTemplateWrapItem(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v3

    if-nez v3, :cond_d4

    .line 381
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setSource(Ljava/lang/String;)V

    goto :goto_db

    .line 383
    :cond_d4
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setSource(Ljava/lang/String;)V

    .line 387
    :goto_db
    invoke-virtual {v6}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setMediaSrcPath(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setOriDuration(J)V

    .line 389
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setSourceStartTime(J)V

    const/4 v1, 0x0

    .line 390
    invoke-virtual {v6, v1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setVolume(F)V

    goto/16 :goto_62

    .line 395
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 396
    :try_start_fd
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmbSurfaceReady(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v0

    if-nez v0, :cond_134

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V
    :try_end_10b
    .catchall {:try_start_fd .. :try_end_10b} :catchall_115

    .line 399
    :try_start_10b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_114} :catch_117
    .catchall {:try_start_10b .. :try_end_114} :catchall_115

    goto :goto_134

    :catchall_115
    move-exception p0

    goto :goto_14d

    :catch_117
    move-exception v0

    .line 401
    :try_start_118
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSource error Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    :cond_134
    :goto_134
    monitor-exit p1
    :try_end_135
    .catchall {:try_start_118 .. :try_end_135} :catchall_115

    .line 407
    :try_start_135
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-static {p1, v0, p3, p2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mpreparePlay(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Landroid/view/SurfaceView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13c} :catch_13d

    goto :goto_14c

    :catch_13d
    move-exception p1

    .line 409
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string p3, "preparePlay, exception: "

    invoke-static {p2, p3, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mcheckSdkState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    :goto_14c
    return-void

    .line 404
    :goto_14d
    :try_start_14d
    monitor-exit p1
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_115

    throw p0
.end method
