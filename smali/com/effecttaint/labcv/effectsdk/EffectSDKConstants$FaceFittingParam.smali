.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceFittingParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Config_Cal_TB:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Eyelash_Flag:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Mouth_BS_Limit:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Camera_Type:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Eps:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Lambda:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_MaxIter:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Ratio:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Smooth:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Use_Semantic_Lmk:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1482
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v1, "BEF_AI_FACEFITTING_Solver_Lambda"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Lambda:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1483
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v2, "BEF_AI_FACEFITTING_Solver_MaxIter"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_MaxIter:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1484
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v3, "BEF_AI_FACEFITTING_Solver_Eps"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Eps:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1485
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v4, "BEF_AI_FACEFITTING_Solver_Ratio"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Ratio:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1486
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v5, "BEF_AI_FACEFITTING_Solver_Smooth"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Smooth:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1487
    new-instance v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v6, "BEF_AI_FACEFITTING_Solver_Camera_Type"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Camera_Type:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1488
    new-instance v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v7, "BEF_AI_FACEFITTING_Config_Cal_TB"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Config_Cal_TB:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1489
    new-instance v7, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v8, "BEF_AI_FACEFITTING_Eyelash_Flag"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Eyelash_Flag:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1490
    new-instance v8, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v9, "BEF_AI_FACEFITTING_Use_Semantic_Lmk"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Use_Semantic_Lmk:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1491
    new-instance v9, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    const-string v10, "BEF_AI_FACEFITTING_Mouth_BS_Limit"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Mouth_BS_Limit:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    .line 1481
    filled-new-array/range {v0 .. v9}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1496
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;
    .registers 2

    .line 1481
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;
    .registers 1

    .line 1481
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1494
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingParam;->value:I

    return p0
.end method
