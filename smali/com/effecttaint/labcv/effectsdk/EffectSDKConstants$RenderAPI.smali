.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderAPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

.field public static final enum GLES20:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

.field public static final enum GLES30:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 39
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    const-string v1, "GLES20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->GLES20:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    .line 40
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    const-string v2, "GLES30"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->GLES30:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    .line 38
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

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
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;
    .registers 2

    .line 38
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;
    .registers 1

    .line 38
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$RenderAPI;->value:I

    return p0
.end method
