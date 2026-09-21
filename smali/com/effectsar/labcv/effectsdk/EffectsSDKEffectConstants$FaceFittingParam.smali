.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceFittingParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Config_Cal_TB:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Eyelash_Flag:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Mouth_BS_Limit:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Camera_Type:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Eps:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Lambda:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_MaxIter:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Ratio:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Smooth:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Use_Semantic_Lmk:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1517
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v1, "BEF_AI_FACEFITTING_Solver_Lambda"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Lambda:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1518
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v2, "BEF_AI_FACEFITTING_Solver_MaxIter"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_MaxIter:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1519
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v3, "BEF_AI_FACEFITTING_Solver_Eps"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Eps:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1520
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v4, "BEF_AI_FACEFITTING_Solver_Ratio"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Ratio:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1521
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v5, "BEF_AI_FACEFITTING_Solver_Smooth"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Smooth:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1522
    new-instance v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v6, "BEF_AI_FACEFITTING_Solver_Camera_Type"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Camera_Type:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1523
    new-instance v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v7, "BEF_AI_FACEFITTING_Config_Cal_TB"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Config_Cal_TB:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1524
    new-instance v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v8, "BEF_AI_FACEFITTING_Eyelash_Flag"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Eyelash_Flag:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1525
    new-instance v8, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v9, "BEF_AI_FACEFITTING_Use_Semantic_Lmk"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Use_Semantic_Lmk:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1526
    new-instance v9, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    const-string v10, "BEF_AI_FACEFITTING_Mouth_BS_Limit"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Mouth_BS_Limit:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    .line 1516
    filled-new-array/range {v0 .. v9}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1531
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;
    .registers 2

    .line 1516
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;
    .registers 1

    .line 1516
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1529
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceFittingParam;->value:I

    return p0
.end method
