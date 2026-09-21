.class public final enum Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightEstimationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

.field public static final enum AMBIENT_INTENSITY:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

.field public static final enum DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

.field public static final enum ENVIRONMENTAL_HDR:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 717
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    .line 718
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    const-string v2, "AMBIENT_INTENSITY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->AMBIENT_INTENSITY:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    .line 719
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    const-string v3, "ENVIRONMENTAL_HDR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->ENVIRONMENTAL_HDR:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    .line 716
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;
    .registers 2

    .line 716
    const-class v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;
    .registers 1

    .line 716
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    return-object v0
.end method
