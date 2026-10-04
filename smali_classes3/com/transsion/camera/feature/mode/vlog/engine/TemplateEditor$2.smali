.class Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/player/PlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->preparePlay(Landroid/view/SurfaceView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 9

    .line 444
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparePlay, state changed, playState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v2, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mparsePlayState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedAutoStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmNeedAutoStart(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_128

    :pswitch_3f
    goto :goto_91

    .line 482
    :pswitch_40
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerPlaying(Z)V

    .line 483
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerDestroyed()V

    return-void

    .line 462
    :pswitch_58
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-nez p1, :cond_77

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmUserPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerPlaying(Z)V

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V

    return-void

    .line 466
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mcheckSdkState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object p1

    if-nez p1, :cond_88

    goto :goto_91

    .line 470
    :cond_88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cutsame/solution/player/CutSamePlayer;->pause()V

    :cond_91
    :goto_91
    return-void

    .line 449
    :pswitch_92
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmOriginTemplateWrapItem(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setComposeState(I)V

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerPlaying(Z)V

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-nez p1, :cond_fd

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmUserPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-nez p1, :cond_fd

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmNeedAutoStart(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mcheckSdkState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmRotateDegree(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/RotateDegree;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmScaleW(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)F

    move-result v3

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmScaleH(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)F

    move-result v4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmTransX(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I

    move-result v5

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmTransY(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/cutsame/solution/player/CutSamePlayer;->rotateDisplay(Lcom/cutsame/solution/player/RotateDegree;FFII)V

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cutsame/solution/player/CutSamePlayer;->start()V

    .line 454
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "CutSamePlayer start completed"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    :cond_fd
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fputmNeedAutoStart(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V

    .line 457
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmOriginTemplateWrapItem(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onComposeCompleted(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void

    .line 477
    :pswitch_118
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerPlaying(Z)V

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V

    return-void

    nop

    :pswitch_data_128
    .packed-switch 0x3e9
        :pswitch_118
        :pswitch_92
        :pswitch_3f
        :pswitch_118
        :pswitch_58
        :pswitch_118
        :pswitch_40
    .end packed-switch
.end method

.method public onFirstFrameRendered()V
    .registers 3

    .line 437
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "preparePlay, onFirstFrameRendered"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onFirstFrameRendered()V

    return-void
.end method

.method public onPlayEof()V
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmUserPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mcheckSdkState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/player/CutSamePlayer;->pause()V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->seekTo(IZ)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerPlaying(Z)V

    :cond_3d
    return-void
.end method

.method public onPlayError(ILjava/lang/String;)V
    .registers 3

    .line 511
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "preparePlay, onPlayError"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V

    return-void
.end method

.method public onPlayProgress(J)V
    .registers 3

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->-$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onPlayerProgress(J)V

    return-void
.end method
