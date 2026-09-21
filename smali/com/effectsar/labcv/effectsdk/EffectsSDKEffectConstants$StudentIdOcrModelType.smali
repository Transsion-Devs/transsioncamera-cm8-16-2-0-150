.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StudentIdOcrModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

.field public static final enum BEF_STUDENT_ID_OCR_MODEL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1102
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BEF_STUDENT_ID_OCR_MODEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->BEF_STUDENT_ID_OCR_MODEL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    .line 1101
    filled-new-array {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;
    .registers 2

    .line 1101
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;
    .registers 1

    .line 1101
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1106
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->value:I

    return p0
.end method
