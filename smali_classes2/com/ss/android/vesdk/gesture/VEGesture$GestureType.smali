.class public final enum Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/gesture/VEGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

.field public static final enum LONG_PRESS:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

.field public static final enum PAN:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

.field public static final enum ROTATE:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

.field public static final enum SCALE:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

.field public static final enum TAP:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

.field public static final enum UNKNOWN:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 21
    new-instance v0, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->UNKNOWN:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    .line 22
    new-instance v1, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    const-string v2, "TAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->TAP:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    .line 23
    new-instance v2, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    const-string v3, "PAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->PAN:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    .line 24
    new-instance v3, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    const-string v4, "ROTATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->ROTATE:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    .line 25
    new-instance v4, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    const-string v5, "SCALE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->SCALE:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    .line 26
    new-instance v5, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    const-string v6, "LONG_PRESS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->LONG_PRESS:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    .line 20
    filled-new-array/range {v0 .. v5}, [Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->$VALUES:[Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;
    .registers 2

    .line 20
    const-class v0, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;
    .registers 1

    .line 20
    sget-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->$VALUES:[Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    return-object v0
.end method
