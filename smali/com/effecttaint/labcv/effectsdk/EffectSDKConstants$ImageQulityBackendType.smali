.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQulityBackendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

.field public static final enum IMAGE_QUALITY_BACKEND_CPU:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

.field public static final enum IMAGE_QUALITY_BACKEND_GPU:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1155
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    const-string v1, "IMAGE_QUALITY_BACKEND_CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->IMAGE_QUALITY_BACKEND_CPU:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    .line 1156
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    const-string v2, "IMAGE_QUALITY_BACKEND_GPU"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->IMAGE_QUALITY_BACKEND_GPU:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    .line 1154
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1161
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;
    .registers 2

    .line 1154
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;
    .registers 1

    .line 1154
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 1165
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->type:I

    return p0
.end method
