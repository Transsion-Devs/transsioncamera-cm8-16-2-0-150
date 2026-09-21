.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityVidaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_AES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_Clarity:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_Coherence:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_FACE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

.field public static final enum VIDA_TYPE_Similar:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1188
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    const-string v1, "VIDA_TYPE_FACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->VIDA_TYPE_FACE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    .line 1189
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    const-string v2, "VIDA_TYPE_AES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->VIDA_TYPE_AES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    .line 1190
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    const-string v3, "VIDA_TYPE_Similar"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->VIDA_TYPE_Similar:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    .line 1191
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    const-string v4, "VIDA_TYPE_Coherence"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->VIDA_TYPE_Coherence:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    .line 1192
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    const-string v5, "VIDA_TYPE_Clarity"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->VIDA_TYPE_Clarity:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    .line 1187
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1197
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;
    .registers 2

    .line 1187
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;
    .registers 1

    .line 1187
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 1201
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQualityVidaType;->type:I

    return p0
.end method
