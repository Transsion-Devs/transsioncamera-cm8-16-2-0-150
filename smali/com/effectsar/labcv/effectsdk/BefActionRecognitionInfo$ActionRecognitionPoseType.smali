.class public final enum Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionRecognitionPoseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum LYING:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum SIDELEFT:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum SIDERIGHT:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum SITTING:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum STAND:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 22
    new-instance v0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v1, "STAND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->STAND:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 23
    new-instance v1, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v2, "LYING"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->LYING:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 24
    new-instance v2, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v3, "SITTING"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->SITTING:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 25
    new-instance v3, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v4, "SIDELEFT"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->SIDELEFT:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 26
    new-instance v4, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v5, "SIDERIGHT"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->SIDERIGHT:Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 21
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;
    .registers 2

    .line 21
    const-class v0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;
    .registers 1

    .line 21
    sget-object v0, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->$VALUES:[Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    return-object v0
.end method
