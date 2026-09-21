.class public final enum Lcom/bytedance/ies/cutsame/util/GamePlayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/util/GamePlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/util/GamePlayType;

.field public static final enum SILKY_SPEED:Lcom/bytedance/ies/cutsame/util/GamePlayType;

.field public static final enum UNKNOWN:Lcom/bytedance/ies/cutsame/util/GamePlayType;

.field public static final enum _3D:Lcom/bytedance/ies/cutsame/util/GamePlayType;


# direct methods
.method private static final synthetic $values()[Lcom/bytedance/ies/cutsame/util/GamePlayType;
    .registers 3

    sget-object v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;->UNKNOWN:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    sget-object v1, Lcom/bytedance/ies/cutsame/util/GamePlayType;->_3D:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    sget-object v2, Lcom/bytedance/ies/cutsame/util/GamePlayType;->SILKY_SPEED:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    filled-new-array {v0, v1, v2}, [Lcom/bytedance/ies/cutsame/util/GamePlayType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/util/GamePlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;->UNKNOWN:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    .line 5
    new-instance v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;

    const-string v1, "_3D"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/util/GamePlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;->_3D:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    .line 6
    new-instance v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;

    const-string v1, "SILKY_SPEED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/util/GamePlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;->SILKY_SPEED:Lcom/bytedance/ies/cutsame/util/GamePlayType;

    invoke-static {}, Lcom/bytedance/ies/cutsame/util/GamePlayType;->$values()[Lcom/bytedance/ies/cutsame/util/GamePlayType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;->$VALUES:[Lcom/bytedance/ies/cutsame/util/GamePlayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/GamePlayType;
    .registers 2

    const-class v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/util/GamePlayType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/util/GamePlayType;
    .registers 1

    sget-object v0, Lcom/bytedance/ies/cutsame/util/GamePlayType;->$VALUES:[Lcom/bytedance/ies/cutsame/util/GamePlayType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/util/GamePlayType;

    return-object v0
.end method
