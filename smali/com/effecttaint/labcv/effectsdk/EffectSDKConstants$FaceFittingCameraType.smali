.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceFittingCameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

.field public static final enum BEF_AI_FACEFITTING_Camera_Orthographic:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

.field public static final enum BEF_AI_FACEFITTING_Camera_Perspective:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1500
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    const-string v1, "BEF_AI_FACEFITTING_Camera_Orthographic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->BEF_AI_FACEFITTING_Camera_Orthographic:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    .line 1501
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    const-string v2, "BEF_AI_FACEFITTING_Camera_Perspective"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->BEF_AI_FACEFITTING_Camera_Perspective:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    .line 1499
    filled-new-array {v0, v1}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1506
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;
    .registers 2

    .line 1499
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;
    .registers 1

    .line 1499
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1504
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceFittingCameraType;->value:I

    return p0
.end method
