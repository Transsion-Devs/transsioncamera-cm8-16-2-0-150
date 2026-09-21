.class public final enum Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

.field public static final enum DOUBLE_CLICK:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

.field public static final enum LONG_PRESS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

.field public static final enum PAN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

.field public static final enum ROTATE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

.field public static final enum SCALE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

.field public static final enum TAP:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1298
    new-instance v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->TAP:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    .line 1299
    new-instance v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    const-string v2, "PAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->PAN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    .line 1300
    new-instance v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    const-string v3, "ROTATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->ROTATE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    .line 1301
    new-instance v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    const-string v4, "SCALE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->SCALE:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    .line 1302
    new-instance v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    const-string v5, "LONG_PRESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->LONG_PRESS:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    .line 1303
    new-instance v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    const-string v6, "DOUBLE_CLICK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->DOUBLE_CLICK:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    .line 1297
    filled-new-array/range {v0 .. v5}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1308
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;
    .registers 2

    .line 1297
    const-class v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;
    .registers 1

    .line 1297
    sget-object v0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->$VALUES:[Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 1312
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->code:I

    return p0
.end method
