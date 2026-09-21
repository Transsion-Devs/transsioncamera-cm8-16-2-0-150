.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LensVideoAlgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

.field public static final enum SR_A_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

.field public static final enum SR_G_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

.field public static final enum SR_N_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

.field public static final enum SR_R15_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

.field public static final enum SR_R_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

.field public static final enum SR_U_UNKNOW:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1546
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    const-string v1, "SR_R_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->SR_R_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    .line 1547
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    const-string v2, "SR_A_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->SR_A_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    .line 1548
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    const-string v3, "SR_G_TYPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->SR_G_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    .line 1549
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    const-string v4, "SR_N_TYPE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->SR_N_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    .line 1550
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    const-string v5, "SR_R15_TYPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->SR_R15_TYPE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    .line 1551
    new-instance v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    const-string v6, "SR_U_UNKNOW"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->SR_U_UNKNOW:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    .line 1545
    filled-new-array/range {v0 .. v5}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1557
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1558
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;
    .registers 2

    .line 1545
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;
    .registers 1

    .line 1545
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1554
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->value:I

    return p0
.end method
