.class public final enum Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VETouchPointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

.field public static final enum BEGAN:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

.field public static final enum CANCELED:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

.field public static final enum ENDED:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

.field public static final enum MOVED:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

.field public static final enum STATIONARY:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 12
    new-instance v0, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    const-string v1, "BEGAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->BEGAN:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    .line 13
    new-instance v1, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    const-string v2, "MOVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->MOVED:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    .line 14
    new-instance v2, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    const-string v3, "STATIONARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->STATIONARY:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    .line 15
    new-instance v3, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    const-string v4, "ENDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->ENDED:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    .line 16
    new-instance v4, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    const-string v5, "CANCELED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->CANCELED:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->$VALUES:[Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;
    .registers 2

    .line 11
    const-class v0, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;
    .registers 1

    .line 11
    sget-object v0, Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->$VALUES:[Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    return-object v0
.end method
