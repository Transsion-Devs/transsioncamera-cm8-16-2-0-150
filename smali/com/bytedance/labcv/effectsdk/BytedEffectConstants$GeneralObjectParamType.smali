.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeneralObjectParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_SHORT_SIDE_LEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 856
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BEF_AI_GENERAL_OBJECT_DETECT_SHORT_SIDE_LEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;->BEF_AI_GENERAL_OBJECT_DETECT_SHORT_SIDE_LEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    .line 855
    filled-new-array {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 860
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 861
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;
    .registers 2

    .line 855
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;
    .registers 1

    .line 855
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 865
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectParamType;->value:I

    return p0
.end method
