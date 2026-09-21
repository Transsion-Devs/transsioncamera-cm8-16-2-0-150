.class public final enum Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum ADJUST:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum AUDIO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum FILTER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum STICKER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum TEXT:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field public static final enum VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;


# direct methods
.method private static final synthetic $values()[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;
    .registers 7

    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    sget-object v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->TEXT:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    sget-object v2, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->FILTER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    sget-object v3, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->ADJUST:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    sget-object v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->STICKER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    sget-object v5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->AUDIO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    sget-object v6, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    filled-new-array/range {v0 .. v6}, [Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 222
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->TEXT:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "FILTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->FILTER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "ADJUST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->ADJUST:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "STICKER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->STICKER:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "AUDIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->AUDIO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    const-string v1, "NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->NONE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->$values()[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->$VALUES:[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;
    .registers 2

    const-class v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;
    .registers 1

    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->$VALUES:[Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-object v0
.end method
