.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HumanDistanceParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

.field public static final enum BEF_HumanDistanceCameraFov:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

.field public static final enum BEF_HumanDistanceEdgeMode:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 713
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    const-string v1, "BEF_HumanDistanceEdgeMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->BEF_HumanDistanceEdgeMode:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    .line 714
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    const-string v2, "BEF_HumanDistanceCameraFov"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->BEF_HumanDistanceCameraFov:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    .line 712
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 719
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;
    .registers 2

    .line 712
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;
    .registers 1

    .line 712
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 723
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HumanDistanceParamType;->value:I

    return p0
.end method
