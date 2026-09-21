.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_BOX_REG:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_GESTURE_CLS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

.field public static final enum BEF_HAND_MODEL_KEY_POINT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 419
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    const-string v1, "BEF_HAND_MODEL_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->BEF_HAND_MODEL_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    .line 424
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    const-string v2, "BEF_HAND_MODEL_BOX_REG"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->BEF_HAND_MODEL_BOX_REG:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    .line 429
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    const-string v3, "BEF_HAND_MODEL_GESTURE_CLS"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->BEF_HAND_MODEL_GESTURE_CLS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    .line 434
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "BEF_HAND_MODEL_KEY_POINT"

    invoke-direct {v3, v6, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->BEF_HAND_MODEL_KEY_POINT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    .line 414
    filled-new-array {v0, v1, v2, v3}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 438
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;
    .registers 2

    .line 414
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;
    .registers 1

    .line 414
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 442
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$HandModelType;->value:I

    return p0
.end method
