.class public final enum Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaneFindingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

.field public static final enum DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

.field public static final enum HORIZONTAL:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

.field public static final enum HORIZONTAL_AND_VERTICAL:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

.field public static final enum VERTICAL:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 724
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    .line 725
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    const-string v2, "HORIZONTAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->HORIZONTAL:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    .line 726
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    const-string v3, "VERTICAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->VERTICAL:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    .line 727
    new-instance v3, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    const-string v4, "HORIZONTAL_AND_VERTICAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->HORIZONTAL_AND_VERTICAL:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    .line 723
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 723
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;
    .registers 2

    .line 723
    const-class v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;
    .registers 1

    .line 723
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    return-object v0
.end method
