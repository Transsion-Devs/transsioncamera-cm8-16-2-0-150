.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeneralObjectModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_CLS_NAME:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_CLS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_TRACK:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_PURE_DETECT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 874
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    const-string v1, "BEF_AI_GENERAL_OBJECT_PURE_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_PURE_DETECT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    .line 875
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    const-string v2, "BEF_AI_GENERAL_OBJECT_DETECT_CLS"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_DETECT_CLS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    .line 876
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    const-string v3, "BEF_AI_GENERAL_OBJECT_CLS_NAME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_CLS_NAME:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    .line 877
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    const-string v4, "BEF_AI_GENERAL_OBJECT_DETECT_TRACK"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_DETECT_TRACK:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    .line 873
    filled-new-array {v0, v1, v2, v3}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 880
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 881
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;
    .registers 2

    .line 873
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;
    .registers 1

    .line 873
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 885
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GeneralObjectModelType;->value:I

    return p0
.end method
