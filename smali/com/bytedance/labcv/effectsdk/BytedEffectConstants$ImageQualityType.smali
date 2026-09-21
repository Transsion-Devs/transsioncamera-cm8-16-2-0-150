.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_NIGHT_SCENE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_VIDEO_SR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1077
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v1, "IMAGE_QUALITY_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1078
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v2, "IMAGE_QUALITY_TYPE_VIDEO_SR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_VIDEO_SR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1079
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v3, "IMAGE_QUALITY_TYPE_NIGHT_SCENE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_NIGHT_SCENE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1080
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v4, "IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1081
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v5, "IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1076
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1076
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;
    .registers 2

    .line 1076
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;
    .registers 1

    .line 1076
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    return-object v0
.end method
