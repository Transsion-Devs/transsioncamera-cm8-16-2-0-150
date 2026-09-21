.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_BOX_REG:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_DETECT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_GESTURE_CLS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_KEY_POINT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 420
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    const-string v1, "BEF_HAND_MODEL_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->BEF_HAND_MODEL_DETECT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    .line 425
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    const-string v2, "BEF_HAND_MODEL_BOX_REG"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->BEF_HAND_MODEL_BOX_REG:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    .line 430
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    const-string v3, "BEF_HAND_MODEL_GESTURE_CLS"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->BEF_HAND_MODEL_GESTURE_CLS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    .line 435
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "BEF_HAND_MODEL_KEY_POINT"

    invoke-direct {v3, v6, v4, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->BEF_HAND_MODEL_KEY_POINT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    .line 415
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 439
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;
    .registers 2

    .line 415
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;
    .registers 1

    .line 415
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 443
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->value:I

    return p0
.end method
