.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQulityPowerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_AUTO:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_DEFAULT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_HIGH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_LOW:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

.field public static final enum POWER_LEVEL_NORMAL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;


# instance fields
.field private final level:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1164
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    const-string v1, "POWER_LEVEL_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_DEFAULT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    .line 1165
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    const-string v2, "POWER_LEVEL_LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_LOW:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    .line 1166
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    const-string v3, "POWER_LEVEL_NORMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_NORMAL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    .line 1167
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    const-string v4, "POWER_LEVEL_HIGH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_HIGH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    .line 1168
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    const-string v5, "POWER_LEVEL_AUTO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->POWER_LEVEL_AUTO:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    .line 1163
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1173
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;
    .registers 2

    .line 1163
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;
    .registers 1

    .line 1163
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 1

    .line 1177
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->level:I

    return p0
.end method
