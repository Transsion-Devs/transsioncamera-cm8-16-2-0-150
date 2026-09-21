.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamImageColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

.field public static final enum BEF_AI_SLAM_BGR:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

.field public static final enum BEF_AI_SLAM_GRAY:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

.field public static final enum BEF_AI_SLAM_RGB:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1440
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    const-string v1, "BEF_AI_SLAM_RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->BEF_AI_SLAM_RGB:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    .line 1441
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    const-string v2, "BEF_AI_SLAM_BGR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->BEF_AI_SLAM_BGR:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    .line 1442
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    const-string v3, "BEF_AI_SLAM_GRAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->BEF_AI_SLAM_GRAY:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    .line 1439
    filled-new-array {v0, v1, v2}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1448
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1449
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;
    .registers 2

    .line 1439
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;
    .registers 1

    .line 1439
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1446
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamImageColor;->value:I

    return p0
.end method
