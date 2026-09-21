.class public final enum Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FACEAE_STRATEGY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

.field public static final enum DISABLE_FACEAE:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

.field public static final enum ENABLE_FACEAE_FOR_ALL:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

.field public static final enum ENABLE_FACEAE_FOR_FRONT:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

.field public static final enum ENABLE_FACEAE_FOR_REAR:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 464
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    const-string v1, "DISABLE_FACEAE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->DISABLE_FACEAE:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 465
    new-instance v1, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    const-string v2, "ENABLE_FACEAE_FOR_FRONT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->ENABLE_FACEAE_FOR_FRONT:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 466
    new-instance v2, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    const-string v3, "ENABLE_FACEAE_FOR_REAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->ENABLE_FACEAE_FOR_REAR:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 467
    new-instance v3, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    const-string v4, "ENABLE_FACEAE_FOR_ALL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->ENABLE_FACEAE_FOR_ALL:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 463
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->$VALUES:[Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;
    .registers 2

    .line 463
    const-class v0, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;
    .registers 1

    .line 463
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->$VALUES:[Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    return-object v0
.end method
