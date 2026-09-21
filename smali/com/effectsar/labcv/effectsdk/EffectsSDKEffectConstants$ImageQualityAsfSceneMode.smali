.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityAsfSceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_EDIT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_GAME:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_PEOPLE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_RECORED_FRONT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_RECORED_MAIN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1241
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    const-string v1, "ASF_SCENE_MODE_LIVE_GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_GAME:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    .line 1242
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    const-string v2, "ASF_SCENE_MODE_LIVE_PEOPLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_PEOPLE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    .line 1243
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    const-string v3, "ASF_SCENE_MODE_LIVE_EDIT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_EDIT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    .line 1244
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    const-string v4, "ASF_SCENE_MODE_LIVE_RECORED_MAIN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_RECORED_MAIN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    .line 1245
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    const-string v5, "ASF_SCENE_MODE_LIVE_RECORED_FRONT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_RECORED_FRONT:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    .line 1240
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1251
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;
    .registers 2

    .line 1240
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;
    .registers 1

    .line 1240
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .registers 1

    .line 1255
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityAsfSceneMode;->mode:I

    return p0
.end method
