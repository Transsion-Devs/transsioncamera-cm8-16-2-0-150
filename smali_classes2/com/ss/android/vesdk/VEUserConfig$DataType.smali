.class public final enum Lcom/ss/android/vesdk/VEUserConfig$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEUserConfig$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEUserConfig$DataType;

.field public static final enum BOOLEAN:Lcom/ss/android/vesdk/VEUserConfig$DataType;

.field public static final enum INTEGER:Lcom/ss/android/vesdk/VEUserConfig$DataType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 124
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/vesdk/VEUserConfig$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->BOOLEAN:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    .line 125
    new-instance v1, Lcom/ss/android/vesdk/VEUserConfig$DataType;

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ss/android/vesdk/VEUserConfig$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VEUserConfig$DataType;->INTEGER:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    .line 123
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEUserConfig$DataType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->$VALUES:[Lcom/ss/android/vesdk/VEUserConfig$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUserConfig$DataType;
    .registers 2

    .line 123
    const-class v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUserConfig$DataType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEUserConfig$DataType;
    .registers 1

    .line 123
    sget-object v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->$VALUES:[Lcom/ss/android/vesdk/VEUserConfig$DataType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEUserConfig$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEUserConfig$DataType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 1

    .line 136
    iget p0, p0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->value:I

    return p0
.end method
