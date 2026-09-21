.class public final Lcom/cutsame/solution/player/MediaPlayer$templatePlayerErrorListener$1;
.super Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener$Stub;
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

    iput-object p1, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerErrorListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    .line 1
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;II)V
    .registers 6

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerErrorListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    # getter for: Lcom/cutsame/solution/player/MediaPlayer;->b:Ljava/lang/String;
    invoke-static {p1}, Lcom/cutsame/solution/player/MediaPlayer;->access$getTAG$p(Lcom/cutsame/solution/player/MediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "onError what: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerErrorListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getPlayerStateListener$CutSameIF_release()Lcom/cutsame/solution/player/PlayerStateListener;

    move-result-object p0

    if-nez p0, :cond_21

    return-void

    :cond_21
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/cutsame/solution/player/PlayerStateListener;->onPlayError(ILjava/lang/String;)V

    return-void
.end method
