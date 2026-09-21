.class public final enum Lcom/bytedance/ies/nleeditor/NLECanvasRatio;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nleeditor/NLECanvasRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_16_9:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_1_1:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_1_2:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_2_1:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_3_4:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_4_3:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_9_16:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

.field public static final enum CANVAS_OTHER:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;


# instance fields
.field private final ratio:F

.field private final tips:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;
    .registers 8

    sget-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_OTHER:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v1, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_16_9:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v2, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_4_3:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v3, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_1_1:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v4, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_3_4:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v5, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_9_16:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v6, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_2_1:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    sget-object v7, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_1_2:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    filled-new-array/range {v0 .. v7}, [Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const/4 v1, 0x0

    const-string v2, "0:0"

    const-string v3, "CANVAS_OTHER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_OTHER:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 8
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const v1, 0x3fe38e39

    const-string v2, "16:9"

    const-string v3, "CANVAS_16_9"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_16_9:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 9
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const v1, 0x3faaaaab

    const-string v2, "4:3"

    const-string v3, "CANVAS_4_3"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_4_3:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 10
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "1:1"

    const-string v3, "CANVAS_1_1"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_1_1:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 11
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const/high16 v1, 0x3f400000    # 0.75f

    const-string v2, "3:4"

    const-string v3, "CANVAS_3_4"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_3_4:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 12
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const/high16 v1, 0x3f100000    # 0.5625f

    const-string v2, "9:16"

    const-string v3, "CANVAS_9_16"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_9_16:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 13
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "2:1"

    const-string v3, "CANVAS_2_1"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_2_1:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    .line 14
    new-instance v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "1:2"

    const-string v3, "CANVAS_1_2"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_1_2:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    invoke-static {}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->$values()[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->$VALUES:[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->ratio:F

    iput-object p4, p0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->tips:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nleeditor/NLECanvasRatio;
    .registers 2

    const-class v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;
    .registers 1

    sget-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->$VALUES:[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    return-object v0
.end method


# virtual methods
.method public final getRatio()F
    .registers 1

    .line 6
    iget p0, p0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->ratio:F

    return p0
.end method

.method public final getTips()Ljava/lang/String;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->tips:Ljava/lang/String;

    return-object p0
.end method
