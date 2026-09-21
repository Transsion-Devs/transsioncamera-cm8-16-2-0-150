.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamAccuracyLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

.field public static final enum BEF_AI_SLAM_High_Accuracy:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

.field public static final enum BEF_AI_SLAM_Low_Accuracy:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

.field public static final enum BEF_AI_SLAM_Medium_Accuracy:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1413
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    const-string v1, "BEF_AI_SLAM_High_Accuracy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->BEF_AI_SLAM_High_Accuracy:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    .line 1414
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    const-string v2, "BEF_AI_SLAM_Medium_Accuracy"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->BEF_AI_SLAM_Medium_Accuracy:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    .line 1415
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    const-string v3, "BEF_AI_SLAM_Low_Accuracy"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->BEF_AI_SLAM_Low_Accuracy:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    .line 1412
    filled-new-array {v0, v1, v2}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1421
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;
    .registers 2

    .line 1412
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;
    .registers 1

    .line 1412
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1418
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamAccuracyLevel;->value:I

    return p0
.end method
