.class public final enum Lcom/ss/android/vesdk/VEConfigCenter$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEConfigCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEConfigCenter$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$DataType;

.field public static final enum BOOLEAN:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

.field public static final enum FLOAT:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

.field public static final enum INTEGER:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

.field public static final enum LONG:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

.field public static final enum STRING:Lcom/ss/android/vesdk/VEConfigCenter$DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 971
    new-instance v0, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->BOOLEAN:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    .line 972
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->INTEGER:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    .line 973
    new-instance v2, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->LONG:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    .line 974
    new-instance v3, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const-string v4, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->FLOAT:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    .line 975
    new-instance v4, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const-string v5, "STRING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEConfigCenter$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->STRING:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    .line 970
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->$VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 970
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$DataType;
    .registers 2

    .line 970
    const-class v0, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEConfigCenter$DataType;
    .registers 1

    .line 970
    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->$VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEConfigCenter$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    return-object v0
.end method
