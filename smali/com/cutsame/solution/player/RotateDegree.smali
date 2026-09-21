.class public final enum Lcom/cutsame/solution/player/RotateDegree;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/cutsame/solution/player/RotateDegree;

.field public static final enum ROTATE_180:Lcom/cutsame/solution/player/RotateDegree;

.field public static final enum ROTATE_270:Lcom/cutsame/solution/player/RotateDegree;

.field public static final enum ROTATE_90:Lcom/cutsame/solution/player/RotateDegree;

.field public static final enum ROTATE_NONE:Lcom/cutsame/solution/player/RotateDegree;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/cutsame/solution/player/RotateDegree;

    const-string v1, "ROTATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/player/RotateDegree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_NONE:Lcom/cutsame/solution/player/RotateDegree;

    .line 2
    new-instance v1, Lcom/cutsame/solution/player/RotateDegree;

    const-string v2, "ROTATE_90"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/cutsame/solution/player/RotateDegree;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_90:Lcom/cutsame/solution/player/RotateDegree;

    .line 3
    new-instance v2, Lcom/cutsame/solution/player/RotateDegree;

    const-string v3, "ROTATE_180"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/cutsame/solution/player/RotateDegree;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_180:Lcom/cutsame/solution/player/RotateDegree;

    .line 4
    new-instance v3, Lcom/cutsame/solution/player/RotateDegree;

    const-string v4, "ROTATE_270"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/cutsame/solution/player/RotateDegree;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_270:Lcom/cutsame/solution/player/RotateDegree;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/cutsame/solution/player/RotateDegree;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/cutsame/solution/player/RotateDegree;->$VALUES:[Lcom/cutsame/solution/player/RotateDegree;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cutsame/solution/player/RotateDegree;
    .registers 2

    const-class v0, Lcom/cutsame/solution/player/RotateDegree;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cutsame/solution/player/RotateDegree;

    return-object p0
.end method

.method public static values()[Lcom/cutsame/solution/player/RotateDegree;
    .registers 1

    sget-object v0, Lcom/cutsame/solution/player/RotateDegree;->$VALUES:[Lcom/cutsame/solution/player/RotateDegree;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cutsame/solution/player/RotateDegree;

    return-object v0
.end method
