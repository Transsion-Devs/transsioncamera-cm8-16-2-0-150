.class public final enum Lcom/ss/android/vesdk/VEGestureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum LongPress:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Pan:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Rotate:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Scale:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Tap:Lcom/ss/android/vesdk/VEGestureType;

.field public static final enum Unknown:Lcom/ss/android/vesdk/VEGestureType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 9
    new-instance v0, Lcom/ss/android/vesdk/VEGestureType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->Unknown:Lcom/ss/android/vesdk/VEGestureType;

    .line 10
    new-instance v1, Lcom/ss/android/vesdk/VEGestureType;

    const-string v2, "Tap"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEGestureType;->Tap:Lcom/ss/android/vesdk/VEGestureType;

    .line 11
    new-instance v2, Lcom/ss/android/vesdk/VEGestureType;

    const-string v3, "Pan"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEGestureType;->Pan:Lcom/ss/android/vesdk/VEGestureType;

    .line 12
    new-instance v3, Lcom/ss/android/vesdk/VEGestureType;

    const-string v4, "Rotate"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEGestureType;->Rotate:Lcom/ss/android/vesdk/VEGestureType;

    .line 13
    new-instance v4, Lcom/ss/android/vesdk/VEGestureType;

    const-string v5, "Scale"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEGestureType;->Scale:Lcom/ss/android/vesdk/VEGestureType;

    .line 14
    new-instance v5, Lcom/ss/android/vesdk/VEGestureType;

    const-string v6, "LongPress"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEGestureType;->LongPress:Lcom/ss/android/vesdk/VEGestureType;

    .line 8
    filled-new-array/range {v0 .. v5}, [Lcom/ss/android/vesdk/VEGestureType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGestureType;->$VALUES:[Lcom/ss/android/vesdk/VEGestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGestureType;
    .registers 2

    .line 8
    const-class v0, Lcom/ss/android/vesdk/VEGestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGestureType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGestureType;
    .registers 1

    .line 8
    sget-object v0, Lcom/ss/android/vesdk/VEGestureType;->$VALUES:[Lcom/ss/android/vesdk/VEGestureType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGestureType;

    return-object v0
.end method
