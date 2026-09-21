.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum DOUBLE_CLICK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum LONG_PRESS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum PAN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum ROTATE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum SCALE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum TAP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1239
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->TAP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1240
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v2, "PAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->PAN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1241
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v3, "ROTATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->ROTATE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1242
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v4, "SCALE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->SCALE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1243
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v5, "LONG_PRESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->LONG_PRESS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1244
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v6, "DOUBLE_CLICK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->DOUBLE_CLICK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1238
    filled-new-array/range {v0 .. v5}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1249
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;
    .registers 2

    .line 1238
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;
    .registers 1

    .line 1238
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 1253
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->code:I

    return p0
.end method
