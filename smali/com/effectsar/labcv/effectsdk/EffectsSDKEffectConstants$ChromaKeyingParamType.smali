.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChromaKeyingParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BALP:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BG_B:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BG_G:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BG_R:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_CAL_COLOR:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_GET_MASK:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_KALP:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_METHOD:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_SHARPEN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_SMOOTH:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1383
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v1, "BEF_AI_CHROMA_KEYING_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_METHOD:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1386
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v2, "BEF_AI_CHROMA_KEYING_CAL_COLOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_CAL_COLOR:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1390
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v3, "BEF_AI_CHROMA_KEYING_BG_R"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BG_R:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1391
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v4, "BEF_AI_CHROMA_KEYING_BG_G"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BG_G:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1392
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v5, "BEF_AI_CHROMA_KEYING_BG_B"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BG_B:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1393
    new-instance v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v6, "BEF_AI_CHROMA_KEYING_BALP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BALP:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1396
    new-instance v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v7, "BEF_AI_CHROMA_KEYING_KALP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_KALP:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1397
    new-instance v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v8, "BEF_AI_CHROMA_KEYING_SMOOTH"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_SMOOTH:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1401
    new-instance v8, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v9, "BEF_AI_CHROMA_KEYING_SHARPEN"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_SHARPEN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1404
    new-instance v9, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    const-string v10, "BEF_AI_CHROMA_KEYING_GET_MASK"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_GET_MASK:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    .line 1382
    filled-new-array/range {v0 .. v9}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1414
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;
    .registers 2

    .line 1382
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;
    .registers 1

    .line 1382
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1410
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChromaKeyingParamType;->value:I

    return p0
.end method
