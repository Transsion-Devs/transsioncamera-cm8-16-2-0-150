.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeneralObjectModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_CLS_NAME:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_CLS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_DETECT_TRACK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

.field public static final enum BEF_AI_GENERAL_OBJECT_PURE_DETECT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 840
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    const-string v1, "BEF_AI_GENERAL_OBJECT_PURE_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_PURE_DETECT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    .line 841
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    const-string v2, "BEF_AI_GENERAL_OBJECT_DETECT_CLS"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_DETECT_CLS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    .line 842
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    const-string v3, "BEF_AI_GENERAL_OBJECT_CLS_NAME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_CLS_NAME:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    .line 843
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    const-string v4, "BEF_AI_GENERAL_OBJECT_DETECT_TRACK"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->BEF_AI_GENERAL_OBJECT_DETECT_TRACK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    .line 839
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 846
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 847
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;
    .registers 2

    .line 839
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;
    .registers 1

    .line 839
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 851
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GeneralObjectModelType;->value:I

    return p0
.end method
