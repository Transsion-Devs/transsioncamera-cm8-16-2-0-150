.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LensVideoAlgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

.field public static final enum SR_A_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

.field public static final enum SR_G_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

.field public static final enum SR_N_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

.field public static final enum SR_R15_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

.field public static final enum SR_R_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

.field public static final enum SR_U_UNKNOW:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1511
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    const-string v1, "SR_R_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->SR_R_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    .line 1512
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    const-string v2, "SR_A_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->SR_A_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    .line 1513
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    const-string v3, "SR_G_TYPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->SR_G_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    .line 1514
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    const-string v4, "SR_N_TYPE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->SR_N_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    .line 1515
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    const-string v5, "SR_R15_TYPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->SR_R15_TYPE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    .line 1516
    new-instance v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    const-string v6, "SR_U_UNKNOW"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->SR_U_UNKNOW:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    .line 1510
    filled-new-array/range {v0 .. v5}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1523
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;
    .registers 2

    .line 1510
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;
    .registers 1

    .line 1510
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1519
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$LensVideoAlgType;->value:I

    return p0
.end method
