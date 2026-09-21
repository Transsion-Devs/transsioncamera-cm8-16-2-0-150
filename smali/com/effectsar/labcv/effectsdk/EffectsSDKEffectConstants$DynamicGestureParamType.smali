.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicGestureParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

.field public static final enum BEF_AI_DYNAMIC_GESTURE_FRAMES_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

.field public static final enum BEF_AI_DYNAMIC_GESTURE_MODEL_GESTURE_CLS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

.field public static final enum BEF_AI_DYNAMIC_GESTURE_NUM_REQ_FRAMES:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

.field public static final enum BEF_AI_DYNGEST_REFRESH_FRAME_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1317
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    const-string v1, "BEF_AI_DYNGEST_REFRESH_FRAME_INTERVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->BEF_AI_DYNGEST_REFRESH_FRAME_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    .line 1318
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    const-string v2, "BEF_AI_DYNAMIC_GESTURE_NUM_REQ_FRAMES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->BEF_AI_DYNAMIC_GESTURE_NUM_REQ_FRAMES:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    .line 1319
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    const-string v3, "BEF_AI_DYNAMIC_GESTURE_FRAMES_INTERVAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->BEF_AI_DYNAMIC_GESTURE_FRAMES_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    .line 1320
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    const-string v4, "BEF_AI_DYNAMIC_GESTURE_MODEL_GESTURE_CLS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->BEF_AI_DYNAMIC_GESTURE_MODEL_GESTURE_CLS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    .line 1316
    filled-new-array {v0, v1, v2, v3}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1328
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;
    .registers 2

    .line 1316
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;
    .registers 1

    .line 1316
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1324
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicGestureParamType;->value:I

    return p0
.end method
