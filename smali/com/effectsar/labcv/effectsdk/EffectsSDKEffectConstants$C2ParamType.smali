.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "C2ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

.field public static final enum BEF_AI_C2_USE_MultiLabels:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

.field public static final enum BEF_AI_C2_USE_VIDEO_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 975
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    const-string v1, "BEF_AI_C2_USE_VIDEO_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->BEF_AI_C2_USE_VIDEO_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    .line 976
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    const-string v2, "BEF_AI_C2_USE_MultiLabels"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->BEF_AI_C2_USE_MultiLabels:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    .line 974
    filled-new-array {v0, v1}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 983
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 984
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;
    .registers 2

    .line 974
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;
    .registers 1

    .line 974
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 980
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C2ParamType;->value:I

    return p0
.end method
