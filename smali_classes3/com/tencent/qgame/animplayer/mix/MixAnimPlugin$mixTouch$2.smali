.class final Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$mixTouch$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$mixTouch$2;->this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tencent/qgame/animplayer/mix/MixTouch;
    .registers 2

    .line 0
    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixTouch;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$mixTouch$2;->this$0:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/mix/MixTouch;-><init>(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$mixTouch$2;->invoke()Lcom/tencent/qgame/animplayer/mix/MixTouch;

    move-result-object p0

    return-object p0
.end method
