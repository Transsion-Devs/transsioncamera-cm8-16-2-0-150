.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LicenseCakeParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_REGRESSOR:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_TRACKER:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

.field public static final enum ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_SIDE_MODEL_LEN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1333
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    const-string v1, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_INTERVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    .line 1334
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    const-string v2, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_SIDE_MODEL_LEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_SIDE_MODEL_LEN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    .line 1335
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    const-string v3, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_REGRESSOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_REGRESSOR:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    .line 1336
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    const-string v4, "ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_TRACKER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->ALGORITHM_PARAMS_KEY_LICENSEFACE_DEDETECTION_DETECT_USE_TRACKER:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    .line 1332
    filled-new-array {v0, v1, v2, v3}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1344
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;
    .registers 2

    .line 1332
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;
    .registers 1

    .line 1332
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1340
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LicenseCakeParamType;->value:I

    return p0
.end method
