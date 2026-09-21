.class public final enum Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/IESCameraInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

.field public static final enum RATIO_16x9:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

.field public static final enum RATIO_18x9:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

.field public static final enum RATIO_4x3:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 86
    new-instance v0, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    const-string v1, "RATIO_18x9"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;->RATIO_18x9:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    .line 87
    new-instance v1, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    const-string v2, "RATIO_16x9"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;->RATIO_16x9:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    .line 88
    new-instance v2, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    const-string v3, "RATIO_4x3"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;->RATIO_4x3:Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    .line 85
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;->$VALUES:[Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;
    .registers 2

    .line 85
    const-class v0, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;
    .registers 1

    .line 85
    sget-object v0, Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;->$VALUES:[Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    invoke-virtual {v0}, [Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;

    return-object v0
.end method
