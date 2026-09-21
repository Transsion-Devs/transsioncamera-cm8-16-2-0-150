.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HumanDistanceModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

.field public static final enum BEF_HUMAN_DISTANCE_MODEL1:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 860
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BEF_HUMAN_DISTANCE_MODEL1"

    invoke-direct {v0, v3, v1, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;->BEF_HUMAN_DISTANCE_MODEL1:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    .line 859
    filled-new-array {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 864
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 865
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;
    .registers 2

    .line 859
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;
    .registers 1

    .line 859
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 869
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HumanDistanceModelType;->value:I

    return p0
.end method
