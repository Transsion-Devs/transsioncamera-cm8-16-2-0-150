.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BachSkeletonParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

.field public static final enum BEF_AI_BACH_SKELETON_BODY_MAX_COUNT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

.field public static final enum BEF_AI_BACH_SKELETON_FORCE_DETECT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

.field public static final enum BEF_AI_BACH_SKELETON_IMAGE_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1364
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    const-string v1, "BEF_AI_BACH_SKELETON_BODY_MAX_COUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->BEF_AI_BACH_SKELETON_BODY_MAX_COUNT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    .line 1365
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    const-string v2, "BEF_AI_BACH_SKELETON_FORCE_DETECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->BEF_AI_BACH_SKELETON_FORCE_DETECT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    .line 1368
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    const-string v3, "BEF_AI_BACH_SKELETON_IMAGE_MODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->BEF_AI_BACH_SKELETON_IMAGE_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    .line 1363
    filled-new-array {v0, v1, v2}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1378
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;
    .registers 2

    .line 1363
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;
    .registers 1

    .line 1363
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1374
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$BachSkeletonParamType;->value:I

    return p0
.end method
