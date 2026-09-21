.class public final Lcom/cutsame/solution/player/CutSamePlayer$pause$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/player/CutSamePlayer;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$pause$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/player/CutSamePlayer$pause$1;

    invoke-direct {v0}, Lcom/cutsame/solution/player/CutSamePlayer$pause$1;-><init>()V

    sput-object v0, Lcom/cutsame/solution/player/CutSamePlayer$pause$1;->INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$pause$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/cutsame/solution/player/PlayerStateListener;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer$pause$1;->invoke(Lcom/cutsame/solution/player/PlayerStateListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/cutsame/solution/player/PlayerStateListener;)V
    .registers 2

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x3ec

    .line 2
    invoke-interface {p1, p0}, Lcom/cutsame/solution/player/PlayerStateListener;->onChanged(I)V

    return-void
.end method
