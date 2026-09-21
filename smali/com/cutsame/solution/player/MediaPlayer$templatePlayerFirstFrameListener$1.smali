.class public final Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;


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

    iput-object p1, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRendered()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;->a:Lcom/cutsame/solution/player/MediaPlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getPlayerStateListener$CutSameIF_release()Lcom/cutsame/solution/player/PlayerStateListener;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-interface {p0}, Lcom/cutsame/solution/player/PlayerStateListener;->onFirstFrameRendered()V

    return-void
.end method
