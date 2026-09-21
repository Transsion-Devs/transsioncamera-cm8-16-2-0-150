.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamAccuracyLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

.field public static final enum BEF_AI_SLAM_High_Accuracy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

.field public static final enum BEF_AI_SLAM_Low_Accuracy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

.field public static final enum BEF_AI_SLAM_Medium_Accuracy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1389
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    const-string v1, "BEF_AI_SLAM_High_Accuracy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->BEF_AI_SLAM_High_Accuracy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    .line 1390
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    const-string v2, "BEF_AI_SLAM_Medium_Accuracy"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->BEF_AI_SLAM_Medium_Accuracy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    .line 1391
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    const-string v3, "BEF_AI_SLAM_Low_Accuracy"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->BEF_AI_SLAM_Low_Accuracy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    .line 1388
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1396
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1397
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;
    .registers 2

    .line 1388
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;
    .registers 1

    .line 1388
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1394
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamAccuracyLevel;->value:I

    return p0
.end method
