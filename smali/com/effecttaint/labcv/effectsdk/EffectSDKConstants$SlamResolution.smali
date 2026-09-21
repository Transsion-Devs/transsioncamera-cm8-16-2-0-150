.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_180P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_360P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_480P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_720P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1426
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    const-string v1, "BEF_AI_SLAM_480P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->BEF_AI_SLAM_480P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    .line 1427
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    const-string v2, "BEF_AI_SLAM_720P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->BEF_AI_SLAM_720P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    .line 1428
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    const-string v3, "BEF_AI_SLAM_360P"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->BEF_AI_SLAM_360P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    .line 1429
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    const-string v4, "BEF_AI_SLAM_180P"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->BEF_AI_SLAM_180P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    .line 1425
    filled-new-array {v0, v1, v2, v3}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1435
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;
    .registers 2

    .line 1425
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;
    .registers 1

    .line 1425
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1432
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$SlamResolution;->value:I

    return p0
.end method
