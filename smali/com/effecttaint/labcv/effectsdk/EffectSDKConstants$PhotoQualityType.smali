.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoQualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

.field public static final enum PHOTO_QUALITY_TYPE_NIGNT_SCENE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

.field public static final enum PHOTO_QUALITY_TYPE_NONE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1090
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    const-string v1, "PHOTO_QUALITY_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;->PHOTO_QUALITY_TYPE_NONE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    .line 1091
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    const-string v2, "PHOTO_QUALITY_TYPE_NIGNT_SCENE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;->PHOTO_QUALITY_TYPE_NIGNT_SCENE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    .line 1089
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1089
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;
    .registers 2

    .line 1089
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;
    .registers 1

    .line 1089
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PhotoQualityType;

    return-object v0
.end method
