.class public final enum Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEDisplayFitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

.field public static final enum SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

.field public static final enum SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

.field public static final enum SCALE_MODE_FIT_FULL:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

.field public static final enum SCALE_MODE_USER_DEF:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 17
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    const-string v1, "SCALE_MODE_CENTER_CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 18
    new-instance v1, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    const-string v2, "SCALE_MODE_CENTER_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 19
    new-instance v2, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    const-string v3, "SCALE_MODE_FIT_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_FIT_FULL:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 20
    new-instance v3, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    const-string v4, "SCALE_MODE_USER_DEF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_USER_DEF:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 16
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->$VALUES:[Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;
    .registers 2

    .line 16
    const-class v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;
    .registers 1

    .line 16
    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->$VALUES:[Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    return-object v0
.end method
