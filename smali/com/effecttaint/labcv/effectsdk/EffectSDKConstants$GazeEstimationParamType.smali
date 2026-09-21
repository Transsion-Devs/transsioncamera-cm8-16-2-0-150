.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GazeEstimationParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_CAMERA_FOV:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_DIVERGENCE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_EDGE_MODE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 980
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    const-string v1, "BEF_GAZE_ESTIMATION_EDGE_MODE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_EDGE_MODE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    .line 981
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    const-string v2, "BEF_GAZE_ESTIMATION_CAMERA_FOV"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_CAMERA_FOV:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    .line 982
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    const-string v3, "BEF_GAZE_ESTIMATION_DIVERGENCE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_DIVERGENCE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    .line 979
    filled-new-array {v0, v1, v2}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 989
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 990
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;
    .registers 2

    .line 979
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;
    .registers 1

    .line 979
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 986
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GazeEstimationParamType;->value:I

    return p0
.end method
