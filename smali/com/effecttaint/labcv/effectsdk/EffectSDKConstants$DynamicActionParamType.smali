.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicActionParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MAX_PERSON_NUM:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_REFRESH_FRAME_INTERVAL:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 885
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    const-string v1, "BEF_AI_DYNAMIC_ACTION_REFRESH_FRAME_INTERVAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->BEF_AI_DYNAMIC_ACTION_REFRESH_FRAME_INTERVAL:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    .line 886
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    const-string v2, "BEF_AI_DYNAMIC_ACTION_MAX_PERSON_NUM"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->BEF_AI_DYNAMIC_ACTION_MAX_PERSON_NUM:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    .line 884
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 890
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 891
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;
    .registers 2

    .line 884
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;
    .registers 1

    .line 884
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 895
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$DynamicActionParamType;->value:I

    return p0
.end method
