.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HumanDistanceParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

.field public static final enum BEF_HumanDistanceCameraFov:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

.field public static final enum BEF_HumanDistanceEdgeMode:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 748
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    const-string v1, "BEF_HumanDistanceEdgeMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->BEF_HumanDistanceEdgeMode:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    .line 749
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    const-string v2, "BEF_HumanDistanceCameraFov"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->BEF_HumanDistanceCameraFov:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    .line 747
    filled-new-array {v0, v1}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 753
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 754
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;
    .registers 2

    .line 747
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;
    .registers 1

    .line 747
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 758
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceParamType;->value:I

    return p0
.end method
