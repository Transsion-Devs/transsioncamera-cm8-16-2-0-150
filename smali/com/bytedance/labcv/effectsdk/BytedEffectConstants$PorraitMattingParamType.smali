.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PorraitMattingParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_EdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_FrashEvery:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_OutputMinSideLen:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

.field public static final enum BEF_MP_VIDEO_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 678
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    const-string v1, "BEF_MP_EdgeMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->BEF_MP_EdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    .line 683
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    const-string v2, "BEF_MP_FrashEvery"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->BEF_MP_FrashEvery:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    .line 688
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    const-string v3, "BEF_MP_OutputMinSideLen"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->BEF_MP_OutputMinSideLen:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    .line 690
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "BEF_MP_VIDEO_MODE"

    invoke-direct {v3, v6, v4, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->BEF_MP_VIDEO_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    .line 666
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 695
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;
    .registers 2

    .line 666
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;
    .registers 1

    .line 666
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 699
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->value:I

    return p0
.end method
