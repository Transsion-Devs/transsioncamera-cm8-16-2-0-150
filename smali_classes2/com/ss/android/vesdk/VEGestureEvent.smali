.class public final enum Lcom/ss/android/vesdk/VEGestureEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGestureEvent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum ANY_SUPPORTED:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum DOUBLE_CLICK:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum DRAG:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum DROP:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum LONG_TAP:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum PINCH:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum SWIPE:Lcom/ss/android/vesdk/VEGestureEvent;

.field public static final enum TAP:Lcom/ss/android/vesdk/VEGestureEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 8
    new-instance v0, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGestureEvent;->TAP:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 9
    new-instance v1, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v2, "SWIPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEGestureEvent;->SWIPE:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 10
    new-instance v2, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v3, "PINCH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEGestureEvent;->PINCH:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 11
    new-instance v3, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v4, "LONG_TAP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEGestureEvent;->LONG_TAP:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 12
    new-instance v4, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v5, "DRAG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEGestureEvent;->DRAG:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 13
    new-instance v5, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v6, "DROP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEGestureEvent;->DROP:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 14
    new-instance v6, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v7, "DOUBLE_CLICK"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/VEGestureEvent;->DOUBLE_CLICK:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 15
    new-instance v7, Lcom/ss/android/vesdk/VEGestureEvent;

    const-string v8, "ANY_SUPPORTED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ss/android/vesdk/VEGestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/vesdk/VEGestureEvent;->ANY_SUPPORTED:Lcom/ss/android/vesdk/VEGestureEvent;

    .line 6
    filled-new-array/range {v0 .. v7}, [Lcom/ss/android/vesdk/VEGestureEvent;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGestureEvent;->$VALUES:[Lcom/ss/android/vesdk/VEGestureEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGestureEvent;
    .registers 2

    .line 6
    const-class v0, Lcom/ss/android/vesdk/VEGestureEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGestureEvent;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGestureEvent;
    .registers 1

    .line 6
    sget-object v0, Lcom/ss/android/vesdk/VEGestureEvent;->$VALUES:[Lcom/ss/android/vesdk/VEGestureEvent;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGestureEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGestureEvent;

    return-object v0
.end method
