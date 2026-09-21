.class public final enum Lcom/ss/android/vesdk/gesture/VEGesture$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/gesture/VEGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/gesture/VEGesture$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum CANCELLED:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum DB_CLICK:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum PAN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum ROTATE:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum SCALE:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum TOUCH:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum TOUCH_DOWN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum TOUCH_LONG:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

.field public static final enum TOUCH_UP:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 6
    new-instance v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v1, "TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 7
    new-instance v1, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v2, "TOUCH_DOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH_DOWN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 8
    new-instance v2, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v3, "TOUCH_UP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH_UP:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 9
    new-instance v3, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v4, "TOUCH_LONG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH_LONG:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 10
    new-instance v4, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v5, "PAN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->PAN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 11
    new-instance v5, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v6, "SCALE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->SCALE:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 12
    new-instance v6, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v7, "ROTATE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->ROTATE:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 13
    new-instance v7, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v8, "DB_CLICK"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->DB_CLICK:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 14
    new-instance v8, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    const-string v9, "CANCELLED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->CANCELLED:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 5
    filled-new-array/range {v0 .. v8}, [Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->$VALUES:[Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/gesture/VEGesture$EventType;
    .registers 2

    .line 5
    const-class v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/gesture/VEGesture$EventType;
    .registers 1

    .line 5
    sget-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->$VALUES:[Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    return-object v0
.end method
