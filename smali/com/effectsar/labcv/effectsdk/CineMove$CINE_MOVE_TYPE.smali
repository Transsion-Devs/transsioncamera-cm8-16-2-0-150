.class public final enum Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/CineMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CINE_MOVE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_BREATH_V10:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_CENTER_FOCUS:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_END:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_HEART_BEAT_V9:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_RHYTHMIC_V4:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_ROT360_V11:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_ROT_V7:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_SNAKE_V8:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_START:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_V1:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_V2:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_V3:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

.field public static final enum CINE_MOVE_ALG_Y_COOR_V6:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 17
    new-instance v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v1, "CINE_MOVE_ALG_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_START:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 18
    new-instance v1, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v2, "CINE_MOVE_ALG_V1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_V1:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 19
    new-instance v2, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v3, "CINE_MOVE_ALG_V2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_V2:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 20
    new-instance v3, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v4, "CINE_MOVE_ALG_V3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_V3:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 21
    new-instance v4, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v5, "CINE_MOVE_ALG_RHYTHMIC_V4"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_RHYTHMIC_V4:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 22
    new-instance v5, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v6, "CINE_MOVE_ALG_CENTER_FOCUS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_CENTER_FOCUS:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 23
    new-instance v6, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v7, "CINE_MOVE_ALG_Y_COOR_V6"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_Y_COOR_V6:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 24
    new-instance v7, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v8, "CINE_MOVE_ALG_ROT_V7"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_ROT_V7:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 25
    new-instance v8, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v9, "CINE_MOVE_ALG_SNAKE_V8"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_SNAKE_V8:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 26
    new-instance v9, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v10, "CINE_MOVE_ALG_HEART_BEAT_V9"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_HEART_BEAT_V9:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 27
    new-instance v10, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v11, "CINE_MOVE_ALG_BREATH_V10"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_BREATH_V10:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 28
    new-instance v11, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v12, "CINE_MOVE_ALG_ROT360_V11"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_ROT360_V11:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 29
    new-instance v12, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    const-string v13, "CINE_MOVE_ALG_END"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->CINE_MOVE_ALG_END:Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    .line 16
    filled-new-array/range {v0 .. v12}, [Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->$VALUES:[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;
    .registers 2

    .line 16
    const-class v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;
    .registers 1

    .line 16
    sget-object v0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->$VALUES:[Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    invoke-virtual {v0}, [Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/CineMove$CINE_MOVE_TYPE;->type:I

    return p0
.end method
