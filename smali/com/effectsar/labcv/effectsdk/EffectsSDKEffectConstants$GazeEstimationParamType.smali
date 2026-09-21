.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GazeEstimationParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_CAMERA_FOV:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_DIVERGENCE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_EDGE_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1015
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    const-string v1, "BEF_GAZE_ESTIMATION_EDGE_MODE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_EDGE_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    .line 1016
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    const-string v2, "BEF_GAZE_ESTIMATION_CAMERA_FOV"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_CAMERA_FOV:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    .line 1017
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    const-string v3, "BEF_GAZE_ESTIMATION_DIVERGENCE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_DIVERGENCE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    .line 1014
    filled-new-array {v0, v1, v2}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1024
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1025
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;
    .registers 2

    .line 1014
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;
    .registers 1

    .line 1014
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1021
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationParamType;->value:I

    return p0
.end method
