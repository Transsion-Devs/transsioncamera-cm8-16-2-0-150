.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

.field public static final enum BEF_AI_SLAM_Debug:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

.field public static final enum BEF_AI_SLAM_HorizontalPlaneTracking:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

.field public static final enum BEF_AI_SLAM_RegionTracking:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1444
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    const-string v1, "BEF_AI_SLAM_Debug"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->BEF_AI_SLAM_Debug:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    .line 1445
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    const-string v2, "BEF_AI_SLAM_HorizontalPlaneTracking"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->BEF_AI_SLAM_HorizontalPlaneTracking:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    .line 1446
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    const-string v3, "BEF_AI_SLAM_RegionTracking"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->BEF_AI_SLAM_RegionTracking:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    .line 1443
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1451
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1452
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;
    .registers 2

    .line 1443
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;
    .registers 1

    .line 1443
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1449
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->value:I

    return p0
.end method
