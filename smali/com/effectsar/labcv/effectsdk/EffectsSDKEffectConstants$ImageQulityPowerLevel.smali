.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQulityPowerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_AUTO:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_DEFAULT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_HIGH:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_LOW:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_NORMAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;


# instance fields
.field private final level:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1205
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    const-string v1, "POWER_LEVEL_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_DEFAULT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    .line 1206
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    const-string v2, "POWER_LEVEL_LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_LOW:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    .line 1207
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    const-string v3, "POWER_LEVEL_NORMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_NORMAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    .line 1208
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    const-string v4, "POWER_LEVEL_HIGH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_HIGH:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    .line 1209
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    const-string v5, "POWER_LEVEL_AUTO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_AUTO:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    .line 1204
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1214
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;
    .registers 2

    .line 1204
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;
    .registers 1

    .line 1204
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 1

    .line 1218
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->level:I

    return p0
.end method
