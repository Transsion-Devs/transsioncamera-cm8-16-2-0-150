.class public final enum Lcom/ss/android/vesdk/VEDataSource$OutputMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEDataSource$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEDataSource$OutputMode;

.field public static final enum Encode:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

.field public static final enum Render:Lcom/ss/android/vesdk/VEDataSource$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    const-string v1, "Render"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEDataSource$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;->Render:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    .line 7
    new-instance v1, Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    const-string v2, "Encode"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEDataSource$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEDataSource$OutputMode;->Encode:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    .line 5
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;->$VALUES:[Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEDataSource$OutputMode;
    .registers 2

    .line 5
    const-class v0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEDataSource$OutputMode;
    .registers 1

    .line 5
    sget-object v0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;->$VALUES:[Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEDataSource$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    return-object v0
.end method
