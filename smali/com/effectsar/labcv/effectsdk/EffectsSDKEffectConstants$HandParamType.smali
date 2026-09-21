.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_AUTO_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_LOW_POWER_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_MAX_TEST_FRAME:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_TIME_ELAPSED_THRESHOLD:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_CLS_SMOOTH_FACTOR:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_DETECT_MIN_SIDE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_IS_USE_DOUBLE_GESTURE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_MAX_HAND_NUM:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_NARUTO_GESTUER:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HAND_USE_ACTION_SMOOTH:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

.field public static final enum BEF_HNAD_ENLARGE_FACTOR_REG:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 608
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v1, "BEF_HAND_MAX_HAND_NUM"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_MAX_HAND_NUM:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 613
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v2, "BEF_HAND_DETECT_MIN_SIDE"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_DETECT_MIN_SIDE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 619
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v4, "BEF_HAND_CLS_SMOOTH_FACTOR"

    const/4 v6, 0x4

    invoke-direct {v2, v4, v3, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_CLS_SMOOTH_FACTOR:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 624
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v4, "BEF_HAND_USE_ACTION_SMOOTH"

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v7}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_USE_ACTION_SMOOTH:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 630
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v5, "BEF_HAND_ALGO_LOW_POWER_MODE"

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v8}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_ALGO_LOW_POWER_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 638
    new-instance v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v6, "BEF_HAND_ALGO_AUTO_MODE"

    const/4 v9, 0x7

    invoke-direct {v5, v6, v7, v9}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_ALGO_AUTO_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 643
    new-instance v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v7, "BEF_HAND_ALGO_TIME_ELAPSED_THRESHOLD"

    const/16 v10, 0x8

    invoke-direct {v6, v7, v8, v10}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_ALGO_TIME_ELAPSED_THRESHOLD:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 649
    new-instance v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v8, "BEF_HAND_ALGO_MAX_TEST_FRAME"

    const/16 v11, 0x9

    invoke-direct {v7, v8, v9, v11}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_ALGO_MAX_TEST_FRAME:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 654
    new-instance v8, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v9, "BEF_HAND_IS_USE_DOUBLE_GESTURE"

    const/16 v12, 0xa

    invoke-direct {v8, v9, v10, v12}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_IS_USE_DOUBLE_GESTURE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 659
    new-instance v9, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v10, "BEF_HNAD_ENLARGE_FACTOR_REG"

    const/16 v13, 0xb

    invoke-direct {v9, v10, v11, v13}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HNAD_ENLARGE_FACTOR_REG:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 666
    new-instance v10, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    const-string v11, "BEF_HAND_NARUTO_GESTUER"

    const/16 v13, 0xc

    invoke-direct {v10, v11, v12, v13}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->BEF_HAND_NARUTO_GESTUER:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    .line 603
    filled-new-array/range {v0 .. v10}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 671
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 672
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;
    .registers 2

    .line 603
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;
    .registers 1

    .line 603
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 676
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->value:I

    return p0
.end method
