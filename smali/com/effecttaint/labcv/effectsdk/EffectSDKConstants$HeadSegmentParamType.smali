.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadSegmentParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

.field public static final enum BEF_AI_HS_ENABLE_TRACKING:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

.field public static final enum BEF_AI_HS_MAX_FACE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 703
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    const-string v1, "BEF_AI_HS_ENABLE_TRACKING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->BEF_AI_HS_ENABLE_TRACKING:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    .line 704
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    const-string v2, "BEF_AI_HS_MAX_FACE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->BEF_AI_HS_MAX_FACE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    .line 702
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 708
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;
    .registers 2

    .line 702
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;
    .registers 1

    .line 702
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 709
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HeadSegmentParamType;->value:I

    return p0
.end method
