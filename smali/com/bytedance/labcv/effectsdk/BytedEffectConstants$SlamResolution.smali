.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_180P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_360P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_480P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_720P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1402
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v1, "BEF_AI_SLAM_480P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_480P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1403
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v2, "BEF_AI_SLAM_720P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_720P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1404
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v3, "BEF_AI_SLAM_360P"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_360P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1405
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v4, "BEF_AI_SLAM_180P"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_180P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1401
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1411
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;
    .registers 2

    .line 1401
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;
    .registers 1

    .line 1401
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1408
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->value:I

    return p0
.end method
