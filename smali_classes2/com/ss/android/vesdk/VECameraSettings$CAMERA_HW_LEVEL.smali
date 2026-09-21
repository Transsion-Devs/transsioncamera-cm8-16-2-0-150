.class public final enum Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAMERA_HW_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

.field public static final enum CAMERA_HW_LEVEL_FULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

.field public static final enum CAMERA_HW_LEVEL_LEGACY:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

.field public static final enum CAMERA_HW_LEVEL_LEVEL_3:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

.field public static final enum CAMERA_HW_LEVEL_LIMITED:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 162
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    const-string v1, "CAMERA_HW_LEVEL_LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CAMERA_HW_LEVEL_LEGACY:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 163
    new-instance v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    const-string v2, "CAMERA_HW_LEVEL_LIMITED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CAMERA_HW_LEVEL_LIMITED:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 164
    new-instance v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    const-string v3, "CAMERA_HW_LEVEL_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CAMERA_HW_LEVEL_FULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 165
    new-instance v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    const-string v4, "CAMERA_HW_LEVEL_LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CAMERA_HW_LEVEL_LEVEL_3:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 161
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->$VALUES:[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 177
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;
    .registers 2

    .line 161
    const-class v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;
    .registers 1

    .line 161
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->$VALUES:[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
