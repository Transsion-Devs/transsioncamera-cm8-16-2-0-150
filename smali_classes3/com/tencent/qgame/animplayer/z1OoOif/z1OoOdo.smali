.class public final Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOtry:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo$z1OoOdo;


# instance fields
.field private final z1OoObyte:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

.field private final z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOif;

.field public final z1OoOdo:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

.field public z1OoOfor:I

.field public final z1OoOif:Ljava/util/List;

.field public z1OoOint:I

.field public z1OoOnew:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOtry:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 5

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOif;

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    new-instance v1, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    invoke-direct {v1, p1}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoObyte:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final z1OoOdo(Lcom/tencent/qgame/animplayer/AnimConfig;)I
    .registers 5

    .line 0
    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimPluginManager"

    const-string v2, "onConfigCreate"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    invoke-interface {v0, p1}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public final z1OoOdo(I)V
    .registers 5

    .line 0
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "onDecoding decodeIndex="

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimPluginManager"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    invoke-interface {v0, p1}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onDecoding(I)V

    goto :goto_1b

    :cond_2b
    return-void
.end method
