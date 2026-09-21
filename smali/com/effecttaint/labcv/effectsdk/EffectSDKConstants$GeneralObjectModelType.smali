.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeneralObjectModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_CLS_NAME:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_CLS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_TRACK:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_PURE_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 839
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    const-string v1, "BEF_AI_GENERAL_OBJECT_PURE_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_PURE_DETECT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    .line 840
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    const-string v2, "BEF_AI_GENERAL_OBJECT_DETECT_CLS"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_DETECT_CLS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    .line 841
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    const-string v3, "BEF_AI_GENERAL_OBJECT_CLS_NAME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_CLS_NAME:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    .line 842
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    const-string v4, "BEF_AI_GENERAL_OBJECT_DETECT_TRACK"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_DETECT_TRACK:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    .line 838
    filled-new-array {v0, v1, v2, v3}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 845
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 846
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;
    .registers 2

    .line 838
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;
    .registers 1

    .line 838
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 850
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$GeneralObjectModelType;->value:I

    return p0
.end method
