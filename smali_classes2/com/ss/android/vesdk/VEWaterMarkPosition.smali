.class public final enum Lcom/ss/android/vesdk/VEWaterMarkPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEWaterMarkPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v1, "TL_BR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 8
    new-instance v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v2, "BR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 9
    new-instance v2, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v3, "BL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 10
    new-instance v3, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v4, "TR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 11
    new-instance v4, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v5, "TL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VEWaterMarkPosition;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->$VALUES:[Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEWaterMarkPosition;
    .registers 2

    .line 6
    const-class v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEWaterMarkPosition;
    .registers 1

    .line 6
    sget-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->$VALUES:[Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEWaterMarkPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object v0
.end method
