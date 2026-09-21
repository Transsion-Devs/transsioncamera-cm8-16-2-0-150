.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

.field public static final enum BrandNodel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

.field public static final enum DetectModel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

.field public static final enum OCRModel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

.field public static final enum TrackModel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1051
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    const-string v1, "DetectModel"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->DetectModel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    .line 1055
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    const-string v2, "BrandNodel"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->BrandNodel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    .line 1059
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    const-string v3, "OCRModel"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->OCRModel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    .line 1061
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    const-string v4, "TrackModel"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->TrackModel:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    .line 1047
    filled-new-array {v0, v1, v2, v3}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1064
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1065
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;
    .registers 2

    .line 1047
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;
    .registers 1

    .line 1047
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1069
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->value:I

    return p0
.end method
