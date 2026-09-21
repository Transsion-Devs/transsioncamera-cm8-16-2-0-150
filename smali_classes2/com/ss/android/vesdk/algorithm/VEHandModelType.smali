.class public final enum Lcom/ss/android/vesdk/algorithm/VEHandModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/algorithm/VEHandModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/algorithm/VEHandModelType;

.field public static final enum HAND_MODEL_BOX_REG:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

.field public static final enum HAND_MODEL_DETECT:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

.field public static final enum HAND_MODEL_GESTURE_CLS:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

.field public static final enum HAND_MODEL_KEY_POINT:Lcom/ss/android/vesdk/algorithm/VEHandModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 5
    new-instance v0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    const-string v1, "HAND_MODEL_DETECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/vesdk/algorithm/VEHandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->HAND_MODEL_DETECT:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    .line 7
    new-instance v1, Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    const-string v2, "HAND_MODEL_BOX_REG"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/vesdk/algorithm/VEHandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->HAND_MODEL_BOX_REG:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    .line 9
    new-instance v2, Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    const-string v3, "HAND_MODEL_GESTURE_CLS"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/ss/android/vesdk/algorithm/VEHandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->HAND_MODEL_GESTURE_CLS:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    .line 11
    new-instance v3, Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "HAND_MODEL_KEY_POINT"

    invoke-direct {v3, v6, v4, v5}, Lcom/ss/android/vesdk/algorithm/VEHandModelType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->HAND_MODEL_KEY_POINT:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->$VALUES:[Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/algorithm/VEHandModelType;
    .registers 2

    .line 3
    const-class v0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/algorithm/VEHandModelType;
    .registers 1

    .line 3
    sget-object v0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->$VALUES:[Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/algorithm/VEHandModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->value:I

    return p0
.end method
