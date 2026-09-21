.class final Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

.field final synthetic z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOcase;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-static {v0, p0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    return-void
.end method
