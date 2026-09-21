.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

.field public static final enum BEF_AI_SLAM_Debug:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

.field public static final enum BEF_AI_SLAM_HorizontalPlaneTracking:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

.field public static final enum BEF_AI_SLAM_RegionTracking:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1468
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    const-string v1, "BEF_AI_SLAM_Debug"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->BEF_AI_SLAM_Debug:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    .line 1469
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    const-string v2, "BEF_AI_SLAM_HorizontalPlaneTracking"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->BEF_AI_SLAM_HorizontalPlaneTracking:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    .line 1470
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    const-string v3, "BEF_AI_SLAM_RegionTracking"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->BEF_AI_SLAM_RegionTracking:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    .line 1467
    filled-new-array {v0, v1, v2}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1475
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1476
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;
    .registers 2

    .line 1467
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;
    .registers 1

    .line 1467
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1473
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamVersion;->value:I

    return p0
.end method
