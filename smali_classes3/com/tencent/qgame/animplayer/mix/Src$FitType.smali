.class public final enum Lcom/tencent/qgame/animplayer/mix/Src$FitType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/mix/Src;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FitType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$FitType;

.field public static final enum CENTER_FULL:Lcom/tencent/qgame/animplayer/mix/Src$FitType;

.field public static final enum FIT_XY:Lcom/tencent/qgame/animplayer/mix/Src$FitType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    const/4 v1, 0x0

    const-string v2, "fitXY"

    const-string v3, "FIT_XY"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/qgame/animplayer/mix/Src$FitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;->FIT_XY:Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    new-instance v1, Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    const/4 v2, 0x1

    const-string v3, "centerFull"

    const-string v4, "CENTER_FULL"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/qgame/animplayer/mix/Src$FitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/Src$FitType;->CENTER_FULL:Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    filled-new-array {v0, v1}, [Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    move-result-object v0

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qgame/animplayer/mix/Src$FitType;
    .registers 2

    const-class v0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qgame/animplayer/mix/Src$FitType;
    .registers 1

    sget-object v0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;->$VALUES:[Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    invoke-virtual {v0}, [Lcom/tencent/qgame/animplayer/mix/Src$FitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    return-object v0
.end method
