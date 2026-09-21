.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "C1ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

.field public static final enum BEF_AI_C1_MODEL_LARGE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

.field public static final enum BEF_AI_C1_MODEL_SMALL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 935
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    const-string v1, "BEF_AI_C1_MODEL_SMALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->BEF_AI_C1_MODEL_SMALL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    .line 936
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    const-string v2, "BEF_AI_C1_MODEL_LARGE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->BEF_AI_C1_MODEL_LARGE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    .line 934
    filled-new-array {v0, v1}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 938
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 939
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;
    .registers 2

    .line 934
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;
    .registers 1

    .line 934
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 943
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$C1ModelType;->value:I

    return p0
.end method
