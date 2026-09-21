.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceMaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

.field public static final enum FACE_MASK_FACE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

.field public static final enum FACE_MASK_MOUTH:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

.field public static final enum FACE_MASK_TEETH:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1135
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "FACE_MASK_FACE"

    invoke-direct {v0, v3, v1, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->FACE_MASK_FACE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    .line 1139
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    const-string v2, "FACE_MASK_TEETH"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->FACE_MASK_TEETH:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    .line 1143
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    const-string v5, "FACE_MASK_MOUTH"

    invoke-direct {v2, v5, v4, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->FACE_MASK_MOUTH:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    .line 1131
    filled-new-array {v0, v1, v2}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1146
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;
    .registers 2

    .line 1131
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;
    .registers 1

    .line 1131
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1150
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceMaskType;->value:I

    return p0
.end method
