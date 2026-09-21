.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

.field public static final enum CLOCKWISE_ROTATE_0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

.field public static final enum CLOCKWISE_ROTATE_180:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

.field public static final enum CLOCKWISE_ROTATE_270:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

.field public static final enum CLOCKWISE_ROTATE_90:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 82
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    const-string v1, "CLOCKWISE_ROTATE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->CLOCKWISE_ROTATE_0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    .line 87
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    const-string v2, "CLOCKWISE_ROTATE_90"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->CLOCKWISE_ROTATE_90:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    .line 92
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    const-string v3, "CLOCKWISE_ROTATE_180"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->CLOCKWISE_ROTATE_180:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    .line 97
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    const-string v4, "CLOCKWISE_ROTATE_270"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->CLOCKWISE_ROTATE_270:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    .line 77
    filled-new-array {v0, v1, v2, v3}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;
    .registers 2

    .line 77
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;
    .registers 1

    .line 77
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Rotation;

    return-object v0
.end method
