.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_BREATH_V10:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_HEART_BEAT_V9:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_ROT360_V11:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_SNAKE_V8:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_NIGHT_SCENE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_NONE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_TAINT_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_VIDAS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_VIDEO_SR:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1076
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v1, "IMAGE_QUALITY_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_NONE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1077
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v2, "IMAGE_QUALITY_TYPE_VIDEO_SR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_VIDEO_SR:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1078
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v3, "IMAGE_QUALITY_TYPE_NIGHT_SCENE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_NIGHT_SCENE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1079
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v4, "IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1080
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v5, "IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1081
    new-instance v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v6, "IMAGE_QUALITY_TYPE_VIDAS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_VIDAS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1082
    new-instance v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v7, "IMAGE_QUALITY_TYPE_TAINT_DETECT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_TAINT_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1083
    new-instance v7, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v8, "IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_SNAKE_V8"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_SNAKE_V8:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1084
    new-instance v8, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v9, "IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_HEART_BEAT_V9"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_HEART_BEAT_V9:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1085
    new-instance v9, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v10, "IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_BREATH_V10"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_BREATH_V10:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1086
    new-instance v10, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    const-string v11, "IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_ROT360_V11"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_CINE_MOVE_ALG_ROT360_V11:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    .line 1075
    filled-new-array/range {v0 .. v10}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1075
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;
    .registers 2

    .line 1075
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;
    .registers 1

    .line 1075
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityType;

    return-object v0
.end method
