.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightClsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Backlight:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Cloudy:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Indoor_White:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Indoor_Yellow:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Indoor_weak:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Night:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum None:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

.field public static final enum Sunny:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 840
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const/4 v1, -0x1

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->None:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 841
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v2, "Indoor_Yellow"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Indoor_Yellow:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 842
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v3, "Indoor_White"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Indoor_White:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 843
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v4, "Indoor_weak"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Indoor_weak:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 844
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v5, "Sunny"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Sunny:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 845
    new-instance v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v6, "Cloudy"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Cloudy:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 846
    new-instance v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v7, "Night"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Night:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 847
    new-instance v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    const-string v8, "Backlight"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->Backlight:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    .line 839
    filled-new-array/range {v0 .. v7}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 850
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 851
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;
    .registers 2

    .line 839
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;
    .registers 1

    .line 839
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 855
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LightClsType;->value:I

    return p0
.end method
