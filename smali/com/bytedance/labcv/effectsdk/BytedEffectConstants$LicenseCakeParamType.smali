.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LicenseCakeParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_INTERVAL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_REGRESSOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_TRACKER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_SIDE_MODEL_LEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1274
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    const-string v1, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_INTERVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_INTERVAL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    .line 1275
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    const-string v2, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_SIDE_MODEL_LEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_SIDE_MODEL_LEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    .line 1276
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    const-string v3, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_REGRESSOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_REGRESSOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    .line 1277
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    const-string v4, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_TRACKER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_TRACKER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    .line 1273
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1285
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;
    .registers 2

    .line 1273
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;
    .registers 1

    .line 1273
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1281
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LicenseCakeParamType;->value:I

    return p0
.end method
