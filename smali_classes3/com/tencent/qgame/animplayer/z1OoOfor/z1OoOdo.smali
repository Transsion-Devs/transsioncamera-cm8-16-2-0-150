.class public final Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;
.super Landroid/view/TextureView;


# instance fields
.field private z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-eqz v0, :cond_35

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    if-eqz v0, :cond_35

    const-string v2, "ev"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    invoke-interface {v2, p1}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_22

    return v1

    :cond_35
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getPlayer()Lcom/tencent/qgame/animplayer/z1OoOif;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    return-object p0
.end method

.method public final setPlayer(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOif;

    return-void
.end method
