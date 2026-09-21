.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "C2ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

.field public static final enum BEF_AI_kC2Model1:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 927
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BEF_AI_kC2Model1"

    invoke-direct {v0, v3, v1, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;->BEF_AI_kC2Model1:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    .line 926
    filled-new-array {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 934
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 935
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;
    .registers 2

    .line 926
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;
    .registers 1

    .line 926
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 931
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$C2ModelType;->value:I

    return p0
.end method
