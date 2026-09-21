.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixlFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum BEF_AI_PIX_FMT_NV12:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum BEF_AI_PIX_FMT_NV21:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum BEF_AI_PIX_FMT_YUV420P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum BGR888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum BGRA8888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum RGB888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

.field public static final enum RGBA8888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 15
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v1, "RGBA8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->RGBA8888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 16
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v2, "BGRA8888"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->BGRA8888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 17
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v3, "BGR888"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->BGR888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 18
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v4, "RGB888"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->RGB888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 19
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v5, "BEF_AI_PIX_FMT_YUV420P"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->BEF_AI_PIX_FMT_YUV420P:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 20
    new-instance v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v6, "BEF_AI_PIX_FMT_NV12"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->BEF_AI_PIX_FMT_NV12:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 21
    new-instance v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    const-string v7, "BEF_AI_PIX_FMT_NV21"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->BEF_AI_PIX_FMT_NV21:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    .line 14
    filled-new-array/range {v0 .. v6}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;
    .registers 2

    .line 14
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;
    .registers 1

    .line 14
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->value:I

    return p0
.end method
