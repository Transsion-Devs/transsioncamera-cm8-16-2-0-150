.class public final enum Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

.field public static final enum LOADED:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

.field public static final enum LOADING:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

.field public static final enum NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 28
    new-instance v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    const-string v1, "NOT_LOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 29
    new-instance v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    const-string v2, "LOADING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADING:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 30
    new-instance v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    const-string v3, "LOADED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADED:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 27
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->$VALUES:[Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;
    .registers 2

    .line 27
    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;
    .registers 1

    .line 27
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->$VALUES:[Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-object v0
.end method
