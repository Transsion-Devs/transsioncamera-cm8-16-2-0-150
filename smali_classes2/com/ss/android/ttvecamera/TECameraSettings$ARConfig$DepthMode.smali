.class public final enum Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

.field public static final enum AUTOMATIC:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

.field public static final enum DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 705
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    .line 706
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    const-string v2, "AUTOMATIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;->AUTOMATIC:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    .line 704
    filled-new-array {v0, v1}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 704
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;
    .registers 2

    .line 704
    const-class v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;
    .registers 1

    .line 704
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    return-object v0
.end method
