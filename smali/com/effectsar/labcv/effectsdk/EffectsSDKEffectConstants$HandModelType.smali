.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_BOX_REG:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_DETECT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_GESTURE_CLS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_KEY_POINT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 454
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    const-string v1, "BEF_HAND_MODEL_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->BEF_HAND_MODEL_DETECT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    .line 459
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    const-string v2, "BEF_HAND_MODEL_BOX_REG"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->BEF_HAND_MODEL_BOX_REG:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    .line 464
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    const-string v3, "BEF_HAND_MODEL_GESTURE_CLS"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->BEF_HAND_MODEL_GESTURE_CLS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    .line 469
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "BEF_HAND_MODEL_KEY_POINT"

    invoke-direct {v3, v6, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->BEF_HAND_MODEL_KEY_POINT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    .line 449
    filled-new-array {v0, v1, v2, v3}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 473
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;
    .registers 2

    .line 449
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;
    .registers 1

    .line 449
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 477
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->value:I

    return p0
.end method
