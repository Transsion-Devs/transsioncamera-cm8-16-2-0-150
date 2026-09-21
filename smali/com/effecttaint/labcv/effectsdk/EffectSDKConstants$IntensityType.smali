.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntensityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum BeautySharp:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum BeautySmooth:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum BeautyWhite:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum FaceReshape:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum Filter:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum MakeUpBlusher:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

.field public static final enum MakeUpLip:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 117
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "Filter"

    invoke-direct {v0, v3, v1, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->Filter:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 123
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const-string v2, "BeautyWhite"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->BeautyWhite:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 128
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const-string v3, "BeautySmooth"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->BeautySmooth:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 133
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const-string v4, "FaceReshape"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->FaceReshape:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 138
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const/4 v5, 0x4

    const/16 v6, 0x9

    const-string v7, "BeautySharp"

    invoke-direct {v4, v7, v5, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->BeautySharp:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 143
    new-instance v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const/4 v6, 0x5

    const/16 v7, 0x11

    const-string v8, "MakeUpLip"

    invoke-direct {v5, v8, v6, v7}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->MakeUpLip:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 148
    new-instance v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    const/4 v7, 0x6

    const/16 v8, 0x12

    const-string v9, "MakeUpBlusher"

    invoke-direct {v6, v9, v7, v8}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->MakeUpBlusher:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    .line 113
    filled-new-array/range {v0 .. v6}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;
    .registers 2

    .line 113
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;
    .registers 1

    .line 113
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 153
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$IntensityType;->id:I

    return p0
.end method
