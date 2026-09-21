.class public final Lcom/cutsame/solution/player/CutSamePlayer$nleListenerVideoOutput$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/player/CutSamePlayer;->a(Lcom/cutsame/solution/player/CutSamePlayer;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    iput-wide p1, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerVideoOutput$1$1;->a:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/cutsame/solution/player/PlayerStateListener;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerVideoOutput$1$1;->invoke(Lcom/cutsame/solution/player/PlayerStateListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/cutsame/solution/player/PlayerStateListener;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerVideoOutput$1$1;->a:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result p0

    int-to-long v0, p0

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/cutsame/solution/player/PlayerStateListener;->onPlayProgress(J)V

    return-void
.end method
