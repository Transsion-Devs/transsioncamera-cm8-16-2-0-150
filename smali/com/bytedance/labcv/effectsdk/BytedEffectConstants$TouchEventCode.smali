.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchEventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

.field public static final enum BEGAN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

.field public static final enum CANCELLED:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

.field public static final enum ENDED:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

.field public static final enum MOVED:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

.field public static final enum STATIONARY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1221
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    const-string v1, "BEGAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->BEGAN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    .line 1222
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    const-string v2, "MOVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->MOVED:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    .line 1223
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    const-string v3, "STATIONARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->STATIONARY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    .line 1224
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    const-string v4, "ENDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->ENDED:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    .line 1225
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    const-string v5, "CANCELLED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->CANCELLED:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    .line 1220
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1230
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;
    .registers 2

    .line 1220
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;
    .registers 1

    .line 1220
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 1234
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->code:I

    return p0
.end method
