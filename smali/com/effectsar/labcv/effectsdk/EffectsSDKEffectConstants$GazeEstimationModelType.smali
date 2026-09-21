.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GazeEstimationModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

.field public static final enum BEF_GAZE_ESTIMATION_MODEL1:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1030
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BEF_GAZE_ESTIMATION_MODEL1"

    invoke-direct {v0, v3, v1, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;->BEF_GAZE_ESTIMATION_MODEL1:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    .line 1029
    filled-new-array {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1033
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1034
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;
    .registers 2

    .line 1029
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;
    .registers 1

    .line 1029
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1038
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GazeEstimationModelType;->value:I

    return p0
.end method
