.class public final enum Lcom/tencent/qgame/animplayer/util/ScaleType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qgame/animplayer/util/ScaleType;

.field public static final enum CENTER_CROP:Lcom/tencent/qgame/animplayer/util/ScaleType;

.field public static final enum FIT_CENTER:Lcom/tencent/qgame/animplayer/util/ScaleType;

.field public static final enum FIT_XY:Lcom/tencent/qgame/animplayer/util/ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/tencent/qgame/animplayer/util/ScaleType;

    const-string v1, "FIT_XY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ScaleType;->FIT_XY:Lcom/tencent/qgame/animplayer/util/ScaleType;

    new-instance v1, Lcom/tencent/qgame/animplayer/util/ScaleType;

    const-string v2, "FIT_CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/qgame/animplayer/util/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/qgame/animplayer/util/ScaleType;->FIT_CENTER:Lcom/tencent/qgame/animplayer/util/ScaleType;

    new-instance v2, Lcom/tencent/qgame/animplayer/util/ScaleType;

    const-string v3, "CENTER_CROP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/qgame/animplayer/util/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/qgame/animplayer/util/ScaleType;->CENTER_CROP:Lcom/tencent/qgame/animplayer/util/ScaleType;

    filled-new-array {v0, v1, v2}, [Lcom/tencent/qgame/animplayer/util/ScaleType;

    move-result-object v0

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ScaleType;->$VALUES:[Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qgame/animplayer/util/ScaleType;
    .registers 2

    const-class v0, Lcom/tencent/qgame/animplayer/util/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qgame/animplayer/util/ScaleType;
    .registers 1

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleType;->$VALUES:[Lcom/tencent/qgame/animplayer/util/ScaleType;

    invoke-virtual {v0}, [Lcom/tencent/qgame/animplayer/util/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-object v0
.end method
