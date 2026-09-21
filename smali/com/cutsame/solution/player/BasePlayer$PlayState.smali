.class public final enum Lcom/cutsame/solution/player/BasePlayer$PlayState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/player/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayState"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/cutsame/solution/player/BasePlayer$PlayState;

.field public static final enum ERROR:Lcom/cutsame/solution/player/BasePlayer$PlayState;

.field public static final enum IDLE:Lcom/cutsame/solution/player/BasePlayer$PlayState;

.field public static final enum PAUSED:Lcom/cutsame/solution/player/BasePlayer$PlayState;

.field public static final enum PLAYING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

.field public static final enum SEEKING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

.field public static final enum UNKNOWN:Lcom/cutsame/solution/player/BasePlayer$PlayState;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/BasePlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->UNKNOWN:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    new-instance v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    const-string v1, "IDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/BasePlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->IDLE:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    new-instance v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/BasePlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->ERROR:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    new-instance v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    const-string v1, "PLAYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/BasePlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PLAYING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    new-instance v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/BasePlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PAUSED:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    new-instance v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    const-string v1, "SEEKING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/BasePlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->SEEKING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    invoke-static {}, Lcom/cutsame/solution/player/BasePlayer$PlayState;->a()[Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object v0

    sput-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->$VALUES:[Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lcom/cutsame/solution/player/BasePlayer$PlayState;
    .registers 6

    sget-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->UNKNOWN:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    sget-object v1, Lcom/cutsame/solution/player/BasePlayer$PlayState;->IDLE:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    sget-object v2, Lcom/cutsame/solution/player/BasePlayer$PlayState;->ERROR:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    sget-object v3, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PLAYING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    sget-object v4, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PAUSED:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    sget-object v5, Lcom/cutsame/solution/player/BasePlayer$PlayState;->SEEKING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    filled-new-array/range {v0 .. v5}, [Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cutsame/solution/player/BasePlayer$PlayState;
    .registers 2

    const-class v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0
.end method

.method public static values()[Lcom/cutsame/solution/player/BasePlayer$PlayState;
    .registers 1

    sget-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->$VALUES:[Lcom/cutsame/solution/player/BasePlayer$PlayState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object v0
.end method
