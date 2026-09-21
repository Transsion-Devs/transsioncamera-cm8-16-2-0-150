.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "C2ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

.field public static final enum BEF_AI_C2_USE_MultiLabels:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

.field public static final enum BEF_AI_C2_USE_VIDEO_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 941
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    const-string v1, "BEF_AI_C2_USE_VIDEO_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->BEF_AI_C2_USE_VIDEO_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    .line 942
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    const-string v2, "BEF_AI_C2_USE_MultiLabels"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->BEF_AI_C2_USE_MultiLabels:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    .line 940
    filled-new-array {v0, v1}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 949
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 950
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;
    .registers 2

    .line 940
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;
    .registers 1

    .line 940
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 946
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$C2ParamType;->value:I

    return p0
.end method
