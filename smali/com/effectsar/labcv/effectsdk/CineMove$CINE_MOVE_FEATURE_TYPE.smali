.class public final enum Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/CineMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CINE_MOVE_FEATURE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

.field public static final enum CINE_MOVE_FEATURE_BODY_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

.field public static final enum CINE_MOVE_FEATURE_BODY_RECT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

.field public static final enum CINE_MOVE_FEATURE_FACE_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

.field public static final enum CINE_MOVE_FEATURE_FACE_RECT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

.field public static final enum CINE_MOVE_FEATURE_MOTION_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

.field public static final enum CINE_MOVE_FEATURE_OBJECT_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 42
    new-instance v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    const-string v1, "CINE_MOVE_FEATURE_FACE_RECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->CINE_MOVE_FEATURE_FACE_RECT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    .line 43
    new-instance v1, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    const-string v2, "CINE_MOVE_FEATURE_BODY_RECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->CINE_MOVE_FEATURE_BODY_RECT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    .line 44
    new-instance v2, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    const-string v3, "CINE_MOVE_FEATURE_FACE_POINT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->CINE_MOVE_FEATURE_FACE_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    .line 45
    new-instance v3, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    const-string v4, "CINE_MOVE_FEATURE_BODY_POINT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->CINE_MOVE_FEATURE_BODY_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    .line 46
    new-instance v4, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    const-string v5, "CINE_MOVE_FEATURE_MOTION_POINT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->CINE_MOVE_FEATURE_MOTION_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    .line 47
    new-instance v5, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    const-string v6, "CINE_MOVE_FEATURE_OBJECT_POINT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->CINE_MOVE_FEATURE_OBJECT_POINT:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    .line 41
    filled-new-array/range {v0 .. v5}, [Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->$VALUES:[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;
    .registers 2

    .line 41
    const-class v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;
    .registers 1

    .line 41
    sget-object v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->$VALUES:[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_FEATURE_TYPE;->type:I

    return p0
.end method
