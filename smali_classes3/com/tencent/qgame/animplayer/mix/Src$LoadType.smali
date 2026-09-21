.class public final enum Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/mix/Src;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field public static final enum LOCAL:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field public static final enum NET:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field public static final enum UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    new-instance v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    const/4 v2, 0x1

    const-string v3, "net"

    const-string v4, "NET"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->NET:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    new-instance v2, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    const/4 v3, 0x2

    const-string v4, "local"

    const-string v5, "LOCAL"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->LOCAL:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    filled-new-array {v0, v1, v2}, [Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    move-result-object v0

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
    .registers 2

    const-class v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;
    .registers 1

    sget-object v0, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    invoke-virtual {v0}, [Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    return-object v0
.end method
