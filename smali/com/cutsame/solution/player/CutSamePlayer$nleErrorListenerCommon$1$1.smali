.class public final Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/player/CutSamePlayer;->a(Lcom/cutsame/solution/player/CutSamePlayer;IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    iput p1, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;->a:I

    iput-object p2, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/cutsame/solution/player/PlayerStateListener;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;->invoke(Lcom/cutsame/solution/player/PlayerStateListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/cutsame/solution/player/PlayerStateListener;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;->a:I

    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;->b:Ljava/lang/String;

    const-string v1, "msg"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p0}, Lcom/cutsame/solution/player/PlayerStateListener;->onPlayError(ILjava/lang/String;)V

    return-void
.end method
