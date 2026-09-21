.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChildrenModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

.field public static final enum BEF_CHILDREN_MODEL_FACEATTRI:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

.field public static final enum BEF_CHILDREN_MODEL_HALFBODY:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 432
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "BEF_CHILDREN_MODEL_FACEATTRI"

    invoke-direct {v0, v3, v1, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->BEF_CHILDREN_MODEL_FACEATTRI:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    .line 434
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "BEF_CHILDREN_MODEL_HALFBODY"

    invoke-direct {v1, v4, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->BEF_CHILDREN_MODEL_HALFBODY:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    .line 427
    filled-new-array {v0, v1}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 438
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;
    .registers 2

    .line 427
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;
    .registers 1

    .line 427
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 442
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->value:I

    return p0
.end method
