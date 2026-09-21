.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicActionModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MODEL_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MODEL_DYNAMIC_ACTION:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MODEL_SK:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 869
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    const-string v1, "BEF_AI_DYNAMIC_ACTION_MODEL_SK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->BEF_AI_DYNAMIC_ACTION_MODEL_SK:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    .line 870
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    const-string v2, "BEF_AI_DYNAMIC_ACTION_MODEL_DETECT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->BEF_AI_DYNAMIC_ACTION_MODEL_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    .line 871
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    const-string v3, "BEF_AI_DYNAMIC_ACTION_MODEL_DYNAMIC_ACTION"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->BEF_AI_DYNAMIC_ACTION_MODEL_DYNAMIC_ACTION:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    .line 868
    filled-new-array {v0, v1, v2}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 875
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 876
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;
    .registers 2

    .line 868
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;
    .registers 1

    .line 868
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 880
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionModelType;->value:I

    return p0
.end method
