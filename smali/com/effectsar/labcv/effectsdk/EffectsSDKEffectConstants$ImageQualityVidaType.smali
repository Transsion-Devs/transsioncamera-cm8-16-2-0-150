.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityVidaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_AES:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_Clarity:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_Coherence:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_FACE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_Similar:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1223
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    const-string v1, "VIDA_TYPE_FACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->VIDA_TYPE_FACE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    .line 1224
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    const-string v2, "VIDA_TYPE_AES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->VIDA_TYPE_AES:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    .line 1225
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    const-string v3, "VIDA_TYPE_Similar"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->VIDA_TYPE_Similar:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    .line 1226
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    const-string v4, "VIDA_TYPE_Coherence"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->VIDA_TYPE_Coherence:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    .line 1227
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    const-string v5, "VIDA_TYPE_Clarity"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->VIDA_TYPE_Clarity:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    .line 1222
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1232
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;
    .registers 2

    .line 1222
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;
    .registers 1

    .line 1222
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 1236
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVidaType;->type:I

    return p0
.end method
