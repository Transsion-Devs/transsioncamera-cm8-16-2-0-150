.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityVfiDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

.field public static final enum IMAGE_QUALITY_VFI_DATA_TYPE_BUFFER_RGBA8888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

.field public static final enum IMAGE_QUALITY_VFI_DATA_TYPE_TEXTURE_RGBA8:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1108
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    const-string v1, "IMAGE_QUALITY_VFI_DATA_TYPE_BUFFER_RGBA8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->IMAGE_QUALITY_VFI_DATA_TYPE_BUFFER_RGBA8888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    .line 1109
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    const-string v2, "IMAGE_QUALITY_VFI_DATA_TYPE_TEXTURE_RGBA8"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->IMAGE_QUALITY_VFI_DATA_TYPE_TEXTURE_RGBA8:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    .line 1107
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1112
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;
    .registers 2

    .line 1107
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;
    .registers 1

    .line 1107
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1115
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVfiDataType;->value:I

    return p0
.end method
