.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityOnekeyEnhanceSceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_MOBILE_EDITOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_MOBILE_LIVE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_MOBILE_RECORDE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_MOBILE_RTC:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_PC_EDITOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_PC_LIVE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_PC_RTC:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

.field public static final enum SCENE_MODE_TRANSCODING:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1201
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v1, "SCENE_MODE_MOBILE_EDITOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_MOBILE_EDITOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1202
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v2, "SCENE_MODE_MOBILE_RECORDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_MOBILE_RECORDE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1203
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v3, "SCENE_MODE_MOBILE_LIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_MOBILE_LIVE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1204
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v4, "SCENE_MODE_MOBILE_RTC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_MOBILE_RTC:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1205
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v5, "SCENE_MODE_PC_EDITOR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_PC_EDITOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1206
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v6, "SCENE_MODE_PC_LIVE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_PC_LIVE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1207
    new-instance v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v7, "SCENE_MODE_PC_RTC"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_PC_RTC:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1208
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    const-string v8, "SCENE_MODE_TRANSCODING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->SCENE_MODE_TRANSCODING:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    .line 1200
    filled-new-array/range {v0 .. v7}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1212
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;
    .registers 2

    .line 1200
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;
    .registers 1

    .line 1200
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .registers 1

    .line 1216
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityOnekeyEnhanceSceneMode;->mode:I

    return p0
.end method
