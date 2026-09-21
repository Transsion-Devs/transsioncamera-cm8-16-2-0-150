.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PorraitMattingParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_EdgeMode:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_FrashEvery:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_OutputMinSideLen:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_VIDEO_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 712
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    const-string v1, "BEF_MP_EdgeMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->BEF_MP_EdgeMode:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    .line 717
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    const-string v2, "BEF_MP_FrashEvery"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->BEF_MP_FrashEvery:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    .line 722
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    const-string v3, "BEF_MP_OutputMinSideLen"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->BEF_MP_OutputMinSideLen:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    .line 724
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "BEF_MP_VIDEO_MODE"

    invoke-direct {v3, v6, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->BEF_MP_VIDEO_MODE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    .line 700
    filled-new-array {v0, v1, v2, v3}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 728
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 729
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;
    .registers 2

    .line 700
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;
    .registers 1

    .line 700
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 733
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PorraitMattingParamType;->value:I

    return p0
.end method
