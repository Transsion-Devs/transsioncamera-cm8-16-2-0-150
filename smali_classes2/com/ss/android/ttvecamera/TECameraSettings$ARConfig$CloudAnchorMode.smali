.class public final enum Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloudAnchorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

.field public static final enum DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

.field public static final enum ENABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 699
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;->DISABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    .line 700
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    const-string v2, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;->ENABLED:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    .line 698
    filled-new-array {v0, v1}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;
    .registers 2

    .line 698
    const-class v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;
    .registers 1

    .line 698
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    return-object v0
.end method
