.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityVfiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

.field public static final enum IMAGE_QUALITY_VFI_TYPE_COVER:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

.field public static final enum IMAGE_QUALITY_VFI_TYPE_UM:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1155
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    const-string v1, "IMAGE_QUALITY_VFI_TYPE_UM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->IMAGE_QUALITY_VFI_TYPE_UM:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    .line 1156
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    const-string v2, "IMAGE_QUALITY_VFI_TYPE_COVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->IMAGE_QUALITY_VFI_TYPE_COVER:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    .line 1154
    filled-new-array {v0, v1}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1159
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;
    .registers 2

    .line 1154
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;
    .registers 1

    .line 1154
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1162
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->value:I

    return p0
.end method
