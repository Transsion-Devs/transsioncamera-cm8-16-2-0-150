.class public final Lcom/cutsame/solution/gameplay/CutSameGamePlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GamePlay_Cutsame"

    .line 2
    iput-object v0, p0, Lcom/cutsame/solution/gameplay/CutSameGamePlay;->a:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;

    invoke-direct {v0}, Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;-><init>()V

    iput-object v0, p0, Lcom/cutsame/solution/gameplay/CutSameGamePlay;->c:Lcom/cutsame/solution/gameplay/GamePlaySilkySpeedTask;

    return-void
.end method
