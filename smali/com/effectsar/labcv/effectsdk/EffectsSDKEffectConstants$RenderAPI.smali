.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderAPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

.field public static final enum GLES20:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

.field public static final enum GLES30:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 39
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    const-string v1, "GLES20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->GLES20:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    .line 40
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    const-string v2, "GLES30"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->GLES30:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    .line 38
    filled-new-array {v0, v1}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;
    .registers 2

    .line 38
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;
    .registers 1

    .line 38
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$RenderAPI;->value:I

    return p0
.end method
