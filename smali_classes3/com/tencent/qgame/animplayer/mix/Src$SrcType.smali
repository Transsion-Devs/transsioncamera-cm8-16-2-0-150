.class public final enum Lcom/tencent/qgame/animplayer/mix/Src$SrcType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/mix/Src;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SrcType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

.field public static final enum IMG:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

.field public static final enum TXT:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

.field public static final enum UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    new-instance v1, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    const/4 v2, 0x1

    const-string v3, "img"

    const-string v4, "IMG"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->IMG:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    new-instance v2, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    const/4 v3, 0x2

    const-string/jumbo v4, "txt"

    const-string v5, "TXT"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->TXT:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    filled-new-array {v0, v1, v2}, [Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    move-result-object v0

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qgame/animplayer/mix/Src$SrcType;
    .registers 2

    const-class v0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qgame/animplayer/mix/Src$SrcType;
    .registers 1

    sget-object v0, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    invoke-virtual {v0}, [Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    return-object v0
.end method
