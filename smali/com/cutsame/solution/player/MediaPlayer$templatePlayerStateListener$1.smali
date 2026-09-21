.class public final Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;
.super Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/player/MediaPlayer;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/player/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/player/MediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    .line 1
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V
    .registers 4

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3eb

    if-ne p2, p1, :cond_b

    const/16 p2, 0x3ea

    .line 1
    :cond_b
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getPlayerStateListener$CutSameIF_release()Lcom/cutsame/solution/player/PlayerStateListener;

    move-result-object p0

    if-nez p0, :cond_14

    return-void

    :cond_14
    invoke-interface {p0, p2}, Lcom/cutsame/solution/player/PlayerStateListener;->onChanged(I)V

    return-void
.end method

.method public onPlayEOF()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getPlayerStateListener$CutSameIF_release()Lcom/cutsame/solution/player/PlayerStateListener;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-interface {p0}, Lcom/cutsame/solution/player/PlayerStateListener;->onPlayEof()V

    return-void
.end method

.method public onPlayProgress(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;J)V
    .registers 5

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getPlayerStateListener$CutSameIF_release()Lcom/cutsame/solution/player/PlayerStateListener;

    move-result-object p0

    if-nez p0, :cond_e

    return-void

    :cond_e
    invoke-interface {p0, p2, p3}, Lcom/cutsame/solution/player/PlayerStateListener;->onPlayProgress(J)V

    return-void
.end method
